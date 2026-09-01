.class public final Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
.super Lcom/android/internal/telephony/gsm/GsmMmiCode;
.source "MtkGsmMmiCode.java"


# static fields
.field static final blacklist CNAPMmi:Ljava/lang/String; = "Calling Name Presentation"

.field static final blacklist EVENT_GET_COLP_COMPLETE:I = 0x9

.field static final blacklist EVENT_GET_COLR_COMPLETE:I = 0x8

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkGsmMmiCode"

.field static final blacklist SC_CNAP:Ljava/lang/String; = "300"

.field static final blacklist SC_COLP:Ljava/lang/String; = "76"

.field static final blacklist SC_COLR:Ljava/lang/String; = "77"

.field private static final blacklist SENLOG:Z


# instance fields
.field private blacklist mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

.field blacklist mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field private blacklist mUserInitiatedMMI:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 80
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->SENLOG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 1
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUserInitiatedMMI:Z

    .line 254
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 256
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMtkSSRequestDecisionMaker()Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 257
    return-void
.end method

.method private blacklist createQueryCnapResultMessage(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "status"    # I
    .param p2, "serviceProvisioned"    # I

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createQueryCnapResultMessage, status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const v2, 0x1040772

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    .line 1210
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1201
    :cond_0
    if-nez p1, :cond_1

    .line 1202
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104076e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1204
    :cond_1
    if-ne p1, v3, :cond_3

    .line 1205
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104076f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1199
    nop

    .line 1214
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CNAP_sb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-object v0
.end method

.method public static blacklist isUtMmiCode(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "dialPhone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "iccApp"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1309
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v0

    .line 1310
    .local v0, "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1314
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isShortCode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1316
    :cond_1
    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1317
    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1318
    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1319
    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1320
    const-string v3, "77"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1321
    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1322
    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1323
    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1325
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1327
    :cond_3
    return v1

    .line 1315
    :cond_4
    :goto_0
    return v1

    .line 1311
    :cond_5
    :goto_1
    return v1
.end method

.method public static blacklist newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .locals 1
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .locals 8
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "ret":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFromDialString, dialstring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    nop

    .line 127
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "dialPart":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "#"

    if-nez v3, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 130
    .local v3, "isMmi":Z
    :goto_1
    const/4 v6, 0x2

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 131
    const-string v4, "Not belong to MMI format."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    return-object v2

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    :cond_3
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 146
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 147
    new-instance v7, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v7, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v7

    .line 148
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mAction:Ljava/lang/String;

    .line 150
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 151
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 152
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    .line 153
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    .line 154
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    .line 155
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 157
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    new-instance v4, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v4

    .line 166
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 167
    :cond_4
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isFacToDial()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 169
    const/4 v0, 0x0

    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 175
    new-instance v4, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v4

    .line 176
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-static {v4, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 179
    const/4 v0, 0x0

    goto :goto_2

    .line 180
    :cond_7
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    new-instance v4, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v4

    .line 183
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 186
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 187
    iput-object p3, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    .line 190
    :cond_9
    return-object v0
.end method

.method public static blacklist newFromUssdUserInput(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 196
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 198
    .local v0, "ret":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 199
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsPendingUSSD:Z

    .line 202
    return-object v0
.end method

.method public static blacklist newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .locals 3
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1222
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 1223
    .local v0, "ret":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1224
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1226
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040519

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1228
    :goto_0
    iput-boolean p1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsUssdRequest:Z

    .line 1229
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1231
    return-object v0
.end method

.method private blacklist onGetColpComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1236
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1239
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1240
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1243
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1246
    .local v1, "colpArgs":[I
    const/4 v2, 0x1

    aget v3, v1, v2

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x805000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1260
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x805000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1255
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1256
    goto :goto_0

    .line 1248
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040772

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1250
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1251
    nop

    .line 1264
    .end local v1    # "colpArgs":[I
    :goto_0
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1265
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1266
    return-void
.end method

.method private blacklist onGetColrComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1270
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1273
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1274
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1277
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1280
    .local v1, "colrArgs":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040519

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1296
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1288
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x805000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1290
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1291
    goto :goto_0

    .line 1282
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040772

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1284
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1285
    nop

    .line 1302
    .end local v1    # "colrArgs":[I
    :goto_0
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1303
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1304
    return-void
.end method

.method private static blacklist siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .line 206
    const-string v0, "MtkGsmMmiCode"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 216
    .local v1, "serviceCode":I
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 221
    :goto_0
    goto :goto_1

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 224
    :goto_1
    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    const/16 v0, 0x11

    return v0

    .line 242
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 241
    :pswitch_2
    const/16 v0, 0x210

    return v0

    .line 240
    :pswitch_3
    const/16 v0, 0x50

    return v0

    .line 239
    :pswitch_4
    const/16 v0, 0xa0

    return v0

    .line 238
    :pswitch_5
    const/16 v0, 0x30

    return v0

    .line 230
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 228
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 227
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 226
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 225
    :pswitch_a
    const/16 v0, 0xd

    return v0

    .line 244
    :cond_1
    const/16 v0, 0x40

    return v0

    .line 229
    :cond_2
    const/16 v0, 0x8

    return v0

    .line 207
    .end local v1    # "serviceCode":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist supportMdAutoSetupIms()Z
    .locals 3

    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    const/4 v0, 0x1

    .line 1335
    :cond_0
    return v0
.end method


# virtual methods
.method protected blacklist createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "serviceClass"    # I

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    .line 1176
    const v2, 0x1040770

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1178
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1179
    .local v1, "classMask":I
    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    .line 1182
    and-int v2, v1, p1

    if-eqz v2, :cond_0

    .line 1183
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    and-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1180
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1187
    .end local v1    # "classMask":I
    :cond_1
    return-object v0
.end method

.method protected blacklist createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "serviceClass"    # I

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    .line 1158
    const v2, 0x1040770

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1160
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1161
    .local v1, "classMask":I
    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    .line 1164
    and-int v2, v1, p1

    if-eqz v2, :cond_0

    .line 1165
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    and-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    .end local v1    # "classMask":I
    :cond_1
    return-object v0
.end method

.method protected blacklist getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1349
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_6

    .line 1350
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1353
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    const-string v2, "MtkGsmMmiCode"

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1374
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_5:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 1375
    const-string v1, "getErrorMessage, OEM_ERROR_5 CALL_BARRED"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x8050008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1377
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_6

    .line 1378
    const-string v1, "getErrorMessage, FDN_CHECK_FAILURE"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x8050007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1358
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const v3, 0x1040519

    if-eqz v1, :cond_5

    .line 1359
    const-string v1, "getErrorMessage, OEM_ERROR"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1361
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v1

    .line 1362
    .local v1, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v2, 0x0

    .line 1363
    .local v2, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1364
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v2

    .line 1365
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1366
    return-object v2

    .line 1368
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 1371
    .end local v1    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 1372
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1383
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getScString()Ljava/lang/CharSequence;
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    const-string v0, "Calling Name Presentation"

    return-object v0

    .line 1343
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserInitiatedMMI()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUserInitiatedMMI:Z

    return v0
.end method

.method blacklist handleCLIP()V
    .locals 4

    .line 406
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CLIP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryCLIP(Landroid/os/Message;)V

    .line 430
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 434
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCLIP(Landroid/os/Message;)V

    .line 436
    return-void

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 440
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto :goto_1

    .line 444
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    .line 410
    .local v0, "clipEnable":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 411
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCLIP(ILandroid/os/Message;)V

    .line 412
    return-void

    .line 415
    :cond_6
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 416
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 417
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 418
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 417
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCLIP(ILandroid/os/Message;)V

    .line 419
    return-void

    .line 422
    :cond_7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 423
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 425
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCLIP(ILandroid/os/Message;)V

    .line 426
    .end local v0    # "clipEnable":I
    nop

    .line 446
    :goto_1
    return-void
.end method

.method blacklist handleCLIR()V
    .locals 4

    .line 450
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CLIR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 480
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 485
    return-void

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 489
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCLIR(Landroid/os/Message;)V

    .line 491
    return-void

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 495
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto :goto_2

    .line 499
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    move v2, v3

    goto :goto_1

    :cond_7
    nop

    :goto_1
    move v0, v2

    .line 455
    .local v0, "clirAction":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 456
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 457
    return-void

    .line 460
    :cond_8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 461
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 462
    return-void

    .line 465
    :cond_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 466
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 467
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 468
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 467
    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCLIR(ILandroid/os/Message;)V

    .line 469
    return-void

    .line 472
    :cond_a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 473
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 475
    :cond_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 476
    .end local v0    # "clirAction":I
    nop

    .line 501
    :goto_2
    return-void
.end method

.method blacklist handleCNAP(Ljava/lang/String;)V
    .locals 2
    .param p1, "cnapssMessage"    # Ljava/lang/String;

    .line 384
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CNAP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->sendCNAP(Ljava/lang/String;Landroid/os/Message;)V

    .line 402
    return-void

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist handleCOLP()V
    .locals 3

    .line 505
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is COLP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 509
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 513
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCOLP(Landroid/os/Message;)V

    .line 515
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 519
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 525
    return-void

    .line 523
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist handleCOLR()V
    .locals 3

    .line 529
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is COLR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 533
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 537
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCOLR(Landroid/os/Message;)V

    .line 539
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 543
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 549
    return-void

    .line 547
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist handleCW()V
    .locals 10

    .line 775
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CW"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v1

    .line 777
    .local v1, "serviceClass":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CW serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    const-string v3, "Invalid or Unsupported MMI Code"

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 780
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 785
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 784
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_1

    .line 787
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    .line 782
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 781
    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 789
    :goto_1
    return-void

    .line 792
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    .line 794
    .local v2, "tbcwMode":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 830
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 831
    if-ne v2, v5, :cond_5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 832
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    if-nez v3, :cond_5

    .line 833
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_6

    .line 834
    :cond_5
    if-eq v2, v9, :cond_8

    if-ne v2, v8, :cond_6

    goto :goto_2

    .line 842
    :cond_6
    const-string v3, "processCode getCallWaiting"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 845
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 846
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 847
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 846
    invoke-virtual {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 849
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 836
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 837
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 839
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 840
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 839
    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 854
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_b
    :goto_3
    if-ne v2, v5, :cond_d

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    if-nez v3, :cond_d

    .line 797
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 798
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    .line 797
    const-string v4, "persist.vendor.radio.terminal-based.cw"

    const-string v6, "disabled_tbcw"

    invoke-static {v3, v4, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, "tbcwStatus":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTerminal-based CallWaiting(): tbcwStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enable = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 801
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 804
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 805
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 804
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_4

    .line 807
    :cond_c
    const-string v4, "setCallWaiting() by NW."

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 809
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 808
    invoke-interface {v0, v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 811
    .end local v3    # "tbcwStatus":Ljava/lang/String;
    :goto_4
    goto :goto_6

    :cond_d
    if-eq v2, v9, :cond_10

    if-ne v2, v8, :cond_e

    goto :goto_5

    .line 819
    :cond_e
    const-string v3, "processCode setCallWaiting"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 822
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 823
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    .line 824
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 823
    invoke-virtual {v0, v3, v1, v4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_6

    .line 826
    :cond_f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    .line 827
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 826
    invoke-interface {v0, v3, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_6

    .line 813
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 814
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 816
    :cond_11
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    .line 817
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v4, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 816
    invoke-interface {v0, v3, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 856
    :goto_6
    return-void
.end method

.method blacklist handleCallBarring()V
    .locals 11

    .line 647
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CB"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 649
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v9

    .line 650
    .local v9, "serviceClass":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 652
    .local v10, "facility":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "handleCallBarring: getUiccCardApplication() == null"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 653
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    const/4 v7, 0x5

    if-eqz v2, :cond_0

    .line 654
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 655
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 654
    invoke-interface {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 656
    return-void

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 660
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 662
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 661
    invoke-virtual {v0, v10, v1, v9, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 663
    return-void

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 667
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 673
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_3

    .line 674
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 677
    .local v0, "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 679
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {v0, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 680
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 681
    return-void

    .line 684
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 685
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    .line 686
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 684
    move-object v3, v10

    move-object v4, v1

    move v5, v9

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 687
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 723
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 689
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 690
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 689
    move-object v3, v10

    move-object v5, v1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 691
    return-void

    .line 694
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 695
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 696
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 697
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 696
    move-object v3, v10

    move-object v5, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 698
    return-void

    .line 701
    :cond_8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 702
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 708
    :cond_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_a

    .line 709
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 712
    .restart local v0    # "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 714
    .restart local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {v0, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 715
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 716
    return-void

    .line 719
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 720
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v7

    .line 721
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 719
    move-object v3, v10

    move-object v5, v1

    move v6, v9

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 725
    :goto_1
    return-void
.end method

.method blacklist handleCallForward()V
    .locals 17

    .line 553
    move-object/from16 v0, p0

    const-string v1, "MtkGsmMmiCode"

    const-string v2, "processCode: is CF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 555
    .local v2, "dialingNumber":Ljava/lang/String;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    .line 556
    .local v3, "serviceClass":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v10

    .line 557
    .local v10, "reason":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v11

    .line 561
    .local v11, "time":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/internal/telephony/IOplusPhone;

    .line 562
    .local v12, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v12, v3}, Lcom/android/internal/telephony/IOplusPhone;->specifyServiceClassForOperator(I)I

    move-result v13

    .line 565
    .end local v3    # "serviceClass":I
    .local v13, "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 569
    invoke-virtual {v0, v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 568
    invoke-interface {v1, v10, v13, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 570
    return-void

    .line 573
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 574
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 576
    invoke-virtual {v0, v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 575
    invoke-virtual {v1, v10, v13, v2, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 577
    return-void

    .line 580
    :cond_1
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 581
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 583
    :cond_2
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 584
    invoke-virtual {v0, v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 583
    invoke-interface {v1, v10, v13, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 587
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 593
    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 594
    const/4 v3, 0x1

    .line 595
    .local v3, "cfAction":I
    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsCallFwdReg:Z

    move v14, v3

    goto :goto_0

    .line 597
    .end local v3    # "cfAction":I
    :cond_4
    const/4 v3, 0x3

    .line 598
    .restart local v3    # "cfAction":I
    iput-boolean v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsCallFwdReg:Z

    move v14, v3

    goto :goto_0

    .line 600
    .end local v3    # "cfAction":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 601
    const/4 v3, 0x0

    move v14, v3

    .restart local v3    # "cfAction":I
    goto :goto_0

    .line 602
    .end local v3    # "cfAction":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 603
    const/4 v3, 0x3

    move v14, v3

    .restart local v3    # "cfAction":I
    goto :goto_0

    .line 604
    .end local v3    # "cfAction":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 605
    const/4 v3, 0x4

    move v14, v3

    .line 610
    .local v14, "cfAction":I
    :goto_0
    invoke-static {v10, v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isVoiceUnconditionalForwarding(II)Z

    move-result v3

    move v15, v3

    .line 611
    .local v15, "includeCFU":I
    if-eq v14, v6, :cond_9

    if-ne v14, v5, :cond_8

    goto :goto_1

    .line 612
    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    :goto_1
    move v3, v6

    :goto_2
    move v9, v3

    .line 614
    .local v9, "isEnableDesired":I
    const-string v3, "is CF setCallForward"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v3, 0x6

    if-eqz v1, :cond_a

    .line 616
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 617
    invoke-virtual {v0, v3, v15, v9, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 616
    move-object v3, v1

    move v4, v14

    move v5, v10

    move v6, v13

    move-object v7, v2

    move v8, v11

    move v1, v9

    .end local v9    # "isEnableDesired":I
    .local v1, "isEnableDesired":I
    move-object/from16 v9, v16

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 621
    return-void

    .line 624
    .end local v1    # "isEnableDesired":I
    .restart local v9    # "isEnableDesired":I
    :cond_a
    move v1, v9

    .end local v9    # "isEnableDesired":I
    .restart local v1    # "isEnableDesired":I
    iget-object v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 625
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 626
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 627
    invoke-virtual {v0, v3, v15, v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 626
    move-object v3, v4

    move v4, v14

    move v5, v10

    move v6, v13

    move-object v7, v2

    move v8, v11

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 631
    return-void

    .line 634
    :cond_b
    iget-object v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v5

    if-ne v5, v6, :cond_c

    .line 635
    iget-object v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 637
    :cond_c
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 638
    invoke-virtual {v0, v3, v15, v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 637
    move-object v3, v4

    move v4, v14

    move v5, v10

    move v6, v13

    move-object v7, v2

    move v8, v11

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 643
    .end local v1    # "isEnableDesired":I
    .end local v14    # "cfAction":I
    .end local v15    # "includeCFU":I
    :goto_3
    return-void

    .line 607
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "invalid action"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist handleChangeBarringPassward()V
    .locals 9

    .line 729
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is Change PWD"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    .line 732
    .local v0, "oldPwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    .line 733
    .local v1, "newPwd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid or Unsupported MMI Code"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_1
    :goto_0
    const-string v2, "**"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mAction:Ljava/lang/String;

    .line 737
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 739
    const-string v2, "AB"

    move-object v8, v2

    .local v2, "facility":Ljava/lang/String;
    goto :goto_1

    .line 741
    .end local v2    # "facility":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 745
    .local v8, "facility":Ljava/lang/String;
    :goto_1
    const v2, 0x104057c

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 746
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 747
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 750
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsCall()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 751
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 752
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 754
    .local v3, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 755
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 756
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "ce":Lcom/android/internal/telephony/CommandException;
    goto :goto_3

    .line 760
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    .line 761
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 760
    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkRIL;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 748
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    goto :goto_3

    .line 766
    :cond_6
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    .line 771
    :goto_3
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 863
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "43"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_c

    const/4 v6, 0x5

    const-string v7, "MtkGsmMmiCode"

    if-eq v0, v6, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 955
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 916
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 917
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onGetColpComplete(Landroid/os/AsyncResult;)V

    .line 918
    goto/16 :goto_3

    .line 921
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 922
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onGetColrComplete(Landroid/os/AsyncResult;)V

    .line 923
    goto/16 :goto_3

    .line 879
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 885
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_8

    .line 886
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v4

    .line 887
    .local v1, "cffEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_8

    .line 891
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    .line 892
    .local v2, "serviceClass":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 893
    .local v6, "reason":I
    if-eqz v6, :cond_4

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    and-int/lit16 v8, v2, 0x200

    if-eqz v8, :cond_6

    :cond_5
    move v4, v5

    .line 898
    .local v4, "isSettingUnconditionalVideo":Z
    :cond_6
    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v8, :cond_7

    if-eqz v4, :cond_7

    .line 899
    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IOplusPhone;

    .line 900
    .local v8, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v8, v1}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v2    # "serviceClass":I
    .end local v4    # "isSettingUnconditionalVideo":Z
    .end local v6    # "reason":I
    .end local v8    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_7
    goto :goto_1

    .line 902
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET_CFF_COMPLETE Exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 908
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 912
    .end local v1    # "cffEnabled":Z
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 913
    goto/16 :goto_3

    .line 926
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 927
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 928
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    if-ne v2, v1, :cond_b

    .line 929
    const-string v1, "TBCW_WITH_CS"

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_b

    .line 931
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 936
    .local v1, "cwArray":[I
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_CALL_WAITING_FOR_CS_TB cwArray[0]:cwArray[1] = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    aget v2, v1, v4

    if-ne v2, v5, :cond_a

    aget v2, v1, v5

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_a

    move v4, v5

    :cond_a
    move v2, v4

    .line 942
    .local v2, "csEnable":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 947
    .end local v2    # "csEnable":Z
    goto :goto_2

    .line 943
    :catch_1
    move-exception v2

    .line 944
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CALL_WAITING_FOR_CS_TB: improper result: err ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    .end local v1    # "cwArray":[I
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    .line 951
    goto :goto_3

    .line 865
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 867
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 868
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    if-ne v2, v1, :cond_e

    .line 869
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_e

    .line 870
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_d

    move v4, v5

    :cond_d
    move v1, v4

    .line 871
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 875
    .end local v1    # "enable":Z
    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 876
    nop

    .line 958
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_3
    return-void
.end method

.method protected blacklist makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .line 1007
    const-string v0, "{0}"

    const-string v1, "{1}"

    const-string v2, "{2}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "sources":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 1014
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-ltz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1017
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v5, :cond_2

    .line 1018
    if-eqz v2, :cond_1

    .line 1019
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1022
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1025
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_2
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1026
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1032
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_3
    if-eqz v2, :cond_4

    .line 1033
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1036
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1046
    .restart local v6    # "template":Ljava/lang/CharSequence;
    :goto_1
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v4

    .line 1047
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1048
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 1050
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v3, :cond_6

    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v3, p2

    if-ne v3, v5, :cond_6

    .line 1053
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v5, :cond_5

    move v4, v5

    :cond_5
    move v3, v4

    .line 1054
    .local v3, "cffEnabled":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_6

    .line 1055
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1059
    .end local v3    # "cffEnabled":Z
    :cond_6
    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method protected blacklist onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1065
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1068
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    .line 1069
    return-void

    .line 1073
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1075
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104076e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1080
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_9

    .line 1081
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, v6, v5, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_5

    .line 1085
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1093
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x1

    .line 1094
    .local v7, "serviceClassMask":I
    :goto_0
    const/16 v8, 0x200

    if-gt v7, v8, :cond_8

    .line 1096
    const/16 v9, 0x100

    if-ne v7, v9, :cond_2

    goto :goto_4

    .line 1098
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v10, v2

    .local v10, "s":I
    :goto_1
    if-ge v9, v10, :cond_7

    .line 1099
    aget-object v11, v2, v9

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v11, v7

    if-eqz v11, :cond_6

    .line 1100
    aget-object v11, v2, v9

    invoke-virtual {p0, v11, v7}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1101
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1104
    aget-object v11, v2, v9

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v11, :cond_6

    aget-object v11, v2, v9

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v11, v7

    if-ne v11, v6, :cond_6

    .line 1107
    iget-object v11, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v11, :cond_4

    .line 1108
    iget-object v11, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    aget-object v12, v2, v9

    iget v12, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v12, v6, :cond_3

    move v12, v6

    goto :goto_2

    :cond_3
    move v12, v5

    :goto_2
    invoke-virtual {v11, v6, v12, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1113
    :cond_4
    aget-object v11, v2, v9

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v11, :cond_6

    aget-object v11, v2, v9

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v11, v7

    if-ne v11, v8, :cond_6

    .line 1116
    iget-object v11, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v11

    sget-object v12, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v11, v12}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/IOplusPhone;

    .line 1117
    .local v11, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    aget-object v12, v2, v9

    iget v12, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v12, v6, :cond_5

    move v12, v6

    goto :goto_3

    :cond_5
    move v12, v5

    :goto_3
    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 1098
    .end local v11    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1095
    .end local v9    # "i":I
    .end local v10    # "s":I
    :cond_7
    :goto_4
    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1124
    .end local v7    # "serviceClassMask":I
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1127
    .end local v3    # "tb":Landroid/text/SpannableStringBuilder;
    :cond_9
    :goto_5
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1130
    .end local v2    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCfComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1133
    return-void
.end method

.method protected blacklist onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1138
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1141
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1142
    .local v1, "ints":[I
    array-length v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "300"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    const-string v2, "MtkGsmMmiCode"

    const-string v3, "onQueryComplete_CNAP"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->createQueryCnapResultMessage(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1146
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1147
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1148
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1149
    return-void

    .line 1152
    .end local v1    # "ints":[I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    .line 1153
    return-void
.end method

.method protected blacklist onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 963
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 966
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 967
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 968
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 969
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 970
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040519

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 975
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 976
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 977
    return-void

    .line 982
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 983
    return-void
.end method

.method public blacklist processCode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 272
    const-string v0, "04"

    const-string v1, "MtkGsmMmiCode"

    const v2, 0x1040519

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 273
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    :cond_0
    const-string v0, "Stop CS MMI during IMS Ecc Call or VoLTE call"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 283
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 284
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 285
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 286
    return-void

    .line 289
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isShortCode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    const-string v0, "isShortCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 293
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Special USSD Support:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "300"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCNAP(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 300
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "30"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 301
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCLIP()V

    goto/16 :goto_2

    .line 302
    :cond_6
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "31"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 303
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCLIR()V

    goto/16 :goto_2

    .line 304
    :cond_7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "76"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCOLP()V

    goto/16 :goto_2

    .line 306
    :cond_8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "77"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 307
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCOLR()V

    goto/16 :goto_2

    .line 308
    :cond_9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 309
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCallForward()V

    goto/16 :goto_2

    .line 310
    :cond_a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 311
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCallBarring()V

    goto/16 :goto_2

    .line 312
    :cond_b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "03"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleChangeBarringPassward()V

    goto/16 :goto_2

    .line 314
    :cond_c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "43"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCW()V

    goto/16 :goto_2

    .line 316
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isPinPukCommand()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 324
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 325
    .local v3, "oldPinOrPuk":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    .line 326
    .local v4, "newPinOrPuk":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 327
    .local v6, "pinLen":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isRegister()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 328
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 330
    const v0, 0x104050f

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_1

    .line 331
    :cond_e
    const/4 v7, 0x4

    if-lt v6, v7, :cond_16

    const/16 v7, 0x8

    if-le v6, v7, :cond_f

    goto/16 :goto_0

    .line 334
    :cond_f
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 336
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v7, v8, :cond_10

    .line 338
    const v0, 0x1040522

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_1

    .line 339
    :cond_10
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v7, :cond_15

    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process mmi service code using UiccApp sc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 345
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 344
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 346
    :cond_11
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "042"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 348
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 347
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 349
    :cond_12
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "05"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 350
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 351
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 350
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 352
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "052"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 353
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 354
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 353
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 356
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uicc unsupported service code="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 359
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "No application mUiccApplicaiton is null"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 333
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_16
    :goto_0
    const v0, 0x10403e6

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    .line 364
    .end local v3    # "oldPinOrPuk":Ljava/lang/String;
    .end local v4    # "newPinOrPuk":Ljava/lang/String;
    .end local v6    # "pinLen":I
    :goto_1
    goto :goto_2

    .line 362
    .restart local v3    # "oldPinOrPuk":Ljava/lang/String;
    .restart local v4    # "newPinOrPuk":Ljava/lang/String;
    .restart local v6    # "pinLen":I
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ivalid register/action="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 364
    .end local v3    # "oldPinOrPuk":Ljava/lang/String;
    .end local v4    # "newPinOrPuk":Ljava/lang/String;
    .end local v6    # "pinLen":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 365
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_19

    .line 366
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 368
    :cond_19
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 379
    :cond_1a
    :goto_2
    goto :goto_3

    .line 370
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "exc":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 374
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exc.toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v3, "procesCode: mState = FAILED"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 378
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 380
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :goto_3
    return-void
.end method

.method protected blacklist serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceClassToCFString, serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    .line 998
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x8050044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setUserInitiatedMMI(Z)V
    .locals 0
    .param p1, "userinit"    # Z

    .line 261
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUserInitiatedMMI:Z

    .line 262
    return-void
.end method
