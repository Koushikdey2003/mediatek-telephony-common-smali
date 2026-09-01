.class public Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
.super Lcom/android/internal/telephony/SmsStorageMonitor;
.source "MtkSmsStorageMonitor.java"


# static fields
.field private static final blacklist EVENT_ME_FULL:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "MtkSmsStorageMonitor"


# instance fields
.field private blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mMtkResultReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPendingIccFullNotify:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 80
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;-><init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 205
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$3;-><init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mMtkResultReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 97
    .local v1, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    .end local v1    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mMtkResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    const-string v2, "sms_default_application"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    .local v2, "defaultSmsAppUri":Landroid/net/Uri;
    new-instance v3, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;

    new-instance v4, Landroid/os/Handler;

    .line 105
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;-><init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 113
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 116
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    .line 69
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    return v0
.end method

.method private blacklist handleMeFull()V
    .locals 4

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 200
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 119
    const-string v0, "MtkSmsStorageMonitor"

    const-string v1, "disposed..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 122
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetOnMeSmsFull(Landroid/os/Handler;)V

    .line 124
    .end local v0    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mMtkResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 127
    invoke-super {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    .line 128
    return-void
.end method

.method public blacklist handleIccFull()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 133
    .local v0, "name":Landroid/content/ComponentName;
    const/4 v2, 0x1

    const-string v3, "MtkSmsStorageMonitor"

    if-nez v0, :cond_0

    .line 134
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 135
    const-string v1, "ComponentName is NULL"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 140
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 142
    const-string v1, "too early, wait for boot complete to send broadcast"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 147
    const-string v1, "handleIccFull"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    .line 149
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleMeFull()V

    .line 182
    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsStorageMonitor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mStorageAvailable:Z

    const/4 v2, 0x2

    .line 175
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 174
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 177
    nop

    .line 188
    :goto_0
    return-void
.end method
