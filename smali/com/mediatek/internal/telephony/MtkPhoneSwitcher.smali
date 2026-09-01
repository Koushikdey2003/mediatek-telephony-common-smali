.class public Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
.super Lcom/android/internal/telephony/PhoneSwitcher;
.source "MtkPhoneSwitcher.java"


# static fields
.field private static final blacklist EVENT_CALL_EVALUATE:I = 0x3e9

.field private static final blacklist EVENT_SIMLOCK_INFO_CHANGED:I = 0x3e8

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkPhoneSwitcher"

.field static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_ECC_FOR_VALID_NO_SERVICE:I = 0x9

.field private static final blacklist TEMP_DATA_DELAY:Ljava/lang/String; = "temp_data_delay"

.field private static final blacklist VDBG:Z = true


# instance fields
.field private blacklist mIsInCall:Z

.field private blacklist mPhoneStateIsSet:[Z

.field private blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mSimLockChangedReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mTempDataSwitching:Z


# direct methods
.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "maxActivePhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    .line 84
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    .line 393
    new-instance v1, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;-><init>(Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSimLockChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStateIsSet:[Z

    .line 107
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mResolver:Landroid/content/ContentResolver;

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->updateHalCommandToUse()V

    .line 110
    const-string v1, "updateHalCommandToUse done"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStateIsSet:[Z

    aput-boolean v0, v2, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimLockPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 119
    :cond_1
    return-void
.end method

.method public static blacklist acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 2
    .param p0, "request"    # Landroid/net/NetworkRequest;
    .param p1, "score"    # I

    .line 148
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[acceptRequest] Invalid APN ID request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    .locals 1

    .line 164
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    return-object v0
.end method

.method private blacklist getTemporaryDataDelay()I
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "temp_data_delay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 308
    .local v0, "mode":I
    return v0
.end method

.method private blacklist isEimsAllowed(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 333
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v2, :cond_1

    .line 337
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "isAllowEims, sim is not null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 339
    return v1

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_2
    const-string v0, "isAllowEims, NetworkRequest not include EIMS capability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 345
    return v1
.end method

.method private blacklist isVoLteCalling(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 312
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    return v0

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoLteCalling: mPhones["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;

    .line 478
    const-string v0, "MtkPhoneSwitcher"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;

    .line 482
    const-string v0, "MtkPhoneSwitcher"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method private static blacklist logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;

    .line 486
    const-string v0, "MtkPhoneSwitcher"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public static blacklist mtkMake(ILandroid/content/Context;Landroid/os/Looper;)Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    .locals 1
    .param p0, "maxDataAttachModemCount"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 94
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "MtkPhoneSwitcher mtkMake"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 97
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mtkInvalidateActiveDataSubIdCaches()V

    .line 100
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    return-object v0
.end method


# virtual methods
.method protected blacklist activate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 327
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->activate(I)V

    .line 328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStateIsSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 329
    return-void
.end method

.method protected blacklist deactivate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 321
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->deactivate(I)V

    .line 322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStateIsSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 323
    return-void
.end method

.method public blacklist getPsAllowedByPhoneId(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 446
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result v0

    .line 447
    .local v0, "cap":I
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v1

    .line 448
    .local v1, "policy":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 472
    return v2

    .line 468
    :pswitch_0
    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getSimLockMode()Z
    .locals 3

    .line 428
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    .line 429
    .local v0, "policy":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist getTempDataSwitchState()Z
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 419
    .local v0, "subId":I
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 420
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 419
    :goto_0
    return v1
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 270
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 265
    :cond_0
    const-string v0, "EVENT_CALL_EVALUATE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    const-string v1, "CALL_EVALUATE"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 267
    goto :goto_1

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "simLockChange"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_2

    .line 258
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result v2

    .line 259
    .local v2, "cap":I
    const-string v3, " phone["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],Capability="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .end local v2    # "cap":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 262
    nop

    .line 273
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void
.end method

.method protected blacklist isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 277
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 278
    return v0

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->isVoLteCalling(I)Z

    move-result v1

    .line 281
    .local v1, "mIsVolteCalling":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForegroundCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", RingingCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", BackgroundCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", getPhoneId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsVolteCalling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getTemporaryDataDelay()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 291
    const-string v2, "TEMP_DATA_DELAY = 1 , Delay temp data"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_1

    .line 293
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_1

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_1

    .line 295
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v3

    .line 292
    :cond_2
    return v0

    .line 298
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_4

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_4

    .line 300
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_4

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_4

    .line 302
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v3

    .line 298
    :cond_5
    return v0
.end method

.method protected blacklist makeNetworkFilter()Landroid/net/NetworkCapabilities;
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->makeNetworkFilter()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 160
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    return-object v0
.end method

.method public blacklist onRadioCapChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 123
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    const-string v0, "onRadioCapChanged: preferred data"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onRadioCapChanged(I)V

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadioCapChanged: mPhoneStateIsSet["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStateIsSet:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStateIsSet:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    .line 131
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onRadioCapChanged(I)V

    .line 137
    :cond_2
    :goto_1
    return-void
.end method

.method protected blacklist phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .locals 3
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;

    .line 406
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 407
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    if-nez v1, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPsAllowedByPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    const/4 v1, -0x1

    return v1

    .line 414
    :cond_1
    return v0
.end method

.method protected blacklist suggestDefaultActivePhone(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p1, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 362
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    .line 363
    .local v1, "mainCapPhoneId":I
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "newActivePhones mainCapPhoneId="

    if-eqz v2, :cond_1

    .line 364
    const-string v2, "newActivePhones is empty"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPsAllowedByPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrioritizedDcRequests"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logv(Ljava/lang/String;)V

    .line 379
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    const-string v2, "ECC w/o SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 382
    .local v4, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->isEimsAllowed(Landroid/net/NetworkRequest;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v4    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    :cond_2
    goto :goto_0

    .line 389
    :cond_3
    return-void
.end method

.method protected blacklist updateHalCommandToUse()V
    .locals 4

    .line 236
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 237
    const-string v0, "updateHalCommandToUse, preferred mode already, no need update."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 238
    return-void

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->updateHalCommandToUse()V

    .line 241
    const-string v0, "updateHalCommandToUse"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    if-nez v0, :cond_2

    .line 244
    :cond_1
    const-string v0, "updateHalCommandToUse: The HIDL preferred data not exist, use ALLOW_DATA"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSimLockChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    :cond_2
    return-void
.end method

.method protected blacklist updatePreferredDataPhoneId()V
    .locals 7

    .line 171
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getInstance()Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    move-result-object v0

    .line 172
    .local v0, "mSmartDataSwitchAssistant":Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 175
    .local v1, "voicePhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    if-nez v3, :cond_0

    .line 177
    const-string v3, "set mIsInCall to true"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 178
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    .line 179
    const/16 v3, 0x3e9

    const/4 v4, 0x0

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->registerReEvaluateEvent(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 183
    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    if-ne v4, v2, :cond_1

    .line 184
    const-string v4, "set mIsInCall to false"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 185
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    .line 187
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    .line 188
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregisterReEvaluateEvent(Landroid/os/Handler;)V

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    iget v4, v4, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredDataPhoneId: preferred data overridden for emergency. phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    iget v3, v3, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    iget v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    goto :goto_2

    .line 199
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 202
    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->checkIsSwitchAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 211
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    goto :goto_2

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSubIdForDefaultNetworkRequests()I

    move-result v2

    .line 214
    .local v2, "subId":I
    const/4 v4, -0x1

    .line 216
    .local v4, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 217
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v5, v6, :cond_5

    .line 218
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v5

    if-ne v6, v2, :cond_4

    .line 219
    move v4, v5

    .line 220
    goto :goto_1

    .line 217
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    .end local v5    # "i":I
    :cond_5
    :goto_1
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 227
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    .line 230
    .end local v2    # "subId":I
    .end local v4    # "phoneId":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 231
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 230
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->set(I)V

    .line 232
    return-void
.end method
