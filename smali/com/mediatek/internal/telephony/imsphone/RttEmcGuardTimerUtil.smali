.class public Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
.super Ljava/lang/Object;
.source "RttEmcGuardTimerUtil.java"


# static fields
.field private static final blacklist INTENT_RTT_EMC_GUARD_TIMER_180:Ljava/lang/String; = "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

.field private static final blacklist TAG:Ljava/lang/String; = "RttEmcGuardTimerUtil"


# instance fields
.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDuringRttGuardDuration:Z

.field private blacklist mIsRttEmcGuardTimerSupported:Z

.field private blacklist mRttEmcIntent:Landroid/app/PendingIntent;

.field private blacklist mRttReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 59
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 76
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;-><init>(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic blacklist access$002(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 50
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
    .param p1, "x1"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    return p1
.end method

.method private blacklist registerRttReceiver()V
    .locals 3

    .line 96
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "registerRttReceiver"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method private blacklist unregisterRttReceiver()V
    .locals 2

    .line 103
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "unregisterRttReceiver"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method


# virtual methods
.method public blacklist checkIncomingCallInRttEmcGuardTime(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIncomingCallInRttEmcGuardTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string v0, "conn == null, checkIncomingCallInRttEmcGuardTime return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->setIncomingCallDuringRttEmcGuard(Z)V

    goto :goto_0

    .line 132
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->setIncomingCallDuringRttEmcGuard(Z)V

    .line 134
    :goto_0
    return-void
.end method

.method public blacklist disposeRttEmcGuardTimer()V
    .locals 2

    .line 91
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "disposeRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->unregisterRttReceiver()V

    .line 93
    return-void
.end method

.method public blacklist initRttEmcGuardTimer()V
    .locals 2

    .line 66
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "initRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "initRttEmcGuardTimer mContext == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 71
    :cond_0
    nop

    .line 72
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 73
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->registerRttReceiver()V

    .line 74
    return-void
.end method

.method public blacklist setRttEmcGuardTimerSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 165
    return-void
.end method

.method public blacklist startRttEmcGuardTimer()V
    .locals 8

    .line 137
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    const-string v1, "RttEmcGuardTimerUtil"

    if-nez v0, :cond_0

    .line 138
    const-string v0, "startRttEmcGuardTimer: Current carrier doesn\'t support RTT EMC guard timer, just return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 144
    const-string v0, "startRttEmcGuardTimer mContext == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 153
    const v2, 0x2bf20

    .line 155
    .local v2, "delay":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRttEmcGuardTimer: delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 158
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 158
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 161
    return-void
.end method

.method public blacklist stopRttEmcGuardTimer()V
    .locals 2

    .line 109
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "stopRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "stopRttEmcGuardTimer, cancel timer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 118
    :cond_0
    return-void
.end method
