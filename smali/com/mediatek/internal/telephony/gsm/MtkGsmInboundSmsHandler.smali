.class public Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
.super Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.source "MtkGsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkWaitingState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkStartupState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_SMS_EINFO_EXTENSIONS:I = 0x2009

.field private static final blacklist RESULT_SMS_ACCEPT_BY_PPL:I = 0x1

.field private static final blacklist RESULT_SMS_REJECT_BY_PPL:I = 0x0

.field private static final blacklist TN_VALIDATION_FAILED:I = 0x2

.field private static final blacklist TN_VALIDATION_NOTHING:I = 0x0

.field private static final blacklist TN_VALIDATION_PASSED:I = 0x1


# instance fields
.field private blacklist mPAssertedIdentity:I

.field private blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    .line 124
    const-string v0, "MtkGsmInboundSmsHandler"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    .line 144
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 145
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkStartupState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkStartupState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 146
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 147
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 148
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkWaitingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkWaitingState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkGsmInboundSmsHandler-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 159
    const-string v0, "created InboundSmsHandler from MtkGsmInboundSmsHandler"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 161
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 162
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2009

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmsInfoExt(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 123
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->handleSmsEInfoExtensions(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist checkPplPermission([[BLjava/lang/String;)I
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;

    .line 339
    const/4 v0, 0x1

    .line 340
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3gpp2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->phonePrivacyLockCheck([[BLjava/lang/String;Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const/4 v0, 0x0

    .line 347
    :cond_2
    return v0
.end method

.method private blacklist handleAutoRegMessage([B)V
    .locals 3
    .param p1, "pdu"    # [B

    .line 286
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->getDeviceRegisterController()Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 287
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->handleAutoRegMessage(ILjava/lang/String;[B)V

    .line 288
    return-void
.end method

.method private blacklist handleSmsEInfoExtensions(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 432
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception processing handleSmsEInfoExtensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 434
    return-void

    .line 437
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, "info":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmsEInfoExtensions, info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 441
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 443
    :cond_1
    const-string v1, "verstat=TN-Validation-Passed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    goto :goto_0

    .line 445
    :cond_2
    const-string v1, "verstat=TN-Validation-Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v0    # "info":Ljava/lang/String;
    :cond_3
    :goto_0
    goto :goto_2

    .line 442
    .restart local v0    # "info":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 448
    .end local v0    # "info":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "Exception dispatching message"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method public static blacklist makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 170
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    .line 172
    .local v0, "handler":Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->start()V

    .line 173
    return-object v0
.end method


# virtual methods
.method protected blacklist addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .line 292
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    .line 293
    .local v0, "t":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->setSubId(I)V

    .line 294
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method protected blacklist deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .line 324
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 325
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 328
    const-string v1, "No rows need be deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 329
    return-void

    .line 331
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 332
    return-void
.end method

.method public blacklist dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "subId"    # I

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "rTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIntent with caller_verification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 315
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    const-string v2, "caller_verification"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    .line 318
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;I)V

    .line 319
    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 2
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 281
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 282
    .local v0, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    return v1
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    return-void
.end method

.method protected blacklist onCheckIfOverrideStates()Z
    .locals 1

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist onCheckIfStopProcessMessagePart([[BLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 4
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->checkPplPermission([[BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 360
    const-string v0, "The message was blocked by Ppl! don\'t prompt to user"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 363
    return v1

    .line 365
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreateSmsMessage([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 370
    const-string v0, "3gpp"

    invoke-static {p1, v0}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist onDispatchWapPdu([[B[BLandroid/content/BroadcastReceiver;Ljava/lang/String;IJ)I
    .locals 4
    .param p1, "smsPdus"    # [[B
    .param p2, "pdu"    # [B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "subId"    # I
    .param p6, "messageId"    # J

    .line 376
    invoke-static {}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->isWapPushSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const-string v0, "dispatch wap push pdu with addr & sc addr"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 380
    const-string v2, "3gpp"

    invoke-static {v1, v2}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v1

    .line 382
    .local v1, "sms":Lmediatek/telephony/MtkSmsMessage;
    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {v1}, Lmediatek/telephony/MtkSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Lmediatek/telephony/MtkSmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "sca":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 387
    const-string v2, ""

    .line 389
    :cond_0
    const-string v3, "service_center"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v2    # "sca":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

    invoke-virtual {v2, p2, p3, p0, v0}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I

    move-result v2

    return v2

    .line 394
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "sms":Lmediatek/telephony/MtkSmsMessage;
    :cond_2
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->onDispatchWapPdu([[B[BLandroid/content/BroadcastReceiver;Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method protected blacklist onModifyQueryWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "whereArgs"    # [Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "subId":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    return-object v1
.end method

.method protected blacklist onQuitting()V
    .locals 2

    .line 302
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->onQuitting()V

    .line 303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 304
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForSmsInfoExt(Landroid/os/Handler;)V

    .line 305
    return-void
.end method
