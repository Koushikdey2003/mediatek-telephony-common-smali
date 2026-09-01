.class public Lcom/mediatek/internal/telephony/MtkRadioExIndication;
.super Lcom/mediatek/internal/telephony/MtkRadioExIndicationBase;
.source "MtkRadioExIndication.java"


# static fields
.field private static final blacklist ENG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "MtkRadioInd"


# instance fields
.field private blacklist mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 142
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 149
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRadioExIndicationBase;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 151
    return-void
.end method

.method private blacklist getSubId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 280
    const/4 v0, -0x1

    .line 281
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 282
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 283
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 285
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist bipProactiveCommand(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1054
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1061
    :cond_1
    return-void
.end method

.method public blacklist callAdditionalInfoInd(IILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "ciType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 203
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    .local v0, "notification":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 206
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc36

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 218
    :cond_1
    return-void
.end method

.method public blacklist cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;

    .line 155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 158
    .local v0, "notification":[I
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;->status:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 159
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;->lineId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 161
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbfe

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 163
    aget v1, v0, v2

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    aget v1, v0, v2

    if-ne v1, v2, :cond_1

    .line 170
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 173
    :cond_1
    return-void
.end method

.method public blacklist cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;

    .line 222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 224
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 225
    .local v0, "notification":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->simCipherStatus:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 226
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->sessionStatus:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 227
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->csStatus:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 228
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->psStatus:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 230
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 234
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 237
    :cond_0
    return-void
.end method

.method public blacklist confSRVCC(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1150
    .local p2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1154
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1155
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1156
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1158
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1159
    return-void
.end method

.method public blacklist crssIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "crssNotification"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;

    .line 259
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 261
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;-><init>()V

    .line 262
    .local v0, "notification":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->code:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->code:I

    .line 263
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->type:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->type:I

    .line 264
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->alphaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->alphaid:Ljava/lang/String;

    .line 265
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    .line 266
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->cli_validity:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->cli_validity:I

    .line 268
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 272
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 274
    :cond_0
    return-void
.end method

.method public blacklist currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 416
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 418
    .local v0, "ss":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc19

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 419
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSignalStrengthWithWcdmaEcioInd SignalStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 423
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 425
    :cond_0
    return-void
.end method

.method public blacklist dataAllowedNotification(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "isAllowed"    # I

    .line 587
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 589
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 590
    .local v1, "response":[I
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 593
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    if-ne p2, v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const/16 v3, 0xbc6

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 600
    :cond_1
    return-void
.end method

.method public blacklist dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 1193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertDedicatedDataCallResult(Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-result-object v0

    .line 1201
    .local v0, "ret":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1208
    :cond_0
    return-void
.end method

.method public blacklist dedicatedBearerDeactivationInd(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "cid"    # I

    .line 1229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1232
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0c

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dedicatedBearerDeactivationInd, cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1240
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1243
    :cond_0
    return-void
.end method

.method public blacklist dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 1211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1217
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertDedicatedDataCallResult(Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-result-object v0

    .line 1219
    .local v0, "ret":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public blacklist dsbpStateChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "dsbpState"    # I

    .line 1307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1309
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc2a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsbpStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1313
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1316
    :cond_1
    return-void
.end method

.method public blacklist eMBMSAtInfoIndication(ILjava/lang/String;)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "ret":Ljava/lang/Object;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 840
    .local v1, "response":Ljava/lang/String;
    move-object v0, v1

    .line 842
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbef

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 845
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "Notify mEmbmsAtInfoNotificationRegistrant"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 853
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "No mEmbmsAtInfoNotificationRegistrant exist"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 856
    :goto_0
    return-void
.end method

.method public blacklist eMBMSSessionStatusIndication(II)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 676
    .local v1, "response":[I
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 678
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbee

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 681
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 683
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "Notify mEmbmsSessionStatusNotificationRegistrant"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "No mEmbmsSessionStatusNotificationRegistrant exist"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 693
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.EMBMS_SESSION_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "isActived"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 697
    return-void
.end method

.method public blacklist eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "eccListWithCard"    # Ljava/lang/String;
    .param p3, "eccListNoCard"    # Ljava/lang/String;

    .line 277
    return-void
.end method

.method public blacklist esnMeidChangeInd(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "esnMeid"    # Ljava/lang/String;

    .line 1015
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1017
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcf

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1026
    :cond_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache esnMeidChangeInd"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    .line 1031
    :goto_0
    return-void
.end method

.method public blacklist gmssRatChangedIndication(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 923
    .local p2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 926
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 927
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 931
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbbb

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 933
    move-object v2, v0

    check-cast v2, [I

    .line 934
    .local v2, "rat":[I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v3, :cond_1

    .line 935
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 937
    :cond_1
    return-void
.end method

.method public blacklist iccidChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1493
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1496
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1497
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1496
    const/16 v2, 0xc3f

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1500
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->cacheIccid(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1504
    :cond_0
    return-void
.end method

.method public blacklist incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    .line 178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 180
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    .local v0, "notification":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 182
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 183
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 184
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->callMode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 185
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->seqNo:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 186
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 189
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 196
    :cond_0
    return-void
.end method

.method public blacklist mdChangedApnInd(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "apnClassType"    # I

    .line 1003
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1005
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1009
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1008
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1011
    :cond_1
    return-void
.end method

.method public blacklist meSmsStorageFullInd(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 549
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 551
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 556
    :cond_1
    return-void
.end method

.method public blacklist mobileDataUsageInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1404
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1406
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1407
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1408
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3d

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1413
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 1414
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1417
    :cond_1
    return-void
.end method

.method public blacklist networkInfoInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1106
    .local p2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbd6

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1115
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public blacklist networkRejectCauseInd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 345
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 346
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 350
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xc25

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 352
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 356
    :cond_1
    return-void
.end method

.method public blacklist newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "etws"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;

    .line 530
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 532
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkEtwsNotification;-><init>()V

    .line 533
    .local v0, "response":Lcom/mediatek/internal/telephony/MtkEtwsNotification;
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->messageId:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    .line 534
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->serialNumber:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    .line 535
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->warningType:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    .line 536
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->plmnId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->plmnId:Ljava/lang/String;

    .line 537
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->securityInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->securityInfo:Ljava/lang/String;

    .line 539
    sget-boolean v1, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 546
    :cond_1
    return-void
.end method

.method public blacklist oemHookRaw(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1251
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1253
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 1255
    .local v0, "response":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1256
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1255
    const/16 v3, 0x404

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1259
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1263
    :cond_0
    return-void
.end method

.method public blacklist onCardDetectedInd(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 511
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc35

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 520
    :cond_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache card detected event"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCardDetected:Z

    .line 525
    :goto_0
    return-void
.end method

.method public blacklist onCellularQualityChangedInd(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1367
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1369
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc3c

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1372
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1373
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1374
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    .line 1395
    const/4 v1, 0x0

    .local v1, "CellularQualityType":I
    goto :goto_1

    .line 1392
    .end local v1    # "CellularQualityType":I
    :cond_2
    const/4 v1, 0x7

    .line 1393
    .restart local v1    # "CellularQualityType":I
    goto :goto_1

    .line 1389
    .end local v1    # "CellularQualityType":I
    :cond_3
    const/4 v1, 0x6

    .line 1390
    .restart local v1    # "CellularQualityType":I
    goto :goto_1

    .line 1386
    .end local v1    # "CellularQualityType":I
    :cond_4
    const/4 v1, 0x2

    .line 1387
    .restart local v1    # "CellularQualityType":I
    goto :goto_1

    .line 1383
    .end local v1    # "CellularQualityType":I
    :cond_5
    const/4 v1, 0x5

    .line 1384
    .restart local v1    # "CellularQualityType":I
    goto :goto_1

    .line 1380
    .end local v1    # "CellularQualityType":I
    :cond_6
    const/4 v1, 0x0

    .line 1381
    .restart local v1    # "CellularQualityType":I
    nop

    .line 1399
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_UNSOL_IWLAN_CELLULAR_QUALITY_CHANGED_IND type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1401
    return-void
.end method

.method public blacklist onDsdaChangedInd(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "mode"    # I

    .line 1319
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1321
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDsdaChangedInd: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1326
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1325
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1328
    :cond_1
    return-void
.end method

.method public blacklist onImeiLock(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 487
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 489
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbf

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 495
    :cond_1
    return-void
.end method

.method public blacklist onImsiRefreshDone(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 498
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 500
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 506
    :cond_1
    return-void
.end method

.method public blacklist onMccMncChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc18

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 446
    :cond_0
    return-void
.end method

.method public blacklist onMdDataRetryCountReset(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 1122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1124
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1132
    :cond_1
    return-void
.end method

.method public blacklist onNwLimitInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1476
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1478
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1479
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1480
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1483
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3e

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1485
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 1486
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1489
    :cond_1
    return-void
.end method

.method public blacklist onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;)V
    .locals 11
    .param p1, "indicationType"    # I
    .param p2, "plmnMvnoInfo"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;

    .line 1508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1510
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gsmPlmn:Ljava/lang/String;

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->cdmaPlmn:Ljava/lang/String;

    iget-object v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gsmSpn:Ljava/lang/String;

    iget-object v5, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->cdmaSpn:Ljava/lang/String;

    iget-object v6, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gsmImsi:Ljava/lang/String;

    iget-object v7, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->cdmaImsi:Ljava/lang/String;

    iget-object v8, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gid1:Ljava/lang/String;

    iget-object v9, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->pnn:Ljava/lang/String;

    iget-object v10, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->impi:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    .local v0, "response":Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc40

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1518
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->notifyPlmnMvnoData(Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;)V

    .line 1519
    return-void
.end method

.method public blacklist onPseudoCellInfoInd(ILjava/util/ArrayList;)V
    .locals 13
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 609
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "Broadcast for APC info:cellInfo="

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 611
    sget-boolean v1, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc9

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 613
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 614
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 615
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 619
    .end local v2    # "i":I
    :cond_1
    const-string v2, "persist.vendor.radio.apc.mode%d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "property":Ljava/lang/String;
    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "propStr":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 622
    .local v5, "index":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 623
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 624
    .local v7, "subStr":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, "settings":[Ljava/lang/String;
    aget-object v9, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 626
    .local v9, "mode":I
    aget-object v10, v8, v3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 627
    .local v10, "report":I
    if-ne v10, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    .line 628
    .local v3, "enable":Z
    :goto_1
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 629
    .local v11, "interval":I
    new-instance v12, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v12, v9, v3, v11, v1}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(IZI[I)V

    move-object v3, v12

    .line 630
    .end local v7    # "subStr":Ljava/lang/String;
    .end local v8    # "settings":[Ljava/lang/String;
    .end local v9    # "mode":I
    .end local v10    # "report":I
    .end local v11    # "interval":I
    .local v3, "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    goto :goto_2

    .line 631
    .end local v3    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :cond_3
    new-instance v3, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v3, v6, v6, v6, v1}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(IZI[I)V

    .line 634
    .restart local v3    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :goto_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v7, :cond_4

    .line 635
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v3, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 639
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.mediatek.phone.ACTION_APC_INFO_NOTIFY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "phoneId"

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 641
    const-string v8, "info"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 644
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 649
    new-instance v8, Landroid/content/Intent;

    const-string v9, "oppo.intent.action.FAKE_BS_BLOCKED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v8, "fakeBSIntent":Landroid/content/Intent;
    const-string v9, "com.coloros.blacklistapp"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v9, "arfcn"

    invoke-virtual {v3, v6}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->getArfcn(I)I

    move-result v6

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    const-string v9, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 653
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v9, "fake BS blocked, arfcn"

    invoke-virtual {v6, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":[I
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .end local v4    # "propStr":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "fakeBSIntent":Landroid/content/Intent;
    goto :goto_3

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_4

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 662
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    nop

    .line 664
    :goto_4
    return-void
.end method

.method public blacklist onRemoveRestrictEutran(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 1136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1138
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf4

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1146
    :cond_1
    return-void
.end method

.method public blacklist onRsuEvent(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "eventId"    # I
    .param p3, "eventString"    # Ljava/lang/String;

    .line 1522
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1523
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RSU-SIMLOCK] onRsuEvent eventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1525
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc38

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1529
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1530
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1532
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 1533
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1536
    :cond_1
    return-void
.end method

.method public blacklist onRsuSimLockEvent(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "eventId"    # I

    .line 814
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 815
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RSU-SIMLOCK] onRsuSimLockEvent eventId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 816
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc38

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 820
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 821
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 823
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 827
    :cond_1
    return-void
.end method

.method public blacklist onSimHotSwapInd(IILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 709
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimHotSwapInd event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 713
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    .line 752
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "onSimHotSwapInd Invalid event!"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_7

    .line 746
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_7

    .line 740
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 733
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_7

    .line 734
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 727
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_7

    .line 728
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 721
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_7

    .line 722
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 715
    :cond_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_7

    .line 716
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 755
    :cond_7
    :goto_0
    return-void
.end method

.method public blacklist onSimPowerChangedInd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 765
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 767
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc34

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 771
    :cond_0
    const/4 v0, 0x0

    .line 772
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 773
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 774
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v2    # "i":I
    :cond_1
    move-object v0, v1

    .line 778
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    .line 779
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 782
    :cond_2
    return-void
.end method

.method public blacklist onStkMenuReset(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 1092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1094
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbff

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1102
    :cond_1
    return-void
.end method

.method public blacklist onTxPowerIndication(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1271
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1272
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1273
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1274
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 1278
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1281
    :cond_1
    return-void
.end method

.method public blacklist onTxPowerStatusIndication(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1289
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1290
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1291
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1292
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1295
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1299
    :cond_1
    return-void
.end method

.method public blacklist onVirtualSimOff(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 462
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 464
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 468
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 467
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 470
    :cond_1
    return-void
.end method

.method public blacklist onVirtualSimOn(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 451
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 453
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbd

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 457
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 456
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 459
    :cond_1
    return-void
.end method

.method public blacklist onVirtualSimStatusChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 475
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc39

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 477
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    .line 479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 478
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 480
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 481
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 484
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;)V
    .locals 7
    .param p1, "indicationType"    # I
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;

    .line 1163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc02

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1171
    iget v0, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    if-lez v0, :cond_0

    iget v0, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1173
    .local v0, "length":I
    :goto_0
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->transactionId:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->eventId:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1175
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 1176
    .local v1, "indicationEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    if-lez v0, :cond_1

    .line 1177
    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1178
    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 1181
    :cond_1
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1182
    invoke-virtual {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1181
    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1184
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v2, :cond_3

    .line 1185
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1188
    :cond_3
    return-void
.end method

.method public blacklist pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;)V
    .locals 7
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;

    .line 1075
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1077
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;

    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->cid:I

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->apnName:Ljava/lang/String;

    iget-object v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->bearerProto:Ljava/lang/String;

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->pcoId:I

    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->contents:Ljava/util/ArrayList;

    .line 1081
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;-><init>(ILjava/lang/String;Ljava/lang/String;I[B)V

    .line 1083
    .local v0, "response":Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbed

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1085
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1087
    return-void
.end method

.method public blacklist phbReadyNotification(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "isPhbReady"    # I

    .line 1034
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1036
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1037
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1040
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phbReadyNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbd4

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public blacklist plmnChangedIndication(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 865
    .local p2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 868
    .local v1, "response":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 869
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 873
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 875
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 876
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 878
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v4, "ECOPS,notify mPlmnChangeNotificationRegistrant"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 880
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 883
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 885
    :goto_1
    monitor-exit v2

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1331
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1333
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1334
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1335
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1339
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3a

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1343
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_1

    .line 1344
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1347
    :cond_1
    return-void
.end method

.method public blacklist registrationSuspendedIndication(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 897
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 898
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 902
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 904
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 905
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v3, :cond_1

    .line 907
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v4, "EMSR, notify mRegistrationSuspendedRegistrant"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 909
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 912
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 914
    :goto_1
    monitor-exit v2

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist resetAttachApnInd(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 986
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 989
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcc

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 995
    :cond_1
    return-void
.end method

.method public blacklist responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "[UNSL]< UNSOL_RESPONSE_CS_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 297
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 299
    :cond_0
    return-void
.end method

.method public blacklist responseFemtocellInfo(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 398
    .local v1, "response":[Ljava/lang/String;
    move-object v0, v1

    .line 401
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbd5

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 404
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 407
    :cond_0
    return-void
.end method

.method public blacklist responseInvalidSimInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 380
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 381
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc8

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 386
    :cond_0
    return-void
.end method

.method public blacklist responseLteNetworkInfo(II)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # I

    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UNSL]< RIL_UNSOL_LTE_NETWORK_INFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public blacklist responseModulationInfoInd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 365
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 366
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 370
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbcb

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 372
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 375
    :cond_1
    return-void
.end method

.method public blacklist responseNetworkEventInd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 321
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 326
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 327
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 331
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbca

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 333
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 337
    :cond_1
    return-void
.end method

.method public blacklist responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "[UNSL]< UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 309
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 310
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 313
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 317
    :cond_1
    return-void
.end method

.method public blacklist smlDeviceLockInfoChangedInd(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1423
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc81

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1430
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "smlDeviceLockInfoChangedInd"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1432
    const/4 v0, 0x0

    .line 1433
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1434
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1435
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 1434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1437
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 1438
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1439
    .local v2, "ril":Lcom/mediatek/internal/telephony/MtkRIL;
    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlDeviceLockInfo:Ljava/lang/Object;

    .line 1440
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlDeviceLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1441
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlDeviceLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1444
    :cond_1
    return-void
.end method

.method public blacklist smlEncryptedSerialIdInd(ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1447
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc82

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlEncryptedSerialIdInd, data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1457
    .local v0, "ret":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1458
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 1459
    .local v1, "serialId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smlEncryptedSerialIdInd, the serialNo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1462
    const v2, 0xf4281

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 1463
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1464
    .local v3, "serialNo":[B
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smlEncryptedSerialIdInd, the serialNo length is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1465
    array-length v4, v3

    invoke-static {v2, v3, v4}, Landroid/engineer/OplusEngineerManager;->saveEngineerData(I[BI)Z

    goto :goto_0

    .line 1467
    .end local v3    # "serialNo":[B
    :cond_0
    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1468
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1469
    .restart local v3    # "serialNo":[B
    array-length v4, v3

    invoke-static {v2, v3, v4}, Landroid/engineer/OplusEngineerManager;->saveEngineerData(I[BI)Z

    .line 1473
    .end local v1    # "serialId":Ljava/lang/String;
    .end local v3    # "serialNo":[B
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 788
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc2b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 793
    :cond_0
    const/4 v0, 0x0

    .line 794
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 795
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 796
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 795
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v2    # "i":I
    :cond_1
    move-object v0, v1

    .line 800
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    .line 801
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 805
    :cond_2
    return-void
.end method

.method public blacklist smsInfoExtInd(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc41

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 582
    :cond_0
    return-void
.end method

.method public blacklist smsReadyInd(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 559
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 561
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc4

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 567
    :cond_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache sms ready event"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsSmsReady:Z

    .line 570
    :goto_0
    return-void
.end method

.method public blacklist suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "suppSvcNotification"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 243
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;-><init>()V

    .line 244
    .local v0, "notification":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    iget-boolean v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->notificationType:I

    .line 245
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    .line 246
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->index:I

    .line 247
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->type:I

    .line 248
    iget-object v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->number:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 256
    :cond_0
    return-void
.end method

.method public blacklist triggerOtaSP(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 1065
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1066
    .local v0, "testTriggerOtasp":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "AT+CDV=*22899"

    aput-object v2, v0, v1

    .line 1067
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1068
    const/4 v1, 0x2

    const-string v2, "DESTRILD:C2K"

    aput-object v2, v0, v1

    .line 1069
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1070
    return-void
.end method

.method public blacklist worldModeChangedIndication(ILjava/util/ArrayList;)V
    .locals 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 945
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 948
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 949
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v2    # "i":I
    :cond_0
    move-object v0, v1

    .line 953
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbce

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 955
    const/4 v2, 0x1

    .line 956
    .local v2, "state":I
    const/4 v3, 0x0

    .line 957
    .local v3, "retvalue":Z
    nop

    .line 958
    move-object v4, v0

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 960
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 961
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->resetSwitchingState(I)Z

    move-result v3

    .line 962
    const/4 v2, 0x1

    goto :goto_1

    .line 963
    :cond_1
    if-nez v2, :cond_2

    .line 964
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)Z

    move-result v3

    goto :goto_1

    .line 966
    :cond_2
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)Z

    move-result v3

    .line 968
    :goto_1
    if-nez v3, :cond_3

    .line 969
    return-void

    .line 972
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "worldModeState"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 974
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 976
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast for WorldModeChanged: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 979
    .end local v4    # "intent":Landroid/content/Intent;
    return-void
.end method
