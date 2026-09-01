.class public Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;
.super Lcom/android/internal/telephony/MultiSimSettingController;
.source "MtkMultiSimSettingController.java"


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkMultiSimSettingController"


# instance fields
.field private blacklist mActiveModemCount:I

.field private blacklist mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

.field private blacklist mSimCloseMode:I

.field private blacklist mSimMeLockSupport:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimMeLockSupport:Z

    .line 109
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    .line 110
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .line 114
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->initSimMeLock(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->initSimCloseMode(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist filterOutClosedSim(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p1, "activeSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz p1, :cond_1

    .line 432
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 433
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 435
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 436
    .local v2, "subId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isSimClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is closed, remove from active."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 440
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":I
    :cond_0
    goto :goto_0

    .line 442
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    return-void
.end method

.method private blacklist initSimCloseMode(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 406
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->simSwitchMode()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim close mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    const-string v2, "msim_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;

    invoke-direct {v4, p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Landroid/os/Handler;)V

    .line 409
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 420
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 421
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 422
    .local v0, "cis":[Lcom/android/internal/telephony/CommandsInterface;
    array-length v2, v0

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .line 423
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    if-ge v2, v3, :cond_1

    .line 425
    aget-object v3, v0, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "cis":[Lcom/android/internal/telephony/CommandsInterface;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist initSimMeLock(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    new-instance v1, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimMeLockSupport:Z

    .line 336
    const-string v1, "initSimMeLock done."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 338
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private blacklist isRadioOffBySimManagement(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "result":Z
    :try_start_0
    const-string v1, "phoneEx"

    .line 461
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 462
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_0

    .line 463
    const-string v2, "iTelEx is null!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 464
    const/4 v2, 0x0

    return v2

    .line 466
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isRadioOffBySimManagement(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 469
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 470
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method private blacklist isSimClosed(I)Z
    .locals 4
    .param p1, "subId"    # I

    .line 445
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isRadioOffBySimManagement(I)Z

    move-result v0

    return v0

    .line 447
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 449
    .local v0, "id":I
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    .line 450
    invoke-virtual {v2, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOnOffState(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 451
    return v1

    .line 454
    .end local v0    # "id":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 474
    const-string v0, "MtkMultiSimSettingController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method private blacklist updateDefaultDataForSimMeLock(I)Z
    .locals 11
    .param p1, "subCount"    # I

    .line 344
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimMeLockSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 345
    return v1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 348
    .local v0, "lockCount":I
    const/4 v2, 0x0

    .line 349
    .local v2, "unlockCount":I
    const/4 v3, -0x1

    .line 350
    .local v3, "unlockSubId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 351
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    .line 353
    .local v4, "phoneCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_6

    .line 354
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->isActiveSub(Landroid/content/Context;I)Z

    move-result v7

    const-string v8, "slot "

    if-nez v7, :cond_1

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has no active sub, ignore it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 356
    goto/16 :goto_1

    .line 358
    :cond_1
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2

    .line 359
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    .line 360
    invoke-virtual {v7, v5}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOnOffState(I)I

    move-result v7

    const/16 v10, 0xa

    if-ne v7, v10, :cond_2

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is closed sub(mtk sim on/off), ignore it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 362
    goto :goto_1

    .line 363
    :cond_2
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    if-ne v7, v6, :cond_3

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 364
    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isRadioOffBySimManagement(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is closed sub(mtk radio on/off), ignore it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 366
    goto :goto_1

    .line 369
    :cond_3
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result v7

    .line 370
    .local v7, "status":I
    if-eqz v7, :cond_5

    if-eq v7, v6, :cond_4

    if-eq v7, v9, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim me lock temp sim status:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", wait for next."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 386
    return v6

    .line 378
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 379
    goto :goto_1

    .line 372
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 373
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 374
    nop

    .line 353
    .end local v7    # "status":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 390
    .end local v5    # "i":I
    :cond_6
    if-ne v2, v6, :cond_7

    if-le p1, v2, :cond_7

    .line 391
    const-string v5, "sim me lock set only unlock sim as default data between multi sims."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 392
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 394
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mInitialHandling:Z

    .line 395
    return v6

    .line 396
    :cond_7
    if-ne p1, v0, :cond_8

    .line 397
    const-string v1, "sim me lock block set lock sim as default data."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 398
    return v6

    .line 401
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", unlock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 402
    return v1
.end method


# virtual methods
.method protected blacklist disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .locals 0

    .line 312
    return-void
.end method

.method protected blacklist getSimCombinationWarningParams(I)Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;
    .locals 1
    .param p1, "change"    # I

    .line 297
    new-instance v0, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 299
    .local v0, "params":Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;
    return-object v0
.end method

.method protected blacklist getSimSelectDialogType(IZZZ)I
    .locals 3
    .param p1, "change"    # I
    .param p2, "dataSelected"    # Z
    .param p3, "voiceSelected"    # Z
    .param p4, "smsSelected"    # Z

    .line 283
    nop

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MultiSimSettingController;->getSimSelectDialogType(IZZZ)I

    move-result v0

    .line 285
    .local v0, "dialogType":I
    if-nez v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 292
    :cond_0
    return v0
.end method

.method protected blacklist isCarrierConfigLoadedForAllSub()Z
    .locals 10

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 148
    .local v0, "activeSubIds":[I
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    .line 149
    .local v4, "activeSubId":I
    const/4 v5, 0x0

    .line 150
    .local v5, "isLoaded":Z
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 151
    .local v9, "configLoadedSub":I
    if-ne v9, v4, :cond_0

    .line 152
    const/4 v5, 0x1

    .line 153
    goto :goto_2

    .line 150
    .end local v9    # "configLoadedSub":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 156
    :cond_1
    :goto_2
    if-nez v5, :cond_3

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Carrier config subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not loaded."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 159
    iget v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isSimClosed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    const-string v6, "mtk sim on/off feature used, ignore closed sim carrier loaded event."

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 161
    goto :goto_3

    .line 163
    :cond_2
    return v1

    .line 148
    .end local v4    # "activeSubId":I
    .end local v5    # "isLoaded":Z
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public synthetic blacklist lambda$updateDefaults$0$MtkMultiSimSettingController(I)V
    .locals 1
    .param p1, "newValue"    # I

    .line 263
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    return-void
.end method

.method public synthetic blacklist lambda$updateDefaults$1$MtkMultiSimSettingController(I)V
    .locals 1
    .param p1, "newValue"    # I

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    return-void
.end method

.method public synthetic blacklist lambda$updateDefaults$2$MtkMultiSimSettingController(I)V
    .locals 1
    .param p1, "newValue"    # I

    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    return-void
.end method

.method protected blacklist onMultiSimConfigChanged(I)V
    .locals 5
    .param p1, "activeModems"    # I

    .line 172
    invoke-super {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onMultiSimConfigChanged(I)V

    .line 175
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 177
    .local v0, "cis":[Lcom/android/internal/telephony/CommandsInterface;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 179
    aget-object v2, v0, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .line 184
    .end local v0    # "cis":[Lcom/android/internal/telephony/CommandsInterface;
    :cond_1
    return-void
.end method

.method protected blacklist onUserDataEnabled(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .line 127
    const-string v0, "onUserDataEnabled"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->setUserDataEnabledForGroup(IZ)V

    .line 139
    return-void
.end method

.method protected blacklist updateDefaults()V
    .locals 8

    .line 202
    const-string v0, "updateDefaults"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "activeSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 212
    .local v2, "activeSubCount":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 214
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->filterOutClosedSim(Ljava/util/List;)V

    .line 217
    :cond_3
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 219
    const-string v1, "[updateDefaultValues] No active sub. Setting default to INVALID sub."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 221
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 223
    return-void

    .line 228
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->isAnySimNotReady(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 231
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultDataForSimMeLock(I)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 233
    :cond_6
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updatePrimarySubListAndGetChangeType(Ljava/util/List;)I

    move-result v3

    .line 234
    .local v3, "change":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateDefaultValues] change: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 235
    if-nez v3, :cond_7

    return-void

    .line 245
    :cond_7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 248
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .local v1, "subId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDefaultValues] to only primary sub "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 251
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 252
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 253
    return-void

    .line 256
    .end local v1    # "subId":I
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDefaultValues] records: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 259
    const-string v1, "[updateDefaultValues] Update default data subscription"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "dataSelected":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 262
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    new-instance v6, Lcom/mediatek/internal/telephony/-$$Lambda$MtkMultiSimSettingController$AI6NzmRf7535747tm8-xElzUEJc;

    invoke-direct {v6, p0}, Lcom/mediatek/internal/telephony/-$$Lambda$MtkMultiSimSettingController$AI6NzmRf7535747tm8-xElzUEJc;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    .line 261
    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v1

    .line 266
    const-string v4, "[updateDefaultValues] Update default voice subscription"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 268
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    new-instance v6, Lcom/mediatek/internal/telephony/-$$Lambda$MtkMultiSimSettingController$aydnFdVZUnBZRMShX89XhueYFSA;

    invoke-direct {v6, p0}, Lcom/mediatek/internal/telephony/-$$Lambda$MtkMultiSimSettingController$aydnFdVZUnBZRMShX89XhueYFSA;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    .line 267
    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v4

    .line 272
    .local v4, "voiceSelected":Z
    const-string v5, "[updateDefaultValues] Update default sms subscription"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 273
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 274
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v6

    new-instance v7, Lcom/mediatek/internal/telephony/-$$Lambda$MtkMultiSimSettingController$1kbBkQ2TgfwuOezLd0Y6zb3PWSg;

    invoke-direct {v7, p0}, Lcom/mediatek/internal/telephony/-$$Lambda$MtkMultiSimSettingController$1kbBkQ2TgfwuOezLd0Y6zb3PWSg;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    .line 273
    invoke-virtual {p0, v5, v6, v7}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v5

    .line 277
    .local v5, "smsSelected":Z
    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->sendSubChangeNotificationIfNeeded(IZZZ)V

    .line 278
    return-void
.end method
