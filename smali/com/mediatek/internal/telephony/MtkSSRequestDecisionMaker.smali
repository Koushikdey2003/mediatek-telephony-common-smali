.class public Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
.super Ljava/lang/Object;
.source "MtkSSRequestDecisionMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;
    }
.end annotation


# static fields
.field private static final blacklist CLEAR_DELAY_TIMEOUT:I = 0x2710

.field private static final blacklist EVENT_SS_CLEAR_TEMP_VOLTE_USER_FLAG:I = 0x3

.field private static final blacklist EVENT_SS_RESPONSE:I = 0x2

.field private static final blacklist EVENT_SS_SEND:I = 0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSSDecisonMaker"

.field private static final blacklist SS_REQUEST_GET_CALL_BARRING:I = 0x3

.field private static final blacklist SS_REQUEST_GET_CALL_FORWARD:I = 0x1

.field private static final blacklist SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT:I = 0xf

.field private static final blacklist SS_REQUEST_GET_CALL_WAITING:I = 0x5

.field private static final blacklist SS_REQUEST_GET_CLIP:I = 0x9

.field private static final blacklist SS_REQUEST_GET_CLIR:I = 0x7

.field private static final blacklist SS_REQUEST_GET_COLP:I = 0xd

.field private static final blacklist SS_REQUEST_GET_COLR:I = 0xb

.field private static final blacklist SS_REQUEST_SET_CALL_BARRING:I = 0x4

.field private static final blacklist SS_REQUEST_SET_CALL_FORWARD:I = 0x2

.field private static final blacklist SS_REQUEST_SET_CALL_FORWARD_TIME_SLOT:I = 0x10

.field private static final blacklist SS_REQUEST_SET_CALL_WAITING:I = 0x6

.field private static final blacklist SS_REQUEST_SET_CLIP:I = 0xa

.field private static final blacklist SS_REQUEST_SET_CLIR:I = 0x8

.field private static final blacklist SS_REQUEST_SET_COLP:I = 0xe

.field private static final blacklist SS_REQUEST_SET_COLR:I = 0xc


