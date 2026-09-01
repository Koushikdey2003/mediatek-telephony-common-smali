.class public Lcom/mediatek/internal/telephony/MtkUiccSmsController;
.super Lcom/mediatek/internal/telephony/IMtkSms$Stub;
.source "MtkUiccSmsController.java"


# static fields
.field static final blacklist LOG_TAG:Ljava/lang/String; = "Mtk_RIL_UiccSmsController"


# direct methods
.method protected constructor blacklist <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;-><init>()V

    .line 83
    const-string v0, "imtksms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 84
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    :cond_0
    return-void
.end method

.method private blacklist getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .locals 1
    .param p1, "subId"    # I

    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    return-object v0
.end method

.method private blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # I

    .line 89
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 90
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method private blacklist sendDataInternal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "originalPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p10, "checkPermission"    # Z

    .line 259
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v10

    .line 260
    .local v10, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v10, :cond_0

    .line 261
    move-object v0, v10

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    move v1, p1

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataInternal iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void
.end method

.method private blacklist sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "errorCode"    # I

    .line 97
    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 103
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist sendErrorInPendingIntents(Ljava/util/List;I)V
    .locals 2
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 106
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 107
    .local v1, "intent":Landroid/app/PendingIntent;
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    .line 108
    .end local v1    # "intent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist activateCellBroadcastSmsForSubscriber(IZ)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "activate"    # Z

    .line 653
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 654
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->activateCellBroadcastSms(Z)Z

    move-result v1

    return v1

    .line 657
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateCellBroadcastSmsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 11
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 170
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->isSimProtectSms(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 175
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v10

    .line 176
    .local v10, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v10, :cond_1

    .line 177
    move-object v1, v10

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    move v2, p1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mtk_RIL_UiccSmsController"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return v0
.end method

.method public blacklist getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->isSimProtectSms(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    return-object v1

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->isSmsReadyForSubscriber(I)Z

    move-result v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    if-nez v0, :cond_1

    .line 137
    const-string v0, "getAllMessagesFromIccEf SMS not ready"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v1

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 143
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getAllMessagesFromIccEfByMode(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 146
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllMessagesFromIccEfByModeForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v1
.end method

.method public blacklist getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .line 752
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 753
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getCellBroadcastLangs()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 756
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellBroadcastLangsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .line 715
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 716
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getCellBroadcastRanges()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 719
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellBroadcastRangesForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 610
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->isSimProtectSms(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 611
    return-object v1

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 615
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getMessageFromIccEf(Ljava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v1

    return-object v1

    .line 618
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageFromIccEfForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mtk_RIL_UiccSmsController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-object v1
.end method

.method public blacklist getScAddressForSubscriber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .line 771
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 772
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getScAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 775
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScAddress iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "subId"    # I

    .line 790
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 791
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getScAddressWithErrorCode()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 794
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScAddressWithErrorCode iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 564
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 565
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsParameters(Ljava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v1

    return-object v1

    .line 568
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsParametersForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 317
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v1

    return-object v1

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsMemoryStatus iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B

    .line 465
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->isSimProtectSms(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x0

    return-object v0

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 471
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    const/4 v1, 0x0

    .line 472
    .local v1, "ret":Lmediatek/telephony/MtkSimSmsInsertStatus;
    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->insertRawMessageToIccCard(Ljava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v1

    goto :goto_0

    .line 475
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertRawMessageToIccCardForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mtk_RIL_UiccSmsController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-object v1
.end method

.method public blacklist insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 11
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 433
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->isSimProtectSms(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 434
    return-object v10

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 438
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_1

    .line 439
    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move v2, p1

    goto :goto_0

    .line 442
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextWithEncodingTypeForSubscriber iccSmsIntMgr is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mtk_RIL_UiccSmsController"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-object v10
.end method

.method public blacklist isSmsReadyForSubscriber(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 277
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 278
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isSmsReady()Z

    move-result v1

    return v1

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsReady iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist queryCellBroadcastSmsActivationForSubscriber(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 633
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 634
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->queryCellBroadcastSmsActivation()Z

    move-result v1

    return v1

    .line 637
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellBroadcastSmsConfigForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist removeCellBroadcastMsgForSubscriber(III)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "channelId"    # I
    .param p3, "serialId"    # I

    .line 675
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 676
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->removeCellBroadcastMsg(II)Z

    move-result v1

    return v1

    .line 679
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCellBroadcastMsg iccSmsIntMgr is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist sendData(ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "subId"    # I
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 252
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendDataInternal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 254
    return-void
.end method

.method public blacklist sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "originalPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 218
    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendDataInternal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 220
    return-void
.end method

.method public blacklist sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 402
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 403
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_0

    .line 404
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithEncodingTypeForSubscriber iccSmsIntMgr is null for subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    .line 412
    :goto_0
    return-void
.end method

.method public blacklist sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 542
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 543
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_0

    .line 544
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithExtraParamsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    .line 552
    :goto_0
    return-void
.end method

.method public blacklist sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z

    .line 359
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 360
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_0

    .line 361
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithEncodingTypeForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    .line 369
    :goto_0
    return-void
.end method

.method public blacklist sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z

    .line 504
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 505
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_0

    .line 506
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithExtraParamsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    .line 514
    :goto_0
    return-void
.end method

.method public blacklist setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "lang"    # Ljava/lang/String;

    .line 734
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 735
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setCellBroadcastLangs(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellBroadcastLangsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setEtwsConfigForSubscriber(II)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 696
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 697
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setEtwsConfig(I)Z

    move-result v1

    return v1

    .line 700
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEtwsConfigForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setScAddressForSubscriber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 810
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 811
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setScAddress(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 814
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScAddress iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSmsMemoryStatusForSubscriber(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "status"    # Z

    .line 297
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 298
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setSmsMemoryStatus(Z)V

    goto :goto_0

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsMemoryStatus iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void
.end method

.method public blacklist setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "params"    # Lmediatek/telephony/MtkSmsParameters;

    .line 586
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 587
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setSmsParameters(Ljava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v1

    return v1

    .line 590
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsParametersForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    return v1
.end method
