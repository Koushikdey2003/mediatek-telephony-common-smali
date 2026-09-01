.class public Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.source "MtkCdmaInboundSmsHandler.java"


# static fields
.field private static final blacklist ENG:Z

.field private static final blacklist RESULT_SMS_ACCEPT_BY_PPL:I = 0x1

.field private static final blacklist RESULT_SMS_REJECT_BY_PPL:I = 0x0

.field private static final blacklist TELESERVICE_REG_SMS_CT:I = 0xfded

.field private static final blacklist VDBG:Z = false

.field private static final blacklist WAKE_LOCK_TIMEOUT:I = 0x1f4


# instance fields
.field private blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 107
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->ENG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 105
    const-string v0, "MtkCdmaInboundSmsHandler"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkCdmaInboundSmsHandler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private blacklist checkPplPermission([[BLjava/lang/String;)I
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x1

    .line 205
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3gpp2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->phonePrivacyLockCheck([[BLjava/lang/String;Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/4 v0, 0x0

    .line 212
    :cond_2
    return v0
.end method

.method private blacklist handleAutoRegMessage([B)V
    .locals 6
    .param p1, "pdu"    # [B

    .line 173
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 176
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send cdma reg message for subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.sms.CDMA_REG_SMS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "pdu"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 179
    const-string v2, "format"

    const-string v3, "3gpp2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v2, "subscription"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "power"

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 184
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v3, "MtkCdmaInboundSmsHandlerOem"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 186
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 187
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 188
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v0    # "subId":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 195
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 196
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->getDeviceRegisterController()Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->handleAutoRegMessage([B)V

    .line 197
    return-void
.end method


# virtual methods
.method protected blacklist addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    .line 137
    .local v0, "t":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->setSubId(I)V

    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method protected blacklist deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .line 144
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 145
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 148
    const-string v1, "No rows need be deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 149
    return-void

    .line 151
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 152
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

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "rTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;I)V

    .line 132
    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 4
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 157
    .local v0, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->newMtkSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    move-result-object v0

    .line 158
    invoke-super {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    .line 159
    .local v1, "ret":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    .line 161
    .local v2, "teleService":I
    const v3, 0xfded

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->handleAutoRegMessage([B)V

    .line 163
    const/4 v3, 0x1

    return v3

    .line 166
    .end local v2    # "teleService":I
    :cond_0
    return v1
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    return-void
.end method

.method protected blacklist onCheckIfStopProcessMessagePart([[BLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 4
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->checkPplPermission([[BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 234
    const-string v0, "The message was blocked by Ppl! don\'t prompt to user"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 237
    return v1

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onModifyQueryWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "whereArgs"    # [Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
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