# instance fields
.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private blacklist mIsTempVolteUser:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mSSHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 139
    iget-object v0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 140
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhoneId:I

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 142
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$202(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z

    return p1
.end method

.method private blacklist getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .line 192
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 201
    const/4 v0, -0x1

    return v0

    .line 195
    :cond_0
    return v0

    .line 196
    :cond_1
    return v0

    .line 194
    :cond_2
    return v0

    .line 193
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .line 220
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x2

    return v0

    .line 222
    :cond_0
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const/4 v0, 0x3

    return v0

    .line 224
    :cond_1
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x4

    return v0

    .line 226
    :cond_2
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_3
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    const/4 v0, 0x5

    return v0

    .line 230
    :cond_4
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    const/4 v0, 0x7

    return v0

    .line 232
    :cond_5
    const-string v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    const/16 v0, 0x8

    return v0

    .line 234
    :cond_6
    const-string v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    const/16 v0, 0x9

    return v0

    .line 238
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 318
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 329
    const/4 v0, 0x3

    return v0

    .line 324
    :cond_0
    return v0

    .line 323
    :cond_1
    return v0

    .line 321
    :cond_2
    return v0

    .line 320
    :cond_3
    return v0

    .line 319
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Landroid/telephony/ims/ImsCallForwardInfo;

    .line 290
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 291
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 292
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 293
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 294
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 295
    iget-object v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 296
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 297
    return-object v0
.end method

.method private blacklist getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "imsException"    # Lcom/android/ims/ImsException;

    .line 1454
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    const-string v1, "getCommandException GENERIC_FAILURE"

    const-string v2, "MtkSSDecisonMaker"

    const v3, 0xf009

    if-eq v0, v3, :cond_0

    .line 1462
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    const-string v0, "getCommandException UT_XCAP_409_CONFLICT"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1465
    :cond_1
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0
.end method

.method private blacklist getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 205
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 216
    const/4 v0, -0x1

    return v0

    .line 211
    :cond_0
    return v0

    .line 210
    :cond_1
    return v0

    .line 209
    :cond_2
    return v0

    .line 208
    :cond_3
    return v0

    .line 207
    :cond_4
    return v0

    .line 206
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 261
    new-instance v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    .line 262
    .local v0, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 263
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 264
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 265
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 266
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 267
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 268
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 269
    return-object v0
.end method

.method private blacklist getPhoneId()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhoneId:I

    .line 161
    return v0
.end method

.method private blacklist getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 169
    .local v0, "serviceId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v1, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 170
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v1

    .line 166
    .end local v0    # "serviceId":I
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const/4 v1, 0x0

    const-string v2, "no ims manager"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private blacklist handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 3
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 243
    .local v0, "cbInfos":[I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    aput v2, v0, v1

    .line 245
    return-object v0
.end method

.method private blacklist handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 250
    .local v0, "cwInfos":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 252
    aget-object v2, p1, v1

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 253
    aput v3, v0, v1

    .line 254
    aput v3, v0, v3

    .line 257
    :cond_0
    return-object v0
.end method

.method private blacklist imsCFInfoExToCFInfoEx([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .locals 5
    .param p1, "infos"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "cfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const-string v1, "MtkSSDecisonMaker"

    if-eqz p1, :cond_1

    array-length v2, p1

    if-eqz v2, :cond_1

    .line 276
    array-length v2, p1

    new-array v0, v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 278
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v4

    aput-object v4, v0, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    goto :goto_1

    .line 281
    :cond_1
    const-string v2, "No CFInfoEx exist ."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 285
    :goto_1
    const-string v2, "imsCFInfoExToCFInfoEx finish."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v0
.end method

.method private blacklist imsCFInfoToCFInfo([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 5
    .param p1, "infos"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    const-string v1, "MtkSSDecisonMaker"

    if-eqz p1, :cond_1

    array-length v2, p1

    if-eqz v2, :cond_1

    .line 304
    array-length v2, p1

    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 305
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 306
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v4

    aput-object v4, v0, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    goto :goto_1

    .line 309
    :cond_1
    const-string v2, "No CFInfo exist ."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 313
    :goto_1
    const-string v2, "imsCFInfoToCFInfo finish."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v0
.end method

.method private blacklist processResponse(Ljava/lang/Object;)V
    .locals 26
    .param p1, "obj"    # Ljava/lang/Object;

    .line 783
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 784
    .local v1, "resp":Landroid/os/Message;
    move-object/from16 v2, p1

    check-cast v2, Landroid/os/AsyncResult;

    .line 785
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 786
    .local v3, "arResult":Ljava/lang/Object;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 787
    .local v4, "arException":Ljava/lang/Throwable;
    iget-object v5, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 788
    .local v5, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 789
    .local v7, "request":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processResponse, request = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MtkSSDecisonMaker"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v10, "processResponse CODE_UT_XCAP_404_NOT_FOUND"

    const/4 v11, 0x0

    const-string v13, "ImsSsInfo mStatus = "

    const-string v14, "isNotSupportUtToCS."

    const v12, 0xf007

    const v6, 0xf006

    const/4 v15, 0x2

    packed-switch v8, :pswitch_data_0

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .local v18, "arException":Ljava/lang/Throwable;
    .local v19, "request":Ljava/lang/Integer;
    goto/16 :goto_f

    .line 927
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :pswitch_0
    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 929
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_3

    .line 930
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 931
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_0

    .line 932
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 934
    const/4 v3, 0x0

    .line 935
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 938
    if-eqz v1, :cond_1

    .line 939
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v1, v11, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 942
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 944
    :cond_1
    return-void

    .line 946
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_2
    :goto_0
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1439
    :cond_3
    :goto_1
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 896
    :pswitch_1
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 898
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_6

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_6

    .line 899
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 900
    .restart local v8    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_4

    .line 901
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 903
    const/4 v3, 0x0

    .line 904
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    goto :goto_2

    .line 906
    :cond_4
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_6

    .line 907
    if-eqz v1, :cond_5

    .line 908
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v1, v11, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 911
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 913
    :cond_5
    return-void

    .line 917
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_6
    :goto_2
    if-eqz v3, :cond_3

    .line 918
    const-string v6, "SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT cfinfoEx check."

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    instance-of v6, v3, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    if-eqz v6, :cond_3

    .line 920
    move-object v6, v3

    check-cast v6, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v0, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->imsCFInfoExToCFInfoEx([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v3

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1412
    :pswitch_2
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1413
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1415
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_8

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_8

    .line 1416
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1417
    .local v10, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_7

    .line 1418
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLP(ILandroid/os/Message;)V

    .line 1419
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1421
    return-void

    .line 1422
    :cond_7
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_8

    .line 1423
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLP(ILandroid/os/Message;)V

    .line 1424
    return-void

    .line 1428
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_8
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1429
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1431
    const/4 v3, 0x0

    .line 1432
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1428
    :cond_9
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1375
    .end local v8    # "mode":I
    :pswitch_3
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1376
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_b

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_b

    .line 1377
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1378
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_a

    .line 1379
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 1380
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1382
    return-void

    .line 1383
    :cond_a
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_b

    .line 1384
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 1385
    return-void

    .line 1389
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_b
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1390
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1392
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1394
    :cond_c
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 1395
    .local v6, "colpInfo":[I
    const/4 v8, 0x0

    aput v8, v6, v8

    .line 1396
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_f

    .line 1397
    instance-of v8, v3, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_e

    .line 1398
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1399
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_d

    .line 1400
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget v10, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v11, 0x0

    aput v10, v6, v11

    .line 1403
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_d
    goto :goto_3

    .line 1404
    :cond_e
    const-string v8, "SS_REQUEST_GET_COLP: arResult is not ImsSsInfo!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_f
    :goto_3
    move-object v3, v6

    .line 1409
    .end local v6    # "colpInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1351
    :pswitch_4
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1352
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1354
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_11

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_11

    .line 1355
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1356
    .restart local v10    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_10

    .line 1357
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLR(ILandroid/os/Message;)V

    .line 1358
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1360
    return-void

    .line 1361
    :cond_10
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_11

    .line 1362
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLR(ILandroid/os/Message;)V

    .line 1363
    return-void

    .line 1367
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_11
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1368
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1370
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1367
    :cond_12
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1314
    .end local v8    # "mode":I
    :pswitch_5
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1315
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_14

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_14

    .line 1316
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1317
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_13

    .line 1318
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 1319
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1321
    return-void

    .line 1322
    :cond_13
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_14

    .line 1323
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 1324
    return-void

    .line 1328
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_14
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1329
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1331
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1333
    :cond_15
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 1334
    .local v6, "colrInfo":[I
    const/4 v8, 0x0

    aput v8, v6, v8

    .line 1335
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_18

    .line 1336
    instance-of v8, v3, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_17

    .line 1337
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1338
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_16

    .line 1339
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget v10, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v11, 0x0

    aput v10, v6, v11

    .line 1342
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_16
    goto :goto_4

    .line 1343
    :cond_17
    const-string v8, "SS_REQUEST_GET_COLR: arResult is not ImsSsInfo!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_18
    :goto_4
    move-object v3, v6

    .line 1348
    .end local v6    # "colrInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1291
    :pswitch_6
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1292
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1293
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1a

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_1a

    .line 1294
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1295
    .restart local v10    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_19

    .line 1296
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCLIP(ILandroid/os/Message;)V

    .line 1297
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1299
    return-void

    .line 1300
    :cond_19
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_1a

    .line 1301
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCLIP(ILandroid/os/Message;)V

    .line 1302
    return-void

    .line 1306
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_1a
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1307
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1309
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1306
    :cond_1b
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1254
    .end local v8    # "mode":I
    :pswitch_7
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1255
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1d

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_1d

    .line 1256
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1257
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_1c

    .line 1258
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1259
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1261
    return-void

    .line 1262
    :cond_1c
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_1d

    .line 1263
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1264
    return-void

    .line 1268
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_1d
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1269
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1271
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1273
    :cond_1e
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 1274
    .local v6, "clipInfo":[I
    const/4 v8, 0x0

    aput v8, v6, v8

    .line 1275
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_21

    .line 1276
    instance-of v8, v3, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_20

    .line 1277
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1278
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_1f

    .line 1279
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget v10, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v11, 0x0

    aput v10, v6, v11

    .line 1282
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_1f
    goto :goto_5

    .line 1283
    :cond_20
    const-string v8, "SS_REQUEST_GET_CLIP: arResult is not ImsSsInfo!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_21
    :goto_5
    move-object v3, v6

    .line 1288
    .end local v6    # "clipInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1230
    :pswitch_8
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1231
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1233
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_23

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_23

    .line 1234
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1235
    .restart local v10    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_22

    .line 1236
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1237
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1239
    return-void

    .line 1240
    :cond_22
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_23

    .line 1241
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1242
    return-void

    .line 1246
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_23
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1247
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1249
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1246
    :cond_24
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1187
    .end local v8    # "mode":I
    :pswitch_9
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1189
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_26

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_26

    .line 1190
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1191
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_25

    .line 1192
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1193
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1195
    return-void

    .line 1196
    :cond_25
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_26

    .line 1197
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1198
    return-void

    .line 1202
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_26
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1203
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1205
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1207
    :cond_27
    new-array v6, v15, [I

    .line 1208
    .local v6, "clirInfo":[I
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2a

    .line 1209
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1210
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_28

    .line 1213
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/telephony/ims/ImsSsInfo;->getCompatArray(I)[I

    move-result-object v6

    .line 1217
    :cond_28
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v10

    .line 1218
    .local v10, "clirSetting":[I
    const/4 v11, 0x0

    aget v12, v10, v11

    if-nez v12, :cond_29

    .line 1219
    const-string v12, "Set clirInfo[0] to default"

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    aget v12, v10, v11

    aput v12, v6, v11

    .line 1222
    :cond_29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SS_REQUEST_GET_CLIR: CLIR param n="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v6, v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " m="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v10    # "clirSetting":[I
    :cond_2a
    move-object v3, v6

    .line 1227
    .end local v6    # "clirInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_f

    .line 1162
    :pswitch_a
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1163
    .local v8, "enable":Z
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1164
    .local v10, "serviceClass":I
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Landroid/os/Message;

    .line 1165
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_2b

    .line 1166
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1167
    .local v6, "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 1168
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1169
    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1170
    return-void

    .line 1171
    .end local v6    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    :cond_2b
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_3

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v11, v11, Lcom/android/ims/ImsException;

    if-eqz v11, :cond_3

    .line 1172
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v11, Lcom/android/ims/ImsException;

    .line 1173
    .local v11, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v13

    if-ne v13, v6, :cond_2c

    .line 1174
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v10, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1175
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1177
    return-void

    .line 1178
    :cond_2c
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_2d

    .line 1179
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v10, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1180
    return-void

    .line 1182
    .end local v11    # "imsException":Lcom/android/ims/ImsException;
    :cond_2d
    goto/16 :goto_1

    .line 1042
    .end local v8    # "enable":Z
    .end local v10    # "serviceClass":I
    :pswitch_b
    const/4 v8, 0x0

    .line 1043
    .local v8, "queryVolteUser":Z
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v11, v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v11, :cond_2e

    .line 1044
    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1045
    .local v10, "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v11

    if-nez v11, :cond_2e

    .line 1046
    const/4 v8, 0x1

    .line 1050
    .end local v10    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    :cond_2e
    if-eqz v8, :cond_3d

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v10

    if-nez v10, :cond_3d

    .line 1051
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1052
    .restart local v10    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1054
    .local v11, "reqCode":Ljava/lang/Integer;
    const/4 v13, 0x0

    .line 1055
    .local v13, "enable":Z
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v6, 0x5

    if-ne v12, v6, :cond_2f

    .line 1056
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1057
    .local v12, "serviceClass":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/os/Message;

    goto :goto_6

    .line 1059
    .end local v12    # "serviceClass":I
    :cond_2f
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1060
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1061
    .restart local v12    # "serviceClass":I
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Landroid/os/Message;

    .line 1064
    :goto_6
    const/4 v6, 0x0

    .line 1065
    .local v6, "imsException":Lcom/android/ims/ImsException;
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v15, :cond_30

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v15, v15, Lcom/android/ims/ImsException;

    if-eqz v15, :cond_30

    .line 1066
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v15

    check-cast v6, Lcom/android/ims/ImsException;

    .line 1069
    :cond_30
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_32

    .line 1070
    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 1071
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1072
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v14, 0x5

    if-ne v9, v14, :cond_31

    .line 1073
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    goto/16 :goto_8

    .line 1075
    :cond_31
    invoke-virtual {v10, v13, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    goto/16 :goto_8

    .line 1077
    :cond_32
    if-eqz v6, :cond_37

    .line 1078
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v15

    move-object/from16 v18, v4

    const v4, 0xf006

    .end local v4    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    if-ne v15, v4, :cond_36

    .line 1080
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 1081
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v15

    const-string v4, "persist.vendor.radio.terminal-based.cw"

    move-object/from16 v19, v7

    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v19    # "request":Ljava/lang/Integer;
    const-string v7, "disabled_tbcw"

    invoke-virtual {v10, v15, v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1086
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1087
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1090
    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1091
    if-eqz v1, :cond_33

    .line 1092
    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1093
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1095
    :cond_33
    return-void

    .line 1097
    .end local v4    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_34
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_35

    .line 1098
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_8

    .line 1100
    :cond_35
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v13, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_8

    .line 1078
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v7    # "request":Ljava/lang/Integer;
    :cond_36
    move-object/from16 v19, v7

    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v19    # "request":Ljava/lang/Integer;
    goto :goto_7

    .line 1077
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :cond_37
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 1103
    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    :goto_7
    if-eqz v6, :cond_3b

    .line 1104
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const v7, 0xf007

    if-ne v4, v7, :cond_3b

    .line 1105
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1106
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1109
    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1110
    if-eqz v1, :cond_38

    .line 1111
    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1112
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_38
    return-void

    .line 1116
    .end local v4    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_39
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_3a

    .line 1117
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_8

    .line 1119
    :cond_3a
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v13, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_8

    .line 1123
    :cond_3b
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1124
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_3c

    .line 1125
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto :goto_8

    .line 1127
    :cond_3c
    invoke-virtual {v10, v13, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1130
    :goto_8
    return-void

    .line 1050
    .end local v6    # "imsException":Lcom/android/ims/ImsException;
    .end local v10    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .end local v11    # "reqCode":Ljava/lang/Integer;
    .end local v12    # "serviceClass":I
    .end local v13    # "enable":Z
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :cond_3d
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 1133
    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const-string v4, "processResponse: SS_REQUEST_GET_CALL_WAITING"

    invoke-static {v9, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1135
    .local v4, "serviceClass":I
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Landroid/os/Message;

    .line 1137
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3f

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/ims/ImsException;

    if-eqz v6, :cond_3f

    .line 1138
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/ims/ImsException;

    .line 1139
    .restart local v6    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    const v10, 0xf006

    if-ne v7, v10, :cond_3e

    .line 1140
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1141
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1143
    return-void

    .line 1144
    :cond_3e
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    const v10, 0xf007

    if-ne v7, v10, :cond_3f

    .line 1146
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1147
    return-void

    .line 1151
    .end local v6    # "imsException":Lcom/android/ims/ImsException;
    :cond_3f
    if-eqz v3, :cond_40

    .line 1152
    const-string v6, "SS_REQUEST_GET_CALL_WAITING ssinfo check."

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    instance-of v6, v3, [Landroid/telephony/ims/ImsSsInfo;

    if-eqz v6, :cond_40

    .line 1154
    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v3

    .line 1159
    .end local v4    # "serviceClass":I
    :cond_40
    move-object/from16 v4, v18

    goto/16 :goto_f

    .line 1006
    .end local v8    # "queryVolteUser":Z
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1007
    .local v4, "facility":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1008
    .local v6, "lockState":Z
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1009
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1010
    .local v8, "serviceClass":I
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Landroid/os/Message;

    .line 1012
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v11, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 1013
    new-instance v11, Lcom/android/internal/telephony/CommandException;

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1015
    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v11, "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move-object/from16 v18, v11

    .line 1018
    .end local v11    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_41
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_54

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v11, v11, Lcom/android/ims/ImsException;

    if-eqz v11, :cond_54

    .line 1019
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v11, Lcom/android/ims/ImsException;

    .line 1020
    .local v11, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v12

    const v13, 0xf006

    if-ne v12, v13, :cond_42

    .line 1021
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v1

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1023
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1025
    return-void

    .line 1026
    :cond_42
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v12

    const v13, 0xf007

    if-ne v12, v13, :cond_43

    .line 1027
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v1

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1028
    return-void

    .line 1029
    :cond_43
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v12

    const v13, 0xf008

    if-ne v12, v13, :cond_44

    .line 1032
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v12

    if-eqz v12, :cond_44

    .line 1033
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object/from16 v18, v10

    .line 1038
    .end local v11    # "imsException":Lcom/android/ims/ImsException;
    :cond_44
    move-object/from16 v4, v18

    goto/16 :goto_f

    .line 950
    .end local v6    # "lockState":Z
    .end local v8    # "serviceClass":I
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .local v7, "request":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    .line 951
    .local v4, "facility":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    .line 952
    .local v6, "password":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 953
    .local v7, "serviceClass":I
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 955
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_49

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_49

    .line 956
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 957
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    const v12, 0xf006

    if-eq v11, v12, :cond_46

    .line 958
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    const v12, 0xf007

    if-ne v11, v12, :cond_45

    goto :goto_9

    .line 976
    :cond_45
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    const v12, 0xf008

    if-ne v11, v12, :cond_49

    .line 979
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v11

    if-eqz v11, :cond_49

    .line 980
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    goto :goto_a

    .line 960
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_46
    :goto_9
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 961
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;

    move-result-object v10

    .line 962
    .local v10, "checkError":Lcom/android/internal/telephony/CommandException;
    if-nez v10, :cond_48

    .line 963
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 965
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v24

    .line 963
    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v25, v1

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 967
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v9

    const v11, 0xf006

    if-ne v9, v11, :cond_47

    .line 969
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 972
    :cond_47
    return-void

    .line 974
    :cond_48
    nop

    .line 976
    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    goto :goto_a

    .line 987
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_49
    move-object/from16 v10, v18

    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v10    # "arException":Ljava/lang/Throwable;
    :goto_a
    if-eqz v3, :cond_4a

    .line 988
    const-string v8, "SS_REQUEST_GET_CALL_BARRING ssinfo check."

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    instance-of v8, v3, [Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_4a

    .line 990
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v3

    .line 994
    :cond_4a
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v8, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 995
    new-instance v8, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 997
    .end local v10    # "arException":Ljava/lang/Throwable;
    .local v8, "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 998
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z

    .line 1000
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1001
    .local v10, "msg":Landroid/os/Message;
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v11, v10, v12, v13}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1002
    .end local v10    # "msg":Landroid/os/Message;
    move-object v4, v8

    goto/16 :goto_f

    .line 994
    .end local v8    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    :cond_4b
    move-object v4, v10

    goto/16 :goto_f

    .line 836
    .end local v6    # "password":Ljava/lang/String;
    .end local v10    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .local v7, "request":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 837
    .local v4, "action":I
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 838
    .local v6, "cfReason":I
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 839
    .local v7, "serviceClass":I
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    .line 840
    .local v8, "number":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 841
    .local v17, "timeSeconds":I
    const/4 v10, 0x6

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 843
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_4d

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_4d

    .line 844
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v10

    check-cast v20, Lcom/android/ims/ImsException;

    .line 845
    .local v20, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v20 .. v20}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const v11, 0xf006

    if-ne v10, v11, :cond_4c

    .line 846
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v11, v4

    move v12, v6

    move v13, v7

    move-object v14, v8

    move/from16 v15, v17

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 848
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 850
    return-void

    .line 851
    :cond_4c
    invoke-virtual/range {v20 .. v20}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const v11, 0xf007

    if-ne v10, v11, :cond_4d

    .line 852
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v11, v4

    move v12, v6

    move v13, v7

    move-object v14, v8

    move/from16 v15, v17

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 854
    return-void

    .line 858
    .end local v20    # "imsException":Lcom/android/ims/ImsException;
    :cond_4d
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_54

    .line 860
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_50

    .line 861
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v12, v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v12, :cond_50

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 862
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 863
    if-eq v4, v11, :cond_4f

    const/4 v10, 0x3

    if-ne v4, v10, :cond_4e

    goto :goto_b

    .line 871
    :cond_4e
    const/4 v10, 0x4

    if-ne v4, v10, :cond_50

    .line 872
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearCFSharePreference(I)V

    goto :goto_c

    .line 865
    :cond_4f
    :goto_b
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 866
    invoke-virtual {v10, v6, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->applyCFSharePreference(ILjava/lang/String;)Z

    move-result v10

    .line 868
    .local v10, "ret":Z
    if-nez v10, :cond_50

    .line 869
    const-string v11, "applySharePreference false."

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v10    # "ret":Z
    :cond_50
    :goto_c
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v10

    if-eqz v10, :cond_54

    if-nez v6, :cond_54

    .line 880
    const/4 v10, 0x0

    .line 881
    .local v10, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v3, :cond_51

    .line 882
    const-string v11, "arResult is null."

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 884
    :cond_51
    instance-of v11, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    if-eqz v11, :cond_52

    .line 885
    move-object v11, v3

    check-cast v11, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->imsCFInfoToCFInfo([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v10

    .line 886
    move-object v3, v10

    goto :goto_d

    .line 887
    :cond_52
    instance-of v11, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v11, :cond_53

    .line 888
    .end local v10    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    move-object v10, v3

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 891
    :cond_53
    :goto_d
    move-object/from16 v4, v18

    goto/16 :goto_f

    .line 1439
    .end local v4    # "action":I
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v17    # "timeSeconds":I
    :cond_54
    move-object/from16 v4, v18

    goto/16 :goto_f

    .line 793
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .local v7, "request":Ljava/lang/Integer;
    :pswitch_f
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 794
    .local v4, "cfReason":I
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 795
    .local v6, "serviceClass":I
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 796
    .local v7, "number":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 798
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_58

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_58

    .line 799
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 800
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const-string v11, "mCi.queryCallForwardStatus."

    const v12, 0xf006

    if-ne v10, v12, :cond_56

    .line 801
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 803
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v10

    if-eqz v10, :cond_55

    .line 804
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 807
    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_e

    .line 809
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_55
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v4, v6, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 811
    return-void

    .line 813
    :cond_56
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const v12, 0xf007

    if-ne v10, v12, :cond_58

    .line 814
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v10

    if-eqz v10, :cond_57

    .line 815
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 818
    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v10    # "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_e

    .line 820
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_57
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v4, v6, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 822
    return-void

    .line 827
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_58
    move-object/from16 v10, v18

    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v10    # "arException":Ljava/lang/Throwable;
    :goto_e
    if-eqz v3, :cond_59

    .line 828
    const-string v8, "SS_REQUEST_GET_CALL_FORWARD cfinfo check."

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    instance-of v8, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    if-eqz v8, :cond_59

    .line 830
    move-object v8, v3

    check-cast v8, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->imsCFInfoToCFInfo([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    move-object v4, v10

    goto :goto_f

    .line 1439
    .end local v4    # "cfReason":I
    .end local v6    # "serviceClass":I
    .end local v7    # "number":Ljava/lang/String;
    :cond_59
    move-object v4, v10

    .end local v10    # "arException":Ljava/lang/Throwable;
    .local v4, "arException":Ljava/lang/Throwable;
    :goto_f
    if-eqz v4, :cond_5a

    instance-of v6, v4, Lcom/android/ims/ImsException;

    if-eqz v6, :cond_5a

    .line 1440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processResponse, imsException.getCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v4

    check-cast v7, Lcom/android/ims/ImsException;

    .line 1441
    invoke-virtual {v7}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1440
    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    move-object v6, v4

    check-cast v6, Lcom/android/ims/ImsException;

    invoke-direct {v0, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    .line 1446
    :cond_5a
    if-eqz v1, :cond_5b

    .line 1447
    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1448
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1450
    :cond_5b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist processSendRequest(Ljava/lang/Object;)V
    .locals 19
    .param p1, "obj"    # Ljava/lang/Object;

    .line 369
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 370
    .local v0, "resp":Landroid/os/Message;
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/ArrayList;

    .line 371
    .local v2, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 372
    .local v4, "request":Ljava/lang/Integer;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 374
    .local v5, "utResp":Landroid/os/Message;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRequest, request = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MtkSSDecisonMaker"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_25

    .line 468
    :pswitch_0
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 469
    .local v3, "action":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 470
    .local v6, "cfReason":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 471
    .local v14, "serviceClass":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    .line 472
    .local v15, "number":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 473
    .local v16, "timeSeconds":I
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, [J

    .line 474
    .local v17, "timeSlot":[J
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/os/Message;

    .line 476
    .end local v0    # "resp":Landroid/os/Message;
    .local v13, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v18, v3

    move-object v3, v13

    goto :goto_1

    .line 482
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 483
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/MtkImsUt;

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v8

    .line 484
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v9
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    move-object v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v18, v3

    move-object v3, v13

    .end local v13    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .local v18, "action":I
    move-object v13, v5

    :try_start_1
    invoke-virtual/range {v7 .. v13}, Lcom/mediatek/ims/MtkImsUt;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_21

    .line 489
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v18    # "action":I
    .local v3, "action":I
    .restart local v13    # "resp":Landroid/os/Message;
    :catch_1
    move-exception v0

    move/from16 v18, v3

    move-object v3, v13

    .line 490
    .end local v13    # "resp":Landroid/os/Message;
    .local v0, "e":Lcom/android/ims/ImsException;
    .local v3, "resp":Landroid/os/Message;
    .restart local v18    # "action":I
    :goto_0
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 492
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_21

    .line 476
    .end local v18    # "action":I
    .local v3, "action":I
    .restart local v13    # "resp":Landroid/os/Message;
    :cond_1
    move/from16 v18, v3

    move-object v3, v13

    .line 477
    .end local v13    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .restart local v18    # "action":I
    :goto_1
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 478
    goto/16 :goto_21

    .line 448
    .end local v3    # "resp":Landroid/os/Message;
    .end local v6    # "cfReason":I
    .end local v14    # "serviceClass":I
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "timeSeconds":I
    .end local v17    # "timeSlot":[J
    .end local v18    # "action":I
    .local v0, "resp":Landroid/os/Message;
    :pswitch_1
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 449
    .local v3, "cfReason":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 450
    .local v6, "serviceClass":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 452
    .end local v0    # "resp":Landroid/os/Message;
    .local v7, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 458
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 459
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/MtkImsUt;

    .line 460
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v9

    .line 459
    invoke-virtual {v8, v9, v5}, Lcom/mediatek/ims/MtkImsUt;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 464
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_15

    .line 462
    :catch_2
    move-exception v0

    .line 463
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 465
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_15

    .line 453
    :cond_3
    :goto_2
    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 454
    goto/16 :goto_15

    .line 756
    .end local v3    # "cfReason":I
    .end local v6    # "serviceClass":I
    .end local v7    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_2
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 757
    .local v7, "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 759
    .end local v0    # "resp":Landroid/os/Message;
    .local v6, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 765
    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 766
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v9

    if-nez v9, :cond_6

    .line 767
    if-eqz v7, :cond_5

    move v3, v14

    :cond_5
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V

    goto :goto_3

    .line 769
    :cond_6
    const-string v3, "Silent queryCOLP"

    invoke-static {v8, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 774
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_3
    goto/16 :goto_18

    .line 772
    :catch_3
    move-exception v0

    .line 773
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 775
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_18

    .line 760
    :cond_7
    :goto_4
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 761
    goto/16 :goto_18

    .line 740
    .end local v6    # "resp":Landroid/os/Message;
    .end local v7    # "mode":I
    .local v0, "resp":Landroid/os/Message;
    :pswitch_3
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 742
    .end local v0    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    .line 748
    :cond_8
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 749
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 752
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_21

    .line 750
    :catch_4
    move-exception v0

    .line 751
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 753
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_21

    .line 743
    :cond_9
    :goto_5
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 744
    goto/16 :goto_21

    .line 718
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_4
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 719
    .local v3, "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 721
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v6    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 727
    :cond_a
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 728
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v7

    if-nez v7, :cond_b

    .line 729
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V

    goto :goto_6

    .line 731
    :cond_b
    const-string v7, "Silent queryCOLR"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_5

    .line 736
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_6
    goto/16 :goto_18

    .line 734
    :catch_5
    move-exception v0

    .line 735
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 737
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_18

    .line 722
    :cond_c
    :goto_7
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 723
    goto/16 :goto_18

    .line 702
    .end local v3    # "mode":I
    .end local v6    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_5
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 704
    .end local v0    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    .line 710
    :cond_d
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 711
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_6

    .line 714
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_21

    .line 712
    :catch_6
    move-exception v0

    .line 713
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 715
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_21

    .line 705
    :cond_e
    :goto_8
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 706
    goto/16 :goto_21

    .line 675
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_6
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 676
    .restart local v7    # "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 678
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v6    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_b

    .line 683
    :cond_f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_a

    .line 689
    :cond_10
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 690
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v9

    if-nez v9, :cond_12

    .line 691
    if-eqz v7, :cond_11

    move v3, v14

    :cond_11
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V

    goto :goto_9

    .line 693
    :cond_12
    const-string v3, "Silent queryCLIP"

    invoke-static {v8, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_7
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_7} :catch_7

    .line 698
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_9
    goto/16 :goto_18

    .line 696
    :catch_7
    move-exception v0

    .line 697
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 699
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_18

    .line 684
    :cond_13
    :goto_a
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 685
    goto/16 :goto_18

    .line 679
    :cond_14
    :goto_b
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 680
    goto/16 :goto_18

    .line 654
    .end local v6    # "resp":Landroid/os/Message;
    .end local v7    # "mode":I
    .local v0, "resp":Landroid/os/Message;
    :pswitch_7
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 656
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v3    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_d

    .line 661
    :cond_15
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_c

    .line 667
    :cond_16
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 668
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_8

    .line 671
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_21

    .line 669
    :catch_8
    move-exception v0

    .line 670
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 672
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_21

    .line 662
    :cond_17
    :goto_c
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 663
    goto/16 :goto_21

    .line 657
    :cond_18
    :goto_d
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 658
    goto/16 :goto_21

    .line 627
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_8
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 628
    .local v3, "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 630
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v6    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_10

    .line 635
    :cond_19
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_f

    .line 641
    :cond_1a
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 642
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 643
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V

    goto :goto_e

    .line 645
    :cond_1b
    const-string v7, "Silent queryCLIR"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_9 .. :try_end_9} :catch_9

    .line 650
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_e
    goto/16 :goto_18

    .line 648
    :catch_9
    move-exception v0

    .line 649
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 651
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_18

    .line 636
    :cond_1c
    :goto_f
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 637
    goto/16 :goto_18

    .line 631
    :cond_1d
    :goto_10
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 632
    goto/16 :goto_18

    .line 611
    .end local v3    # "mode":I
    .end local v6    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_9
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 613
    .end local v0    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_11

    .line 619
    :cond_1e
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 620
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_a

    .line 623
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_21

    .line 621
    :catch_a
    move-exception v0

    .line 622
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 624
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_21

    .line 614
    :cond_1f
    :goto_11
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 615
    goto/16 :goto_21

    .line 582
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_a
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 583
    .local v3, "enable":Z
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 584
    .local v6, "serviceClass":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 586
    .end local v0    # "resp":Landroid/os/Message;
    .local v7, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_14

    .line 591
    :cond_20
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_13

    .line 597
    :cond_21
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 600
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 601
    invoke-interface {v0, v3, v6, v5}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V

    goto :goto_12

    .line 603
    :cond_22
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_b
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_b} :catch_b

    .line 607
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_12
    goto :goto_15

    .line 605
    :catch_b
    move-exception v0

    .line 606
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 608
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_15

    .line 592
    :cond_23
    :goto_13
    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 593
    goto :goto_15

    .line 587
    :cond_24
    :goto_14
    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 588
    nop

    .line 780
    .end local v3    # "enable":Z
    .end local v6    # "serviceClass":I
    :goto_15
    move-object v0, v7

    goto/16 :goto_25

    .line 560
    .end local v7    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_b
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 561
    .local v3, "serviceClass":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 563
    .end local v0    # "resp":Landroid/os/Message;
    .local v6, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_17

    .line 568
    :cond_25
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_16

    .line 574
    :cond_26
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 575
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_c

    .line 578
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_18

    .line 576
    :catch_c
    move-exception v0

    .line 577
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 579
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_18

    .line 569
    :cond_27
    :goto_16
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 570
    goto :goto_18

    .line 564
    :cond_28
    :goto_17
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 565
    nop

    .line 780
    .end local v3    # "serviceClass":I
    :goto_18
    move-object v0, v6

    goto/16 :goto_25

    .line 532
    .end local v6    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_c
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 533
    .local v3, "facility":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 534
    .local v6, "lockState":Z
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    .line 535
    .local v13, "password":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 536
    .restart local v14    # "serviceClass":I
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/os/Message;

    .line 538
    .end local v0    # "resp":Landroid/os/Message;
    .local v15, "resp":Landroid/os/Message;
    move v9, v6

    .line 540
    .local v9, "iLockState":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_1a

    .line 545
    :cond_29
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_19

    .line 551
    :cond_2a
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v7

    .line 552
    .local v7, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x0

    move-object v10, v5

    move v12, v14

    invoke-interface/range {v7 .. v12}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_d .. :try_end_d} :catch_d

    .line 556
    .end local v7    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_1b

    .line 554
    :catch_d
    move-exception v0

    .line 555
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 557
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_1b

    .line 546
    :cond_2b
    :goto_19
    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 547
    goto :goto_1b

    .line 541
    :cond_2c
    :goto_1a
    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 542
    nop

    .line 780
    .end local v3    # "facility":Ljava/lang/String;
    .end local v6    # "lockState":Z
    .end local v9    # "iLockState":I
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    :goto_1b
    move-object v0, v15

    goto/16 :goto_25

    .line 495
    .end local v15    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_d
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    .restart local v3    # "facility":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 497
    .local v6, "password":Ljava/lang/String;
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 498
    .local v7, "serviceClass":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 500
    .end local v0    # "resp":Landroid/os/Message;
    .local v8, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_1d

    .line 505
    :cond_2d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_1c

    .line 510
    :cond_2e
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 511
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z

    if-eqz v0, :cond_30

    .line 512
    if-eqz v8, :cond_2f

    .line 513
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v8, v9, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 515
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 517
    :cond_2f
    return-void

    .line 519
    :cond_30
    const-string v3, "AI"

    .line 524
    :cond_31
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 525
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9, v5, v7}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;I)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_e

    .line 528
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_24

    .line 526
    :catch_e
    move-exception v0

    .line 527
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 529
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_24

    .line 506
    :cond_32
    :goto_1c
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 507
    goto/16 :goto_24

    .line 501
    :cond_33
    :goto_1d
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 502
    goto/16 :goto_24

    .line 403
    .end local v3    # "facility":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "serviceClass":I
    .end local v8    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_e
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 404
    .local v3, "action":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 405
    .local v6, "cfReason":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 406
    .local v15, "serviceClass":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 407
    .local v7, "number":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 408
    .restart local v16    # "timeSeconds":I
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/os/Message;

    .line 410
    .end local v0    # "resp":Landroid/os/Message;
    .local v12, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_34

    move/from16 v17, v3

    move-object v3, v12

    goto/16 :goto_20

    .line 416
    :cond_34
    if-eqz v7, :cond_35

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 417
    :cond_35
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v14, :cond_37

    .line 418
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v8, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v8, :cond_37

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 419
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 420
    if-eq v3, v14, :cond_36

    if-ne v3, v13, :cond_37

    .line 422
    :cond_36
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 423
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCFPreviousDialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "getNumber":Ljava/lang/String;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_37

    .line 426
    move-object v7, v0

    move-object v14, v7

    goto :goto_1e

    .line 435
    .end local v0    # "getNumber":Ljava/lang/String;
    :cond_37
    move-object v14, v7

    .end local v7    # "number":Ljava/lang/String;
    .local v14, "number":Ljava/lang/String;
    :goto_1e
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v7

    .line 436
    .local v7, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v8

    .line 437
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v9
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_f .. :try_end_f} :catch_10

    .line 436
    move-object v10, v14

    move v11, v15

    move-object v13, v12

    .end local v12    # "resp":Landroid/os/Message;
    .local v13, "resp":Landroid/os/Message;
    move/from16 v12, v16

    move/from16 v17, v3

    move-object v3, v13

    .end local v13    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .local v17, "action":I
    move-object v13, v5

    :try_start_10
    invoke-interface/range {v7 .. v13}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_10} :catch_f

    .line 444
    .end local v7    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_21

    .line 442
    :catch_f
    move-exception v0

    goto :goto_1f

    .end local v17    # "action":I
    .local v3, "action":I
    .restart local v12    # "resp":Landroid/os/Message;
    :catch_10
    move-exception v0

    move/from16 v17, v3

    move-object v3, v12

    .line 443
    .end local v12    # "resp":Landroid/os/Message;
    .local v0, "e":Lcom/android/ims/ImsException;
    .local v3, "resp":Landroid/os/Message;
    .restart local v17    # "action":I
    :goto_1f
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 445
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_21

    .line 410
    .end local v14    # "number":Ljava/lang/String;
    .end local v17    # "action":I
    .local v3, "action":I
    .local v7, "number":Ljava/lang/String;
    .restart local v12    # "resp":Landroid/os/Message;
    :cond_38
    move/from16 v17, v3

    move-object v3, v12

    .line 411
    .end local v12    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .restart local v17    # "action":I
    :goto_20
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 412
    nop

    .line 780
    .end local v6    # "cfReason":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "timeSeconds":I
    .end local v17    # "action":I
    :goto_21
    move-object v0, v3

    goto :goto_25

    .line 378
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_f
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 379
    .local v3, "cfReason":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 380
    .local v6, "serviceClass":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 381
    .restart local v7    # "number":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 383
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v8    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_23

    .line 388
    :cond_39
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_22

    .line 394
    :cond_3a
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 395
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v10, v0

    check-cast v10, Lcom/mediatek/ims/MtkImsUt;

    .line 396
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v11

    .line 395
    invoke-virtual {v10, v11, v9, v6, v5}, Lcom/mediatek/ims/MtkImsUt;->queryCFForServiceClass(ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_11
    .catch Lcom/android/ims/ImsException; {:try_start_11 .. :try_end_11} :catch_11

    .line 399
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_24

    .line 397
    :catch_11
    move-exception v0

    .line 398
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 400
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_24

    .line 389
    :cond_3b
    :goto_22
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 390
    goto :goto_24

    .line 384
    :cond_3c
    :goto_23
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 385
    nop

    .line 780
    .end local v3    # "cfReason":I
    .end local v6    # "serviceClass":I
    .end local v7    # "number":Ljava/lang/String;
    :goto_24
    move-object v0, v8

    .end local v8    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :goto_25
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist sendRadioNotAvailable(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 183
    const-string v0, "MtkSSDecisonMaker"

    const-string v1, "sendRadioNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz p1, :cond_0

    .line 185
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 154
    const-string v0, "MtkSSDecisonMaker"

    const-string v1, "dispose."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 156
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 157
    return-void
.end method

.method public blacklist getCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1578
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1560
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1563
    return-void
.end method

.method public blacklist getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1608
    return-void
.end method

.method public blacklist getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1593
    return-void
.end method

.method public blacklist queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1502
    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1478
    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1547
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1527
    return-void
.end method

.method blacklist send(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1620
    .local p1, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1621
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1622
    return-void
.end method

.method blacklist sendGenericErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 174
    const-string v0, "MtkSSDecisonMaker"

    const-string v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :cond_0
    return-void
.end method

.method public blacklist setCLIP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clipMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1586
    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1571
    return-void
.end method

.method public blacklist setCOLP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colpMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1616
    return-void
.end method

.method public blacklist setCOLR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colrMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1601
    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 1483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1492
    return-void
.end method

.method public blacklist setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .line 1506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1516
    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1556
    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1539
    return-void
.end method

.method public blacklist starThread()V
    .locals 2

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SSRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 148
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;-><init>(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    .line 149
    return-void
.end method
