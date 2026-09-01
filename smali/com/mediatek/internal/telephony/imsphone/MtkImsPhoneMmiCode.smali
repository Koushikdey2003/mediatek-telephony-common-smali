.class public final Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.source "MtkImsPhoneMmiCode.java"


# static fields
.field private static final blacklist DIALOG_DISPLAY_TIME:I = 0x3e8

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkImsPhoneMmiCode"

.field private static final blacklist SC_CFNotRegister:Ljava/lang/String; = "68"

.field private static final blacklist SENLOG:Z


# instance fields
.field private blacklist processTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 126
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->SENLOG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processTime:J

    .line 312
    return-void
.end method

.method private blacklist checkIfOPSupportCallerID()Z
    .locals 1

    .line 1367
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1368
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleGeneralError()V

    .line 1370
    const/4 v0, 0x0

    return v0

    .line 1372
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "serviceClass"    # I

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1090
    const v2, 0x1040770

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1092
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1093
    .local v1, "classMask":I
    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    .line 1096
    and-int v2, v1, p1

    if-eqz v2, :cond_0

    .line 1097
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    and-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1094
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    .end local v1    # "classMask":I
    :cond_1
    return-object v0
.end method

.method private blacklist handleGeneralError()V
    .locals 3

    .line 1376
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1378
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040519

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1381
    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1382
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 1383
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1384
    return-void
.end method

.method private blacklist isFacToDial()Z
    .locals 8

    .line 1395
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1401
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "carrier_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1402
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1403
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_2

    .line 1404
    const-string v3, "feature_access_codes_string_array"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "dialFacList":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1407
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 1408
    .local v6, "fac":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1409
    const/4 v1, 0x1

    return v1

    .line 1407
    .end local v6    # "fac":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1414
    .end local v3    # "dialFacList":[Ljava/lang/String;
    :cond_2
    return v1

    .line 1396
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "b":Landroid/os/PersistableBundle;
    :cond_3
    :goto_1
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v2, "isFacToDial false due to mDialingNumber"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return v1
.end method

.method protected static blacklist isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .line 1290
    if-eqz p0, :cond_1

    .line 1291
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    const-string v0, "68"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1290
    :goto_0
    return v0
.end method

.method public static blacklist isUtMmiCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "dialPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 963
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v0

    .line 964
    .local v0, "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 968
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 970
    :cond_1
    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 971
    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 972
    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 973
    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 974
    const-string v3, "77"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 975
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 976
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 977
    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 978
    const-string v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 979
    const-string v3, "157"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 981
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 983
    :cond_3
    return v1

    .line 969
    :cond_4
    :goto_0
    return v1

    .line 965
    :cond_5
    :goto_1
    return v1
.end method

