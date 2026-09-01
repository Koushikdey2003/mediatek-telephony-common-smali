.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;
    }
.end annotation


# instance fields
.field private blacklist mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

.field private blacklist mHasNotifyEnableEvnetToModem:Z

.field private blacklist mIsAkaOccupyRf:Z

.field private blacklist mIsMdWaitingResponse:[Z

.field private blacklist mIsSwitchRfSuccessful:Z

.field private blacklist mIsWaitingAuthRsp:[Z

.field private blacklist mLastDisableEventTime:J

.field private blacklist mNoResponseTimeOut:[I

.field private blacklist mNoResponseTimer:[Ljava/util/Timer;

.field private blacklist mTryResetModemRunnable:Ljava/lang/Runnable;

.field private blacklist mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

.field private blacklist mVsimRilIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

.field private blacklist mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

.field final synthetic blacklist this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .locals 6
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 1206
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1194
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    .line 1196
    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 1197
    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    .line 1198
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    .line 1199
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1200
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    .line 1201
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    .line 1202
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    .line 1203
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    .line 1204
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    .line 1313
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V

    iput-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    .line 1207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v2

    .line 1208
    .local v2, "simCount":I
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    .line 1209
    new-array v3, v2, [Ljava/util/Timer;

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    .line 1210
    new-array v3, v2, [Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1211
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    .line 1212
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    .line 1213
    new-array v3, v2, [Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    .line 1215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1216
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aput-boolean v1, v4, v3

    .line 1217
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aput-object v0, v4, v3

    .line 1218
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aput-object v0, v4, v3

    .line 1219
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aput-boolean v1, v4, v3

    .line 1220
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    const/16 v5, 0x32c8

    aput v5, v4, v3

    .line 1221
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    aput-object v0, v4, v3

    .line 1215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1223
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1192
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    .param p2, "x2"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1192
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1192
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    return-void
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 1192
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 1192
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    return-object v0
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1192
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # I

    .line 1192
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # I

    .line 1192
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->switchModemCapability(I)Z

    move-result v0

    return v0
.end method

.method private blacklist changeRadioSetting(Z)V
    .locals 11
    .param p1, "turnOn"    # Z

    .line 1773
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 1774
    .local v0, "simCount":I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 1775
    const-string v1, "vendor.gsm.prefered.rsim.slot"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1776
    .local v1, "rsim":I
    const-string v3, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1777
    .local v3, "akaSim":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 1778
    if-eq v2, v1, :cond_3

    if-eq v4, v1, :cond_3

    if-eq v2, v3, :cond_3

    if-eq v4, v3, :cond_3

    .line 1779
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1781
    .local v5, "subId":I
    nop

    .line 1782
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1781
    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1785
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    const-string v7, "ExternalSimMgr"

    if-eqz v6, :cond_1

    .line 1786
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 1787
    invoke-static {v10}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1786
    invoke-interface {v6, v5, v10}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1788
    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v10, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Z)Z

    .line 1789
    invoke-interface {v6, v5, v8}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    .line 1790
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeRadioSetting trun off radio subId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1791
    :cond_0
    if-ne v9, p1, :cond_2

    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v10}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Z

    move-result v10

    if-ne v10, v9, :cond_2

    .line 1792
    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v10, v8}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Z)Z

    .line 1793
    invoke-interface {v6, v5, v9}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    .line 1794
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeRadioSetting trun on radio subId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1797
    :cond_1
    const-string v8, "telephony is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    :cond_2
    :goto_1
    goto :goto_2

    .line 1799
    :catch_0
    move-exception v7

    .line 1800
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1777
    .end local v5    # "subId":I
    .end local v6    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1805
    .end local v1    # "rsim":I
    .end local v3    # "akaSim":I
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private blacklist dispatchCallback(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2358
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getLock(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2361
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2362
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->setWaiting(Z)V

    .line 2366
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 2368
    .local v1, "msgId":I
    const-string v3, "ExternalSimMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VsimEvenHandler handleMessage["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: msgId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const/16 v3, 0x3f1

    if-eq v1, v3, :cond_c

    const/16 v3, 0x3f2

    const/16 v4, 0x3ed

    const/4 v5, 0x1

    if-eq v1, v3, :cond_b

    const/16 v3, 0x7d1

    const/16 v6, 0xc9

    if-eq v1, v3, :cond_9

    const/16 v3, 0x7d2

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1389

    if-eq v1, v3, :cond_7

    const/16 v3, 0xca

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 2596
    const-string v2, "ExternalSimMgr"

    const-string v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2498
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2499
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2498
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2502
    .local v2, "inserted":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 2503
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "0"

    .line 2504
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2505
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_3

    .line 2407
    .end local v2    # "inserted":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    invoke-direct {p0, v5, p1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 2411
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2412
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2411
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2415
    .restart local v2    # "inserted":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 2416
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "0"

    .line 2417
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2418
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_3

    .line 2420
    :cond_1
    const-string v3, "ExternalSimMgr"

    const-string v4, "ignore UICC_APDU_REQUEST since vsim plug out."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2423
    goto/16 :goto_3

    .line 2464
    .end local v2    # "inserted":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    invoke-direct {p0, v5, p1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 2467
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2468
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2467
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2471
    .restart local v2    # "inserted":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 2472
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "0"

    .line 2473
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2474
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_3

    .line 2393
    .end local v2    # "inserted":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 2394
    .local v4, "type":I
    if-eq v4, v6, :cond_3

    if-ne v4, v3, :cond_2

    goto :goto_0

    .line 2400
    :cond_2
    const/4 v2, 0x6

    if-ne v4, v2, :cond_d

    .line 2402
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 2397
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v3

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 2399
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 2380
    .end local v4    # "type":I
    :pswitch_4
    goto/16 :goto_3

    .line 2514
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2515
    goto/16 :goto_3

    .line 2511
    :pswitch_6
    goto/16 :goto_3

    .line 2433
    :pswitch_7
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v6

    aget-boolean v4, v4, v6

    if-ne v4, v5, :cond_5

    .line 2434
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    aput-boolean v2, v4, v5

    .line 2435
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 2439
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2442
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 2446
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2447
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2446
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2450
    .restart local v2    # "inserted":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "0"

    .line 2451
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2453
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    aget-object v3, v3, v4

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 2454
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v5

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v6

    .line 2455
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v7

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 2456
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v9

    const/4 v10, 0x0

    .line 2453
    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    goto :goto_2

    .line 2458
    :cond_6
    const-string v3, "ExternalSimMgr"

    const-string v4, "ignore UICC_APDU_RESPONSE since vsim plug out."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    .end local v2    # "inserted":Ljava/lang/String;
    :goto_2
    goto/16 :goto_3

    .line 2479
    :pswitch_8
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2486
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 2489
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aget-object v2, v2, v3

    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 2490
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v5

    .line 2491
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v7

    .line 2492
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v8

    const/4 v9, 0x0

    .line 2489
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    goto/16 :goto_3

    .line 2387
    :pswitch_9
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2388
    goto/16 :goto_3

    .line 2383
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2384
    goto/16 :goto_3

    .line 2375
    :pswitch_b
    goto/16 :goto_3

    .line 2589
    :cond_7
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aget-object v2, v2, v3

    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 2590
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v5

    .line 2591
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v7

    .line 2592
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v8

    const/4 v9, 0x0

    .line 2589
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    .line 2593
    goto/16 :goto_3

    .line 2584
    :cond_8
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2585
    goto/16 :goto_3

    .line 2519
    :cond_9
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    invoke-direct {p0, v5, p1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 2520
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aput-boolean v5, v2, v3

    .line 2521
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 2525
    invoke-static {p1, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$2302(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I

    .line 2529
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2530
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2529
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2534
    .restart local v2    # "inserted":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    if-ne v3, v5, :cond_a

    .line 2535
    if-eqz v2, :cond_d

    .line 2536
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2537
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto :goto_3

    .line 2540
    :cond_a
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2543
    goto :goto_3

    .line 2566
    .end local v2    # "inserted":Ljava/lang/String;
    :cond_b
    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2569
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v7

    shl-int v7, v5, v7

    invoke-direct {v3, v2, v4, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    move-object v2, v3

    .line 2570
    .local v2, "abortEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2574
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2575
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v3

    shl-int v3, v5, v3

    const-string v4, "vendor.gsm.external.sim.inserted"

    const-string v5, "0"

    .line 2574
    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2578
    .local v3, "inserted":Ljava/lang/String;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2579
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v4, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto :goto_3

    .line 2555
    .end local v2    # "abortEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local v3    # "inserted":Ljava/lang/String;
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2556
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2555
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2559
    .local v2, "inserted":Ljava/lang/String;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2560
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2599
    .end local v2    # "inserted":Ljava/lang/String;
    :cond_d
    :goto_3
    const-string v2, "ExternalSimMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VsimEvenHandler handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    nop

    .end local v1    # "msgId":I
    monitor-exit v0

    .line 2602
    return-void

    .line 2601
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3eb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getLock(I)Ljava/lang/Object;
    .locals 1
    .param p1, "msgId"    # I

    .line 2343
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2350
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMdWaitingFlag(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMdWaitingFlag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private blacklist getRspMessageId(I)I
    .locals 2
    .param p1, "requestMsgId"    # I

    .line 1265
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRspMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "no support."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const/4 v0, -0x1

    return v0

    .line 1278
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 1273
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1276
    :cond_0
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1282
    :cond_1
    const/16 v0, 0x3f0

    return v0

    .line 1280
    :cond_2
    const/16 v0, 0x3ef

    return v0

    .line 1269
    :cond_3
    const/16 v0, 0x3eb

    return v0

    .line 1271
    :cond_4
    const/16 v0, 0x3ea

    return v0

    .line 1267
    :cond_5
    const/16 v0, 0x3e9

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getVsimSlotId(I)I
    .locals 5
    .param p1, "simType"    # I

    .line 1483
    const/4 v0, 0x2

    const/4 v1, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 1495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1496
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "vendor.gsm.external.sim.enabled"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    .local v2, "enable":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1499
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.inserted"

    invoke-static {v0, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1501
    .local v3, "inserted":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1502
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1503
    return v0

    .line 1495
    .end local v2    # "enable":Ljava/lang/String;
    .end local v3    # "inserted":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1510
    .end local v0    # "i":I
    :cond_1
    return v1

    .line 1485
    :cond_2
    const-string v0, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1486
    .local v0, "akaSim":I
    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1900()I

    move-result v0

    .line 1487
    :cond_3
    return v0

    .line 1490
    .end local v0    # "akaSim":I
    :cond_4
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1491
    .local v0, "rSim":I
    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v0

    .line 1492
    :cond_5
    return v0
.end method

.method private blacklist handleEventRequest(ILcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 21
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1808
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ExternalSimMgr"

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v12

    .line 1813
    .local v12, "slotId":I
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v13

    .line 1815
    .local v13, "simType":I
    const/4 v0, 0x0

    .line 1817
    .local v0, "result":I
    const/4 v14, -0x1

    .line 1819
    .local v14, "newSlotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VsimEvenHandler First slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const-string v15, "] end"

    if-nez v0, :cond_2a

    if-ltz v12, :cond_2a

    .line 1822
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v12, v1, :cond_29

    .line 1823
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->ignoreGetSimStatus()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1824
    const/16 v1, 0xcc

    if-eq v8, v1, :cond_27

    const-string v2, "Reset PREFERED_AKA_SIM_SLOT"

    const-string v3, "vendor.gsm.prefered.aka.sim.slot"

    const-string v4, "1"

    const-string v5, "vendor.gsm.disable.sim.dialog"

    const-string v1, "0"

    const/4 v6, 0x0

    packed-switch v8, :pswitch_data_0

    .line 2126
    const/4 v0, -0x1

    .line 2127
    const-string v1, "VsimEvenHandler invalid event id."

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    goto/16 :goto_f

    .line 2011
    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .local v19, "newSlotId":I
    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2012
    goto/16 :goto_e

    .line 2109
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_1
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    goto/16 :goto_e

    .line 2115
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_2
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    goto/16 :goto_e

    .line 2104
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_3
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    mul-int/lit16 v2, v13, 0x3e8

    aput v2, v1, v12

    .line 2105
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2106
    goto/16 :goto_e

    .line 2085
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_4
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    const/4 v1, 0x3

    if-ne v13, v1, :cond_1

    .line 2086
    invoke-static {v3, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2087
    .local v1, "akaSim":I
    if-eq v1, v14, :cond_0

    .line 2088
    invoke-direct {v7, v1, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendActiveAkaSimEvent(IZ)V

    .line 2092
    :cond_0
    invoke-static {v11, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "akaSim":I
    goto :goto_1

    .line 2093
    :cond_1
    const/4 v1, 0x2

    if-ne v13, v1, :cond_3

    .line 2094
    const-string v1, "vendor.gsm.prefered.rsim.slot"

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2095
    .local v6, "rSim":I
    if-eq v6, v14, :cond_2

    .line 2096
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    move/from16 v17, v6

    .end local v6    # "rSim":I
    .local v17, "rSim":I
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    goto :goto_0

    .line 2095
    .end local v17    # "rSim":I
    .restart local v6    # "rSim":I
    :cond_2
    move/from16 v17, v6

    .line 2099
    .end local v6    # "rSim":I
    :goto_0
    goto/16 :goto_e

    .line 2093
    :cond_3
    :goto_1
    goto/16 :goto_e

    .line 2015
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_5
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    const/4 v1, 0x2

    if-ne v13, v1, :cond_a

    .line 2016
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v1

    .line 2018
    .end local v0    # "result":I
    .local v1, "result":I
    if-gez v1, :cond_4

    move v0, v1

    move/from16 v14, v19

    goto/16 :goto_f

    .line 2021
    :cond_4
    :try_start_0
    const-string v0, "VsimEvenHandler isCapabilitySwitching: false."

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-static {v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 2023
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    invoke-direct {v7, v12, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendSetRsimMappingInfoSync(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move v5, v0

    .line 2025
    .end local v1    # "result":I
    .local v5, "result":I
    :try_start_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 2026
    .local v0, "mainPhoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VsimEvenHandler sendSetRsimMappingInfoSync result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mainPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    if-ltz v5, :cond_9

    if-ne v0, v12, :cond_5

    move/from16 v18, v5

    goto/16 :goto_3

    .line 2030
    :cond_5
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 2031
    invoke-direct {v7, v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->switchModemCapability(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2032
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 2033
    invoke-static {v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 2034
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x7

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move v14, v4

    move v4, v6

    move/from16 v18, v5

    .end local v5    # "result":I
    .local v18, "result":I
    move v5, v13

    move-object/from16 v6, v16

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2037
    const/4 v1, -0x2

    .line 2040
    .end local v18    # "result":I
    .restart local v1    # "result":I
    move v0, v1

    move/from16 v14, v19

    goto/16 :goto_f

    .line 2043
    .end local v1    # "result":I
    .restart local v5    # "result":I
    :cond_6
    move v14, v4

    move/from16 v18, v5

    .end local v5    # "result":I
    .restart local v18    # "result":I
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I

    move-result v1

    if-ne v1, v14, :cond_7

    .line 2044
    const-string v1, "VsimEvenHandler before mLock.wait"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 2048
    :cond_7
    const-string v1, "VsimEvenHandler after mLock.wait"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 2051
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 2052
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v4, 0x7

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move v5, v13

    move v14, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2055
    const/4 v1, -0x2

    .end local v18    # "result":I
    .restart local v1    # "result":I
    goto :goto_2

    .line 2050
    .end local v1    # "result":I
    .restart local v18    # "result":I
    :cond_8
    move v14, v6

    move/from16 v1, v18

    .line 2059
    .end local v18    # "result":I
    .restart local v1    # "result":I
    :goto_2
    :try_start_3
    iget-object v2, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2, v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2062
    move v0, v1

    move/from16 v14, v19

    .end local v0    # "mainPhoneId":I
    goto/16 :goto_f

    .line 2060
    .end local v1    # "result":I
    .restart local v18    # "result":I
    :catch_0
    move-exception v0

    move-object v1, v0

    move/from16 v0, v18

    goto :goto_4

    .line 2028
    .end local v18    # "result":I
    .restart local v0    # "mainPhoneId":I
    .restart local v5    # "result":I
    :cond_9
    move/from16 v18, v5

    .end local v5    # "result":I
    .restart local v18    # "result":I
    :goto_3
    move/from16 v0, v18

    move/from16 v14, v19

    goto/16 :goto_f

    .line 2060
    .end local v0    # "mainPhoneId":I
    .end local v18    # "result":I
    .restart local v5    # "result":I
    :catch_1
    move-exception v0

    move/from16 v18, v5

    move-object v1, v0

    move/from16 v0, v18

    .end local v5    # "result":I
    .restart local v18    # "result":I
    goto :goto_4

    .end local v18    # "result":I
    .restart local v1    # "result":I
    :catch_2
    move-exception v0

    move/from16 v20, v1

    move-object v1, v0

    move/from16 v0, v20

    .line 2061
    .local v0, "result":I
    .local v1, "e":Ljava/lang/InterruptedException;
    :goto_4
    const-string v2, "VsimEvenHandler InterruptedException."

    invoke-static {v11, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    .end local v1    # "e":Ljava/lang/InterruptedException;
    move/from16 v14, v19

    goto/16 :goto_f

    .line 2063
    :cond_a
    move v14, v6

    const/4 v1, 0x3

    if-ne v13, v1, :cond_d

    .line 2064
    if-ltz v12, :cond_b

    .line 2065
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v12, v1, :cond_b

    .line 2067
    const/4 v1, 0x1

    invoke-direct {v7, v12, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendActiveAkaSimEvent(IZ)V

    goto/16 :goto_e

    .line 2070
    :cond_b
    const/4 v1, -0x1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2071
    .local v3, "akaSim":I
    if-eq v3, v1, :cond_c

    .line 2072
    move v1, v3

    .line 2073
    .end local v19    # "newSlotId":I
    .local v1, "newSlotId":I
    invoke-direct {v7, v3, v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendActiveAkaSimEvent(IZ)V

    move v14, v1

    goto :goto_5

    .line 2071
    .end local v1    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    :cond_c
    move/from16 v14, v19

    .line 2076
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :goto_5
    invoke-static {v11, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    .end local v3    # "akaSim":I
    goto/16 :goto_f

    .line 2079
    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    :cond_d
    const/4 v0, -0x1

    .line 2081
    move/from16 v14, v19

    goto/16 :goto_f

    .line 2007
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_6
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2008
    goto/16 :goto_e

    .line 1936
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_7
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v14

    .line 1938
    .end local v0    # "result":I
    .local v14, "result":I
    if-gez v14, :cond_e

    move/from16 v16, v14

    goto/16 :goto_9

    .line 1946
    :cond_e
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1947
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 1948
    .local v1, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1949
    .local v0, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v0

    .line 1952
    .end local v0    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .local v3, "timeOut":I
    :cond_10
    const-wide/16 v5, 0xc8

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1953
    add-int/lit16 v3, v3, 0xc8

    .line 1956
    goto :goto_6

    .line 1954
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1955
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1957
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_6
    nop

    .line 1958
    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 1957
    invoke-static {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 1959
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v0, :cond_11

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v0, :cond_11

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v0, :cond_11

    const/16 v5, 0x4e20

    if-lt v3, v5, :cond_10

    .line 1963
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VsimEvenHandler REQUEST_TYPE_PLUG_IN state: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    .end local v1    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v3    # "timeOut":I
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1970
    .local v0, "mCPhoneId":I
    if-eq v12, v0, :cond_14

    const/4 v1, 0x1

    if-ne v13, v1, :cond_13

    goto :goto_7

    :cond_13
    move/from16 v16, v14

    goto :goto_9

    .line 1973
    :cond_14
    :goto_7
    const-string v1, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    nop

    .line 1978
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    .line 1977
    move-object/from16 v1, p0

    move v2, v12

    move-object v5, v4

    move/from16 v4, p1

    move/from16 v16, v14

    move-object v14, v5

    .end local v14    # "result":I
    .local v16, "result":I
    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1980
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_8

    .line 1984
    :cond_15
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1987
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1988
    .local v1, "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    .line 1989
    .end local v1    # "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    goto :goto_9

    .line 1982
    :cond_16
    :goto_8
    const-string v1, "VSIM allow to enable without reset modem"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    .end local v0    # "mCPhoneId":I
    .end local v16    # "result":I
    .restart local v14    # "result":I
    :goto_9
    move/from16 v0, v16

    move/from16 v14, v19

    .end local v14    # "result":I
    .restart local v16    # "result":I
    goto/16 :goto_f

    .line 1996
    .end local v16    # "result":I
    .end local v19    # "newSlotId":I
    .local v0, "result":I
    .local v14, "newSlotId":I
    :pswitch_8
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aget-object v2, v1, v12

    if-eqz v2, :cond_17

    .line 1997
    aget-object v1, v1, v12

    invoke-direct {v7, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2003
    :cond_17
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2004
    goto/16 :goto_e

    .line 1863
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_9
    move/from16 v19, v14

    move-object v14, v4

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "vendor.gsm.external.sim.enabled"

    invoke-static {v12, v2, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1866
    .local v6, "enabled":Ljava/lang/String;
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v18, v6

    goto/16 :goto_c

    .line 1872
    :cond_18
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    .line 1874
    if-gez v0, :cond_19

    goto/16 :goto_e

    .line 1878
    :cond_19
    iget-object v2, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aget-object v3, v2, v12

    if-eqz v3, :cond_1a

    .line 1879
    aget-object v2, v2, v12

    invoke-direct {v7, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1883
    :cond_1a
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendPlugOutEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1886
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1887
    :cond_1b
    const/16 v2, 0x4e20

    invoke-direct {v7, v12, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->waitSimPlugOut(II)V

    .line 1892
    :cond_1c
    const-string v2, "gsm.vsim.slotid"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const/4 v2, 0x2

    invoke-direct {v7, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v2

    if-ne v2, v12, :cond_1d

    .line 1896
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 1897
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1902(I)I

    .line 1898
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :cond_1d
    nop

    .line 1904
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/16 v16, 0x0

    .line 1903
    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    move-object/from16 v18, v6

    .end local v6    # "enabled":Ljava/lang/String;
    .local v18, "enabled":Ljava/lang/String;
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    .line 1907
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_a

    .line 1921
    :cond_1e
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1, v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V

    .line 1922
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1924
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1925
    .restart local v1    # "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    goto :goto_b

    .line 1911
    .end local v1    # "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_1f
    :goto_a
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 1913
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 1914
    .local v2, "defaultDataSub":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 1915
    .local v3, "defaultPhoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultDataSub="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " when disabling VSIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    if-eq v3, v12, :cond_20

    .line 1918
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubId(I)V

    .line 1920
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local v2    # "defaultDataSub":I
    .end local v3    # "defaultPhoneId":I
    :cond_20
    nop

    .line 1929
    :goto_b
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1930
    const/4 v1, 0x1

    invoke-direct {v7, v9, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendHotPlugEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)V

    goto/16 :goto_e

    .line 1866
    .end local v18    # "enabled":Ljava/lang/String;
    .restart local v6    # "enabled":Ljava/lang/String;
    :cond_21
    move-object/from16 v18, v6

    .line 1867
    .end local v6    # "enabled":Ljava/lang/String;
    .restart local v18    # "enabled":Ljava/lang/String;
    :goto_c
    const-string v1, "VsimEvenHandler didn\'t not enabled before."

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    goto/16 :goto_e

    .line 1828
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :pswitch_a
    move/from16 v19, v14

    move v14, v6

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    .line 1829
    if-gez v0, :cond_22

    move/from16 v14, v19

    goto/16 :goto_f

    .line 1831
    :cond_22
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    .line 1833
    if-gez v0, :cond_23

    goto/16 :goto_e

    .line 1837
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 1838
    .local v6, "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1840
    .local v5, "subId":I
    const/4 v1, 0x2

    if-ne v13, v1, :cond_25

    .line 1841
    invoke-virtual {v6, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1843
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1844
    invoke-static {v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 1847
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_25
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1852
    invoke-direct {v7, v9, v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendHotPlugEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)V

    .line 1853
    const/16 v1, 0x7d0

    invoke-direct {v7, v12, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->waitSimPlugOut(II)V

    .line 1857
    :cond_26
    nop

    .line 1858
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v14, 0x0

    .line 1857
    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move/from16 v16, v5

    .end local v5    # "subId":I
    .local v16, "subId":I
    move v5, v13

    move-object/from16 v18, v6

    .end local v6    # "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .local v18, "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1859
    goto :goto_e

    .line 2121
    .end local v16    # "subId":I
    .end local v18    # "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :cond_27
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    return-void

    .line 1823
    :cond_28
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    goto :goto_d

    .line 1822
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :cond_29
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    goto :goto_d

    .line 1821
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :cond_2a
    move/from16 v19, v14

    .line 2132
    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    :goto_d
    if-nez v0, :cond_2b

    .line 2133
    const/4 v0, -0x1

    move/from16 v14, v19

    goto :goto_f

    .line 2137
    :cond_2b
    :goto_e
    move/from16 v14, v19

    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :goto_f
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2138
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    const/16 v3, 0x3eb

    .line 2140
    const/4 v4, -0x1

    if-ne v14, v4, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    goto :goto_10

    :cond_2c
    const/4 v4, 0x1

    shl-int/2addr v4, v14

    :goto_10
    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 2141
    .local v1, "eventResponse":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2143
    iget-object v2, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v2, :cond_2d

    .line 2144
    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2147
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleGetPlatformCapability(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2184
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v0

    .line 2185
    .local v0, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v1

    .line 2187
    .local v1, "simType":I
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2188
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v3

    .line 2190
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    const/16 v5, 0x3ea

    invoke-direct {v2, v3, v5, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 2192
    .local v2, "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2195
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v4

    .line 2196
    .local v4, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    .line 2197
    invoke-virtual {v2, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 2198
    :cond_0
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v5, :cond_1

    .line 2199
    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 2200
    :cond_1
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v5, :cond_2

    .line 2201
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 2203
    :cond_2
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2207
    :goto_0
    const-string v5, "ro.vendor.mtk_external_sim_support"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4

    .line 2208
    const/4 v5, 0x3

    .line 2212
    .local v5, "mDefaultSupportVersion":I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2213
    or-int/lit8 v5, v5, 0x4

    .line 2216
    :cond_3
    invoke-virtual {v2, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2217
    .end local v5    # "mDefaultSupportVersion":I
    goto :goto_1

    .line 2218
    :cond_4
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2225
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 2227
    .local v5, "simCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleGetPlatformCapability simType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", simCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExternalSimMgr"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    if-ne v1, v7, :cond_9

    .line 2232
    const-string v3, "vendor.gsm.prefered.rsim.slot"

    const/4 v8, -0x1

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2233
    .local v3, "rsimSlot":I
    if-ne v3, v8, :cond_5

    .line 2235
    shl-int v6, v7, v5

    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_3

    .line 2242
    :cond_5
    if-eq v3, v7, :cond_7

    const/4 v8, 0x4

    if-ne v3, v8, :cond_6

    goto :goto_2

    .line 2244
    :cond_6
    if-ne v3, v6, :cond_8

    .line 2245
    invoke-virtual {v2, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_3

    .line 2243
    :cond_7
    :goto_2
    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2248
    .end local v3    # "rsimSlot":I
    :cond_8
    :goto_3
    goto/16 :goto_7

    .line 2250
    :cond_9
    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_10

    .line 2252
    const/4 v6, 0x0

    .line 2253
    .local v6, "isCdmaCard":I
    const/4 v8, 0x0

    .line 2255
    .local v8, "isHasCard":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v5, :cond_d

    .line 2256
    sget-object v11, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v11, v11, v10

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2257
    .local v11, "cardType":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 2258
    shl-int v12, v7, v10

    or-int/2addr v8, v12

    .line 2261
    :cond_a
    const-string v12, "CSIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 2262
    const-string v12, "RUIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "UIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2263
    :cond_b
    shl-int v12, v7, v10

    or-int/2addr v6, v12

    .line 2255
    .end local v11    # "cardType":Ljava/lang/String;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2267
    .end local v10    # "i":I
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isHasCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    if-nez v8, :cond_e

    .line 2272
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_5

    .line 2273
    :cond_e
    if-nez v6, :cond_f

    .line 2275
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_5

    .line 2278
    :cond_f
    shl-int v3, v7, v5

    sub-int/2addr v3, v7

    xor-int/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2281
    .end local v6    # "isCdmaCard":I
    .end local v8    # "isHasCard":I
    :goto_5
    goto :goto_7

    :cond_10
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2285
    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_11

    .line 2287
    shl-int v3, v7, v5

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_7

    .line 2288
    :cond_11
    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_14

    .line 2291
    const-string v6, "ro.vendor.mtk_external_sim_only_slots"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2293
    .local v3, "vsimOnly":I
    if-eqz v3, :cond_12

    .line 2294
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_6

    .line 2296
    :cond_12
    shl-int v6, v7, v5

    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2298
    .end local v3    # "vsimOnly":I
    :goto_6
    goto :goto_7

    .line 2302
    :cond_13
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2307
    :cond_14
    :goto_7
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2308
    return-void
.end method

.method private blacklist handleServiceStateRequest(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2311
    const/4 v0, 0x0

    .line 2312
    .local v0, "result":I
    const/4 v1, -0x1

    .line 2313
    .local v1, "voiceRejectCause":I
    const/4 v2, -0x1

    .line 2315
    .local v2, "dataRejectCause":I
    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2316
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    .line 2318
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v5

    const/16 v6, 0x3ef

    invoke-direct {v3, v4, v6, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 2319
    .local v3, "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    nop

    .line 2320
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    .line 2319
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 2322
    .local v4, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 2324
    .local v5, "ss":Landroid/telephony/ServiceState;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lmediatek/telephony/MtkServiceState;

    if-eqz v6, :cond_0

    .line 2325
    move-object v6, v5

    check-cast v6, Lmediatek/telephony/MtkServiceState;

    .line 2326
    .local v6, "mtkSs":Lmediatek/telephony/MtkServiceState;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleServiceStateRequest subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    invoke-virtual {v6}, Lmediatek/telephony/MtkServiceState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2326
    const-string v8, "ExternalSimMgr"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    invoke-virtual {v6}, Lmediatek/telephony/MtkServiceState;->getVoiceRejectCause()I

    move-result v1

    .line 2329
    invoke-virtual {v6}, Lmediatek/telephony/MtkServiceState;->getDataRejectCause()I

    move-result v2

    .line 2333
    .end local v6    # "mtkSs":Lmediatek/telephony/MtkServiceState;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2335
    invoke-virtual {v3, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2337
    invoke-virtual {v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2339
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v6, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2340
    return-void
.end method

.method private blacklist isPlatformReady(I)Z
    .locals 3
    .param p1, "category"    # I

    .line 1680
    const/4 v0, 0x1

    .line 1682
    .local v0, "isReady":Z
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlatformReady invalid category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSimMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1690
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1691
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->isAllRadioAvailable()Z

    move-result v0

    .line 1692
    goto :goto_0

    .line 1685
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1686
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/MtkProxyController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 1687
    nop

    .line 1698
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/MtkProxyController;
    :goto_0
    return v0
.end method

.method private blacklist isRsimDataConnected()Z
    .locals 4

    .line 1672
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1674
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1675
    .local v0, "dataState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rsim data state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .locals 1
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1767
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfPlatformNotReady(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I

    move-result v0

    return v0
.end method

.method private blacklist retryIfPlatformNotReady(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I
    .locals 6
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p2, "category"    # I

    .line 1702
    const/4 v0, 0x0

    .line 1704
    .local v0, "result":I
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->isPlatformReady(I)Z

    move-result v1

    .line 1706
    .local v1, "isReady":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryIfPlatformNotReady category= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isReady= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    if-nez v1, :cond_1

    .line 1709
    const/4 v2, 0x0

    .line 1712
    .local v2, "timeOut":I
    :cond_0
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    add-int/lit16 v2, v2, 0x7d0

    .line 1716
    goto :goto_0

    .line 1714
    :catch_0
    move-exception v4

    .line 1715
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1717
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->isPlatformReady(I)Z

    move-result v1

    .line 1718
    if-nez v1, :cond_1

    const v4, 0x9c40

    if-lt v2, v4, :cond_0

    .line 1721
    .end local v2    # "timeOut":I
    :cond_1
    if-nez v1, :cond_2

    .line 1722
    const/4 v0, -0x2

    .line 1723
    const-string v2, "retryIfPlatformNotReady return not ready"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_2
    return v0
.end method

.method private blacklist retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .locals 1
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1763
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfPlatformNotReady(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I

    move-result v0

    return v0
.end method

.method private blacklist sendActiveAkaSimEvent(IZ)V
    .locals 12
    .param p1, "slotId"    # I
    .param p2, "turnOn"    # Z

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendActiveAkaSimEvent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v0

    .line 1575
    .local v0, "rsimSlot":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 1576
    if-nez p2, :cond_0

    .line 1577
    const/16 v2, 0xca

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 1582
    :cond_0
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v3, 0x0

    shl-int v4, v1, p1

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1586
    .local v2, "akaEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v3, 0x0

    .line 1589
    .local v3, "eventId":I
    if-eqz p2, :cond_1

    .line 1590
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1902(I)I

    .line 1591
    const/4 v3, 0x6

    .line 1592
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 1594
    :cond_1
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1902(I)I

    .line 1595
    const/16 v3, 0xcb

    .line 1596
    const/16 v4, 0xcb

    invoke-virtual {v2, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1599
    :goto_0
    invoke-virtual {v2, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1602
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v7

    .line 1603
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 1602
    move-object v6, p0

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1607
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aget-boolean v4, v4, v0

    if-ne v4, v1, :cond_2

    .line 1608
    if-ne p2, v1, :cond_2

    .line 1609
    const/16 v1, 0xc9

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 1614
    :cond_2
    return-void
.end method

.method private blacklist sendHotPlugEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p2, "plugIn"    # Z

    .line 1469
    const/4 v0, 0x4

    .line 1470
    .local v0, "eventId":I
    if-nez p2, :cond_0

    .line 1471
    const/4 v0, 0x3

    .line 1475
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1476
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1475
    move-object v1, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1480
    return-void
.end method

.method private blacklist sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1348
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v1

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aput-boolean v2, v0, v3

    .line 1350
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 1355
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag(I)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1356
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 1358
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1359
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    .line 1360
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getRspMessageId(I)I

    move-result v3

    .line 1361
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1364
    .local v0, "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1367
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1368
    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 1369
    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 1371
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    aget-object v1, v1, v2

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1372
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v3

    .line 1373
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v4

    .line 1374
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v5

    .line 1375
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v6

    .line 1376
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 1371
    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    .line 1378
    .end local v0    # "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    :cond_1
    return-void
.end method

.method private blacklist sendPlugOutEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1436
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1437
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    .line 1436
    const-string v1, "vendor.gsm.external.sim.inserted"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "isInserted":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPlugOutEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSimMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1443
    :cond_0
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1444
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    .line 1446
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1449
    .local v1, "plugOutEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1451
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1453
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 1460
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 1461
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1460
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1466
    .end local v1    # "plugOutEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    :goto_0
    return-void
.end method

.method private blacklist sendRsimAuthProgressEvent(I)V
    .locals 11
    .param p1, "eventId"    # I

    .line 1515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 1517
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v1

    .line 1518
    .local v1, "akaSim":I
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v2

    .line 1520
    .local v2, "rSim":I
    const/4 v3, 0x1

    const-string v4, "ExternalSimMgr"

    if-ltz v1, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-gt v1, v5, :cond_4

    if-ltz v2, :cond_4

    .line 1521
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-le v2, v5, :cond_0

    goto/16 :goto_2

    .line 1528
    :cond_0
    const/16 v5, 0xc9

    if-ne p1, v5, :cond_1

    .line 1529
    iput-boolean v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    goto :goto_0

    .line 1530
    :cond_1
    const/16 v5, 0xca

    if-ne p1, v5, :cond_3

    .line 1531
    iget-boolean v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    if-nez v5, :cond_2

    .line 1532
    const-string v0, "sendRsimAuthProgressEvent, aka didn\'t occupy rf"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-void

    .line 1535
    :cond_2
    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    .line 1537
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRsimAuthProgressEvent mIsWaitingAuthRsp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aget-boolean v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v5, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/16 v6, 0x3eb

    shl-int v7, v3, v1

    invoke-direct {v5, v0, v6, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    move-object v0, v5

    .line 1546
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1548
    invoke-virtual {v0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1550
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1551
    .local v3, "msg":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1552
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1555
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v6

    .line 1556
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v7

    const/4 v9, 0x1

    .line 1555
    move-object v5, p0

    move v8, p1

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRsimAuthProgressEvent eventId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    goto :goto_1

    .line 1565
    :catch_0
    move-exception v5

    .line 1566
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "sendRsimAuthProgressEvent InterruptedException."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 1522
    .end local v0    # "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRsimAuthProgressEvent aka sim: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rsim: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iput-boolean v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 1524
    return-void
.end method

.method private blacklist sendSetRsimMappingInfoSync(II)I
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1410
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x1

    shl-int v2, v1, p1

    const/4 v3, 0x0

    const/16 v4, 0x3eb

    invoke-direct {v0, v3, v4, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1415
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1417
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1419
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1420
    .local v5, "msg":Landroid/os/Message;
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1421
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1422
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, p1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, p2, v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimNotification(IIILandroid/os/Message;)Z

    move-result v2

    .line 1425
    .local v2, "result":Z
    const-string v4, "ExternalSimMgr"

    if-ne v2, v1, :cond_0

    .line 1426
    const-string v1, "sendSetRsimMappingInfoSync before mLock.wait"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1428
    return v3

    .line 1430
    :cond_0
    const-string v1, "sendSetRsimMappingInfoSync fail."

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v1, -0x2

    return v1
.end method

.method private blacklist sendVsimNotification(IIIILandroid/os/Message;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "transactionId"    # I
    .param p3, "eventId"    # I
    .param p4, "simType"    # I
    .param p5, "message"    # Landroid/os/Message;

    .line 1383
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimNotification(IIILandroid/os/Message;)Z

    move-result v0

    .line 1386
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVsimNotification result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSimMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-nez p5, :cond_0

    .line 1389
    const/4 v1, 0x0

    .line 1390
    .local v1, "timeOut":I
    :goto_0
    if-nez v0, :cond_0

    const v3, 0x9c40

    if-ge v1, v3, :cond_0

    .line 1392
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    add-int/lit16 v1, v1, 0x7d0

    .line 1396
    goto :goto_1

    .line 1394
    :catch_0
    move-exception v3

    .line 1395
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1398
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v3, v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimNotification(IIILandroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 1403
    .end local v1    # "timeOut":I
    :cond_0
    if-nez v0, :cond_1

    .line 1404
    const-string v1, "sendVsimNotification fail until 40000"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_1
    return-void
.end method

.method private blacklist setDataStream(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V
    .locals 2
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1259
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1260
    iput-object p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1261
    const-string v0, "ExternalSimMgr"

    const-string v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void
.end method

.method private blacklist setMdWaitingFlag(ZI)V
    .locals 1
    .param p1, "isWaiting"    # Z
    .param p2, "slotId"    # I

    .line 1617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 1618
    return-void
.end method

.method private blacklist setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V
    .locals 8
    .param p1, "isWaiting"    # Z
    .param p2, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p3, "slotId"    # I

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMdWaitingFlag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aput-boolean p1, v0, p3

    .line 1624
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 1625
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aput-object p2, v2, p3

    .line 1627
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v3, v2, p3

    if-nez v3, :cond_0

    .line 1628
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v0}, Ljava/util/Timer;-><init>(Z)V

    aput-object v3, v2, p3

    .line 1632
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1633
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1632
    :goto_0
    const-string v2, "vendor.gsm.external.sim.enabled"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "isVsimEnabled":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1652
    :cond_2
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v1, v1, p3

    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v2, p0, p3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)V

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    aget v3, v3, p3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 1639
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v2, v2, p3

    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v3, p0, p3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1646
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1649
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recevice modem event under vsim disabled state. lastDisableTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .end local v0    # "isVsimEnabled":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1657
    :cond_5
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v1, v0, p3

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1658
    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1659
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1660
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aput-object v2, v0, p3

    .line 1662
    :cond_6
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aput-object v2, v0, p3

    .line 1664
    :goto_3
    return-void
.end method

.method private blacklist switchModemCapability(I)Z
    .locals 9
    .param p1, "rsimSlot"    # I

    .line 1731
    const-string v0, "ExternalSimMgr"

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1733
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/MtkProxyController;
    if-eqz v1, :cond_3

    .line 1734
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 1735
    .local v2, "len":I
    new-array v3, v2, [Landroid/telephony/RadioAccessFamily;

    .line 1736
    .local v3, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .line 1737
    .local v4, "atLeastOneMatch":Z
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 1739
    if-ne v5, p1, :cond_0

    .line 1740
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->getMaxRafSupported()I

    move-result v6

    .line 1741
    .local v6, "raf":I
    const/4 v4, 0x1

    goto :goto_1

    .line 1743
    .end local v6    # "raf":I
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->getMinRafSupported()I

    move-result v6

    .line 1745
    .restart local v6    # "raf":I
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[switchModemCapability] raf["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v5, v6}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v3, v5

    .line 1737
    .end local v6    # "raf":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1748
    .end local v5    # "phoneId":I
    :cond_1
    if-eqz v4, :cond_2

    .line 1749
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    .line 1750
    const/4 v0, 0x1

    return v0

    .line 1752
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[switchModemCapability] rsim error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1755
    .end local v2    # "len":I
    .end local v3    # "rafs":[Landroid/telephony/RadioAccessFamily;
    .end local v4    # "atLeastOneMatch":Z
    :catch_0
    move-exception v2

    .line 1756
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "[switchModemCapability] setRadioCapability: Runtime Exception"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 1758
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    nop

    .line 1759
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist waitSimPlugOut(II)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "duration"    # I

    .line 2158
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 2159
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2160
    .local v1, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    .line 2161
    .local v2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    .line 2164
    .local v3, "timeOut":I
    :cond_0
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    add-int/lit16 v3, v3, 0xc8

    .line 2168
    goto :goto_0

    .line 2166
    :catch_0
    move-exception v4

    .line 2167
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2169
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 2170
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v4

    .line 2169
    invoke-static {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 2174
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v2

    .line 2175
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v4, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    :cond_2
    if-lt v3, p2, :cond_0

    .line 2180
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waitSimPlugOut, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", timeOut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExternalSimMgr"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1227
    const/4 v0, 0x0

    .line 1228
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 1229
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1230
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1231
    .end local v1    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 1232
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1235
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v1

    .line 1237
    .local v1, "slotId":I
    if-ltz v1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1238
    :goto_1
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    .line 1239
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->isWaiting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] thread running, delay 100 ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_2
    goto :goto_1

    .line 1245
    :catch_0
    move-exception v2

    .line 1246
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 1250
    :cond_1
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    aput-object v3, v2, v1

    .line 1251
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->start()V

    goto :goto_3

    .line 1254
    :cond_2
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->start()V

    .line 1256
    :goto_3
    return-void
.end method