.method public static blacklist newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .locals 1
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .locals 7
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFromDialString, dialstring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "#"

    if-nez v1, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 164
    .local v1, "isMmi":Z
    :goto_1
    const/4 v5, 0x2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 165
    const-string v3, "Not belong to MMI format."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    return-object v2

    .line 170
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 173
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v6, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v6

    .line 175
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 176
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 177
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 178
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 179
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 180
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    .line 181
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    .line 182
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 183
    iput-object p2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    .line 189
    iget-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    new-instance v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v3, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v3

    .line 193
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 194
    :cond_3
    invoke-direct {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isFacToDial()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 196
    const/4 v0, 0x0

    goto :goto_2

    .line 198
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    new-instance v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v3, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v3

    .line 204
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 205
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v4

    invoke-static {v3, v4, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    const/4 v0, 0x0

    goto :goto_2

    .line 209
    :cond_6
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 211
    new-instance v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v3, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v3

    .line 212
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 215
    :cond_7
    :goto_2
    return-object v0
.end method

.method public static blacklist newFromUssdUserInput(Ljava/lang/String;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 254
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 256
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 257
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 260
    return-object v0
.end method

.method public static blacklist newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 222
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 224
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 225
    iput-boolean p1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 228
    if-eqz p1, :cond_0

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 230
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 232
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 235
    :goto_0
    return-object v0
.end method

.method public static blacklist newNetworkInitiatedUssdError(Ljava/lang/String;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .locals 3
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 241
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 242
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 243
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040519

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 247
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 248
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 250
    return-object v0
.end method

.method private blacklist removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 1281
    const-string v0, ""

    .line 1282
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    .local v1, "reverse":Ljava/lang/String;
    const-string v2, "\\)[0-9]{5}\\("

    .line 1284
    .local v2, "pattern":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    return-object v0
.end method

.method protected static blacklist scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 1300
    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_7

    .line 1304
    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    const/4 v0, 0x4

    return v0

    .line 1306
    :cond_0
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    const/4 v0, 0x0

    return v0

    .line 1308
    :cond_1
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1309
    const/4 v0, 0x1

    return v0

    .line 1310
    :cond_2
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1311
    const/4 v0, 0x3

    return v0

    .line 1312
    :cond_3
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1313
    const/4 v0, 0x2

    return v0

    .line 1314
    :cond_4
    const-string v1, "004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1315
    const/4 v0, 0x5

    return v0

    .line 1316
    :cond_5
    const-string v1, "68"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1317
    const/4 v0, 0x6

    return v0

    .line 1319
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .line 265
    const-string v0, "MtkImsPhoneMmiCode"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 273
    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, "serviceCode":I
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 280
    :goto_0
    goto :goto_1

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 283
    :goto_1
    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 303
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

    .line 299
    :pswitch_0
    const/16 v0, 0x11

    return v0

    .line 298
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 297
    :pswitch_2
    const/16 v0, 0x210

    return v0

    .line 296
    :pswitch_3
    const/16 v0, 0x50

    return v0

    .line 295
    :pswitch_4
    const/16 v0, 0xa0

    return v0

    .line 293
    :pswitch_5
    const/16 v0, 0x30

    return v0

    .line 291
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 287
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 286
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 285
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 284
    :pswitch_a
    const/16 v0, 0xd

    return v0

    .line 300
    :cond_1
    const/16 v0, 0x40

    return v0

    .line 289
    :cond_2
    const/16 v0, 0x8

    return v0

    .line 266
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

    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    const/4 v0, 0x1

    .line 992
    :cond_0
    return v0
.end method

.method private blacklist triggerMmiCodeCsfb(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1325
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1326
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1328
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1329
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1330
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    const v2, 0xf007

    const v3, 0xf006

    const/4 v4, 0x1

    const-string v5, "MtkImsPhoneMmiCode"

    if-eqz v1, :cond_2

    .line 1331
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1332
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_0

    .line 1334
    const-string v2, "handleMessage(): CommandException.Error.UT_XCAP_403_FORBIDDEN"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v2, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1338
    return v4

    .line 1339
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v6, :cond_1

    .line 1341
    const-string v3, "handleMessage(): CommandException.Error.UT_UNKNOWN_HOST"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1344
    return v4

    .line 1339
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_1
    goto :goto_0

    .line 1346
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_4

    .line 1347
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1348
    .local v1, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 1349
    const-string v2, "handleMessage(): ImsReasonInfo.CODE_UT_XCAP_403_FORBIDDEN"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v2, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1353
    return v4

    .line 1354
    :cond_3
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 1355
    const-string v3, "handleMessage(): ImsReasonInfo.CODE_UT_UNKNOWN_HOST"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1358
    return v4

    .line 1363
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "imsException":Lcom/android/ims/ImsException;
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method blacklist checkProcessTime()V
    .locals 6

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 456
    .local v0, "now":J
    iget-wide v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 458
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v2

    .line 463
    :cond_0
    :goto_0
    return-void
.end method

.method protected blacklist getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1264
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1266
    .local v0, "err":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 1268
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1271
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorMessage, errorMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsPhoneMmiCode"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-object v1

    .line 1277
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1247
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1249
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .local v2, "errorMessage":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1250
    return-object v2

    .line 1251
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1254
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsErrorMessage, errorMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkImsPhoneMmiCode"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return-object v1

    .line 1258
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1183
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/ims/ImsException;

    const v1, 0x10407d2

    const v2, 0x10407d3

    const v3, 0x10407d4

    const v4, 0x10407d1

    const v5, 0x104051b

    const v6, 0x1040519

    const-string v7, "MtkImsPhoneMmiCode"

    if-eqz v0, :cond_3

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMmiErrorMessage, ims error code = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1185
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    const/16 v8, 0xf1

    if-eq v0, v8, :cond_2

    const v5, 0xf009

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1196
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1194
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1192
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1190
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1198
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1199
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1203
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-object v1

    .line 1207
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1188
    .end local v0    # "error":Lcom/android/ims/ImsException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1212
    :cond_3
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_b

    .line 1213
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1214
    .local v0, "err":Lcom/android/internal/telephony/CommandException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMmiErrorMessage, error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_4

    .line 1216
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1217
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v8, :cond_5

    .line 1218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1219
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_6

    .line 1220
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1221
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_7

    .line 1222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1223
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_8

    .line 1224
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1225
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_9

    .line 1226
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_9

    .line 1227
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_9

    .line 1228
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_9

    .line 1229
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_b

    .line 1230
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1231
    .restart local v1    # "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1234
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-object v1

    .line 1238
    :cond_a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1242
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x336
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist handleCLIP()V
    .locals 4

    .line 650
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CLIP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v2, 0x7

    .line 658
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for queryCLIP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    goto :goto_3

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 670
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_3
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    const/4 v3, 0x0

    .line 665
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 664
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 666
    :catch_1
    move-exception v1

    .line 667
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for updateCLIP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2
    nop

    .line 672
    :goto_3
    return-void
.end method

.method blacklist handleCLIR()V
    .locals 6

    .line 676
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CLIR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    const-string v2, "Could not get UT handle for updateCLIR."

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 684
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 685
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 688
    invoke-virtual {p0, v4, v3, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 686
    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 690
    return-void

    .line 694
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 695
    invoke-virtual {p0, v4, v3, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 694
    invoke-interface {v1, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    goto/16 :goto_3

    .line 700
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 701
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 702
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 705
    invoke-virtual {p0, v4, v3, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 703
    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 707
    return-void

    .line 711
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 712
    invoke-virtual {p0, v4, v3, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 711
    invoke-interface {v1, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 714
    :catch_1
    move-exception v1

    .line 715
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    goto :goto_3

    .line 717
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 718
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 719
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 720
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 721
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 722
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 723
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v1

    .line 724
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v5, -0x1

    invoke-direct {v2, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v4, v1, v4

    .line 725
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    aget v3, v1, v3

    .line 726
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 727
    .local v2, "info":Landroid/telephony/ims/ImsSsInfo;
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 728
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 730
    .end local v1    # "result":[I
    .end local v2    # "info":Landroid/telephony/ims/ImsSsInfo;
    :cond_5
    return-void

    .line 734
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 735
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 736
    :catch_2
    move-exception v1

    .line 737
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for queryCLIR."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2
    nop

    .line 742
    :goto_3
    return-void

    .line 740
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist handleCOLP()V
    .locals 4

    .line 746
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is COLP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_0

    .line 749
    return-void

    .line 751
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v2, 0x7

    .line 754
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for queryCOLP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    goto :goto_3

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 766
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_3
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    const/4 v3, 0x0

    .line 761
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 760
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 762
    :catch_1
    move-exception v1

    .line 763
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for updateCOLP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2
    nop

    .line 768
    :goto_3
    return-void
.end method

.method blacklist handleCOLR()V
    .locals 5

    .line 772
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is COLR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    const-string v2, "Could not get UT handle for updateCOLR."

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v4, 0x1

    .line 780
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 779
    invoke-interface {v1, v4, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    goto :goto_3

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 787
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 786
    invoke-interface {v1, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 788
    :catch_1
    move-exception v1

    .line 789
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    goto :goto_3

    .line 791
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 793
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v2, 0x7

    .line 794
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 795
    :catch_2
    move-exception v1

    .line 796
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for queryCOLR."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2
    nop

    .line 801
    :goto_3
    return-void

    .line 799
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist handleCW()V
    .locals 10

    .line 562
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CW"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v1

    .line 566
    .local v1, "serviceClass":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    const-string v3, "Invalid or Unsupported MMI Code"

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 568
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 574
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    .line 570
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 569
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_4

    .line 578
    :cond_3
    const/4 v2, 0x0

    .line 579
    .local v2, "tbcwMode":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    .line 580
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v6

    const-string v7, "persist.vendor.radio.terminal-based.cw"

    const-string v8, "disabled_tbcw"

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 608
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    .line 609
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    const-string v6, "getCallWaiting() by Ut interface."

    if-eqz v3, :cond_5

    .line 610
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 612
    :cond_5
    if-ne v2, v4, :cond_6

    .line 613
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 614
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 613
    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_4

    .line 617
    :cond_6
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 618
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 617
    invoke-static {v3, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "tbcwStatus":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SC_WAIT isInterrogate() tbcwStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v7, "enabled_tbcw_on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    .line 623
    new-array v0, v8, [I

    .line 624
    .local v0, "cwInfos":[I
    const/4 v6, 0x1

    aput v6, v0, v5

    .line 625
    aput v6, v0, v6

    .line 627
    invoke-virtual {p0, v4, v9}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 628
    .local v4, "msg":Landroid/os/Message;
    invoke-static {v4, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 629
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sendMessage(Landroid/os/Message;)Z

    .line 630
    .end local v0    # "cwInfos":[I
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_1

    :cond_7
    const-string v7, "enabled_tbcw_off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 631
    new-array v0, v8, [I

    .line 632
    .restart local v0    # "cwInfos":[I
    aput v5, v0, v5

    .line 634
    invoke-virtual {p0, v4, v9}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 635
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-static {v4, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 636
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sendMessage(Landroid/os/Message;)Z

    .line 637
    .end local v0    # "cwInfos":[I
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 638
    :cond_8
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 641
    .end local v3    # "tbcwStatus":Ljava/lang/String;
    :goto_1
    goto/16 :goto_4

    .line 643
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    const-string v6, "setCallWaiting() by Ut interface."

    if-eqz v3, :cond_b

    .line 583
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 585
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 584
    invoke-virtual {v0, v3, v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_4

    .line 586
    :cond_b
    if-ne v2, v4, :cond_c

    .line 587
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 588
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 589
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    const/4 v6, -0x1

    .line 588
    invoke-virtual {p0, v5, v4, v6, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 587
    invoke-interface {v0, v3, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_4

    .line 592
    :cond_c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 593
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 592
    invoke-static {v3, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    .restart local v3    # "tbcwStatus":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTerminal-based CallWaiting(): tbcwStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enable = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 599
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 600
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 599
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_3

    .line 602
    :cond_d
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    .line 604
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 603
    invoke-virtual {v0, v4, v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    .line 606
    .end local v3    # "tbcwStatus":Ljava/lang/String;
    :goto_3
    nop

    .line 646
    .end local v2    # "tbcwMode":I
    :goto_4
    return-void
.end method

.method blacklist handleCallBarring()V
    .locals 9

    .line 540
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CB"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 546
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "facility":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .line 549
    .local v8, "serviceClass":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, 0x7

    .line 551
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 550
    invoke-virtual {v2, v1, v0, v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_1

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid or Unsupported MMI Code"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    const/4 v3, 0x0

    .line 554
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 553
    move-object v3, v1

    move-object v5, v0

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 558
    :goto_1
    return-void
.end method

.method blacklist handleCallBarringACR()V
    .locals 11

    .line 821
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CB (ACR)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, "callAction":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 824
    .local v9, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v10

    .line 828
    .local v10, "serviceClass":I
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0xa

    .line 831
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 830
    invoke-interface {v2, v3, v4}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    goto :goto_1

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    const/4 v1, 0x1

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    const/4 v1, 0x0

    .line 838
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkImsUt;

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 842
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/4 v7, 0x0

    .line 838
    move-object v3, v9

    move v5, v1

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/ims/MtkImsUt;->updateCallBarring(Ljava/lang/String;IILandroid/os/Message;[Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_1
    goto :goto_2

    .line 846
    :catch_0
    move-exception v2

    .line 847
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "Could not get UT handle for ICBa."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method blacklist handleCallBarringSpecificMT()V
    .locals 4

    .line 805
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CB (specifc MT)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 809
    const/16 v2, 0xa

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 808
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    goto :goto_1

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for ICB."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method blacklist handleCallForward()V
    .locals 17

    .line 467
    move-object/from16 v0, p0

    const-string v1, "MtkImsPhoneMmiCode"

    const-string v2, "processCode: is CF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 470
    .local v2, "dialingNumber":Ljava/lang/String;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v10

    .line 471
    .local v10, "reason":I
    iget-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    .line 472
    .local v3, "serviceClass":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v11

    .line 476
    .local v11, "time":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/internal/telephony/IOplusPhone;

    .line 477
    .local v12, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v12, v3}, Lcom/android/internal/telephony/IOplusPhone;->specifyServiceClassForOperator(I)I

    move-result v13

    .line 480
    .end local v3    # "serviceClass":I
    .local v13, "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 481
    if-eqz v13, :cond_0

    .line 482
    iget-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setServiceClass(I)V

    .line 486
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 487
    invoke-virtual {v0, v4, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 486
    invoke-virtual {v1, v10, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_5

    .line 491
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 496
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    const/4 v3, 0x1

    .line 498
    .local v3, "cfAction":I
    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v14, v3

    goto :goto_0

    .line 500
    .end local v3    # "cfAction":I
    :cond_2
    const/4 v3, 0x3

    .line 501
    .restart local v3    # "cfAction":I
    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v14, v3

    goto :goto_0

    .line 503
    .end local v3    # "cfAction":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 504
    const/4 v3, 0x0

    move v14, v3

    .restart local v3    # "cfAction":I
    goto :goto_0

    .line 505
    .end local v3    # "cfAction":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 506
    const/4 v3, 0x3

    move v14, v3

    .restart local v3    # "cfAction":I
    goto :goto_0

    .line 507
    .end local v3    # "cfAction":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 508
    const/4 v3, 0x4

    move v14, v3

    .line 515
    .local v14, "cfAction":I
    :goto_0
    const/4 v3, 0x4

    if-eqz v10, :cond_6

    if-ne v10, v3, :cond_7

    :cond_6
    and-int/lit8 v6, v13, 0x1

    if-nez v6, :cond_8

    if-nez v13, :cond_7

    goto :goto_1

    .line 517
    :cond_7
    move v6, v5

    goto :goto_2

    :cond_8
    :goto_1
    move v6, v4

    :goto_2
    move v15, v6

    .line 520
    .local v15, "isSettingUnconditional":I
    if-eq v14, v4, :cond_a

    const/4 v6, 0x3

    if-ne v14, v6, :cond_9

    goto :goto_3

    .line 521
    :cond_9
    move v4, v5

    goto :goto_4

    :cond_a
    :goto_3
    nop

    :goto_4
    move v9, v4

    .line 523
    .local v9, "isEnableDesired":I
    const-string v4, "is CF setCallForward"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpReregisterForCF()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 526
    const-string v4, "Set ims dereg to ON."

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v1, "vendor.gsm.radio.ss.imsdereg"

    const-string v4, "1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_b
    iget-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 531
    invoke-virtual {v0, v3, v15, v9, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 530
    move-object v3, v1

    move v4, v14

    move v5, v10

    move-object v6, v2

    move v7, v13

    move v8, v11

    move v1, v9

    .end local v9    # "isEnableDesired":I
    .local v1, "isEnableDesired":I
    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 536
    .end local v1    # "isEnableDesired":I
    .end local v14    # "cfAction":I
    .end local v15    # "isSettingUnconditional":I
    :goto_5
    return-void

    .line 510
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "invalid action"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 857
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->triggerMmiCodeCsfb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    return-void

    .line 861
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    .line 956
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 881
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 888
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_e

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_e

    .line 889
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 890
    .local v4, "cffEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v5

    const-string v6, "MtkImsPhoneMmiCode"

    if-eqz v5, :cond_b

    .line 891
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 892
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 893
    .local v5, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v5, :cond_8

    array-length v7, v5

    if-nez v7, :cond_3

    goto/16 :goto_3

    .line 896
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_9

    .line 897
    aget-object v8, v5, v7

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_5

    .line 899
    aget-object v2, v5, v7

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v2, v3, :cond_4

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set CF_ENABLE, serviceClass: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v7

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v2, 0x1

    move v4, v2

    .end local v4    # "cffEnabled":Z
    .local v2, "cffEnabled":Z
    goto :goto_4

    .line 904
    .end local v2    # "cffEnabled":Z
    .restart local v4    # "cffEnabled":Z
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set CF_DISABLE, serviceClass: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v7

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v2, 0x0

    .line 908
    .end local v4    # "cffEnabled":Z
    .restart local v2    # "cffEnabled":Z
    move v4, v2

    goto :goto_4

    .line 912
    .end local v2    # "cffEnabled":Z
    .restart local v4    # "cffEnabled":Z
    :cond_5
    aget-object v8, v5, v7

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_7

    .line 913
    iget-object v8, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IOplusPhone;

    .line 914
    .local v8, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    aget-object v9, v5, v7

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v9, v3, :cond_6

    move v9, v3

    goto :goto_2

    :cond_6
    move v9, v2

    :goto_2
    invoke-interface {v8, v9}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 896
    .end local v8    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 894
    .end local v7    # "i":I
    :cond_8
    :goto_3
    const-string v2, "cfInfo is null or length is 0."

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v5    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_9
    :goto_4
    goto :goto_5

    .line 920
    :cond_a
    const-string v2, "ar.result is null."

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_b
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_CFF_COMPLETE: cffEnabled:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDialingNumber="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mIccRecords="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_e

    .line 930
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_CFF_COMPLETE: mSib:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 933
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 934
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d

    .line 935
    :cond_c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    sget-object v5, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOplusPhone;

    .line 936
    .local v2, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v2    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_d
    goto :goto_6

    .line 938
    :catch_0
    move-exception v2

    .line 939
    .local v2, "exc":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid service class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :goto_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 946
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->saveTimeSlot([J)V

    .line 951
    .end local v4    # "cffEnabled":Z
    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 952
    goto :goto_7

    .line 863
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 865
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v4

    if-nez v4, :cond_11

    .line 866
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "43"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 867
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    .line 869
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_11

    .line 870
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_10

    move v2, v3

    .line 871
    .local v2, "enable":Z
    :cond_10
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 877
    .end local v2    # "enable":Z
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 878
    nop

    .line 959
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_7
    return-void
.end method

.method public blacklist isSupportedOverImsPhone()Z
    .locals 6

    .line 317
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "300"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 321
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 322
    const-string v3, "43"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 325
    const-string v5, "77"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 326
    const-string v5, "76"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 327
    const-string v5, "156"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 328
    const-string v5, "157"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 363
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 365
    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 367
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_b

    return v1

    .line 369
    :cond_b
    return v2

    .line 366
    :cond_c
    :goto_0
    return v2

    .line 329
    :cond_d
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const-string v3, "isSupportedOverImsPhone(), return true!"

    const-string v4, "MtkImsPhoneMmiCode"

    if-eqz v0, :cond_10

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "serviceClass":I
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_f

    and-int/lit16 v5, v0, 0x200

    if-nez v5, :cond_f

    if-nez v0, :cond_e

    goto :goto_2

    .line 339
    :cond_e
    return v2

    .line 335
    :cond_f
    :goto_2
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return v1

    .line 340
    .end local v0    # "serviceClass":I
    :catch_0
    move-exception v0

    .line 341
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid service class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    goto :goto_4

    .line 344
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 345
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 346
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 348
    :cond_11
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "serviceClass":I
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_13

    and-int/lit16 v5, v0, 0x200

    if-nez v5, :cond_13

    if-nez v0, :cond_12

    goto :goto_3

    .line 359
    .end local v0    # "serviceClass":I
    :cond_12
    goto :goto_4

    .line 353
    .restart local v0    # "serviceClass":I
    :cond_13
    :goto_3
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    return v1

    .line 357
    .end local v0    # "serviceClass":I
    :catch_1
    move-exception v0

    .line 358
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exc.toString() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :cond_14
    :goto_4
    return v2
.end method

.method protected blacklist makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .line 1126
    const-string v0, "{0}"

    const-string v1, "{1}"

    const-string v2, "{2}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "sources":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 1133
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

    .line 1136
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v5, :cond_2

    .line 1137
    if-eqz v2, :cond_1

    .line 1138
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1141
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1144
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_2
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1145
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1151
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_3
    if-eqz v2, :cond_4

    .line 1152
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1155
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1165
    .restart local v6    # "template":Ljava/lang/CharSequence;
    :goto_1
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v4

    .line 1166
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1167
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 1169
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v3, :cond_6

    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v3, p2

    if-ne v3, v5, :cond_6

    .line 1172
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v5, :cond_5

    move v4, v5

    :cond_5
    move v3, v4

    .line 1173
    .local v3, "cffEnabled":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_6

    .line 1174
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1178
    .end local v3    # "cffEnabled":Z
    :cond_6
    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method protected blacklist onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 998
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1001
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    .line 1002
    return-void

    .line 1006
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1008
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_3

    .line 1023
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1031
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    .line 1032
    .local v4, "serviceClassMask":I
    :goto_0
    const/16 v5, 0x200

    if-gt v4, v5, :cond_5

    .line 1034
    const/16 v5, 0x100

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 1036
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "s":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 1037
    aget-object v7, v2, v5

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 1038
    aget-object v7, v2, v5

    invoke-virtual {p0, v7, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1040
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1036
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1033
    .end local v5    # "i":I
    .end local v6    # "s":I
    :cond_4
    :goto_2
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1044
    .end local v4    # "serviceClassMask":I
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1010
    .end local v3    # "tb":Landroid/text/SpannableStringBuilder;
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104076e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_7

    .line 1014
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    sget-object v3, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IOplusPhone;

    .line 1018
    .local v1, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 1047
    .end local v1    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_7
    :goto_4
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1050
    .end local v2    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCfComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 1053
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1055
    return-void
.end method

.method protected blacklist onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1062
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1065
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const-string v1, "MtkImsPhoneMmiCode"

    const-string v2, "onSuppSvcQueryComplete: Received Call Barring Response."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1070
    .local v2, "cbInfos":[I
    const/4 v3, 0x0

    aget v4, v2, v3

    if-nez v4, :cond_0

    .line 1071
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104076e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1074
    :cond_0
    aget v3, v2, v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1077
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1078
    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuppSvcQueryComplete mmi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 1081
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1082
    return-void

    .line 1084
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "cbInfos":[I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    .line 1085
    return-void
.end method

.method public blacklist processCode()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 377
    const-string v0, "MtkImsPhoneMmiCode"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 378
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    const-string v1, "processCode(): getCsFallbackStatus(): CS Fallback!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->removeMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 382
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cs_fallback"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    throw v1

    .line 387
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyInternalManager;->getInstance()Lcom/android/internal/telephony/OplusTelephonyInternalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/OplusTelephonyInternalManager;->getOplusCallManager()Lcom/android/internal/telephony/IOplusCallManager;

    move-result-object v2

    .line 390
    .local v2, "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processTime:J

    .line 392
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "processCode: isShortCode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    move-object v4, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IOplusCallManager;->handleInCallMmiForSpecificOp(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;Lcom/android/internal/telephony/MmiCode$State;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallForward()V

    goto/16 :goto_1

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 408
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallBarring()V

    goto/16 :goto_1

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCLIR()V

    goto/16 :goto_1

    .line 411
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCLIP()V

    goto/16 :goto_1

    .line 413
    :cond_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "76"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCOLP()V

    goto :goto_1

    .line 415
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "77"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCOLR()V

    goto :goto_1

    .line 417
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 418
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallBarringSpecificMT()V

    goto :goto_1

    .line 419
    :cond_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "157"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 420
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallBarringACR()V

    goto :goto_1

    .line 421
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "43"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCW()V

    goto :goto_1

    .line 423
    :cond_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 439
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v5, p0

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/IOplusCallManager;->handleInCallMmiForSpecificOp(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;Lcom/android/internal/telephony/MmiCode$State;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)V

    .line 451
    .end local v2    # "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    :goto_1
    goto :goto_2

    .line 442
    .restart local v2    # "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Invalid or Unsupported MMI Code"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v2    # "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :catch_0
    move-exception v1

    .line 445
    .local v1, "exc":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 446
    const-string v2, "procesCode: mState = FAILED"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040519

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 449
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 452
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method protected blacklist serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceClassToCFString, serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    .line 1117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x8050044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 4

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MtkImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    const-string v2, "MtkImsPhoneMmiCode"

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " poundString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dialingNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 1429
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    :cond_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pwd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_8

    const-string v1, " hasReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
