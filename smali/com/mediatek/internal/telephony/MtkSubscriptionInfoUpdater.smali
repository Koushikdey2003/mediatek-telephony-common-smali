.class public Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "MtkSubscriptionInfoUpdater.java"


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist EVENT_RADIO_AVAILABLE:I = 0x65

.field private static final blacklist EVENT_RADIO_UNAVAILABLE:I = 0x66

.field private static final blacklist EVENT_SIM_MOUNT_CHANGED:I = 0x6a

.field private static final blacklist EVENT_SIM_NO_CHANGED:I = 0x67

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSubscriptionInfoUpdater"

.field private static final blacklist PROPERTY_FLIGHT_MODE_POWER_OFF_MD:Ljava/lang/String; = "ro.vendor.mtk_flight_mode_power_off_md"

.field private static final blacklist PROPERTY_SML_MODE:Ljava/lang/String; = "ro.vendor.sim_me_lock_mode"

.field private static final blacklist sReadICCID_retry_time:I = 0x3e8


# instance fields
.field private blacklist mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mIsMultiSimSettingControllerInitialized:Z

.field private blacklist mIsSmlLockMode:Z

.field private blacklist mIsUpdateAvailable:[Z

.field private final blacklist mLockUpdate:Ljava/lang/Object;

.field private final blacklist mMtkReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mOldDensityDpi:I

.field private blacklist mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

.field private blacklist mReadIccIdCount:I

.field private blacklist mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

.field private blacklist newSmlDt:[I

.field private blacklist newSmlInfo:[I

.field private blacklist oldSmlDt:[I

.field private blacklist oldSmlInfo:[I


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mLockUpdate:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    .line 121
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    .line 123
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    .line 124
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlDt:[I

    .line 127
    const-string v0, "ro.vendor.sim_me_lock_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsSmlLockMode:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 132
    sget v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 140
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsMultiSimSettingControllerInitialized:Z

    .line 979
    new-instance v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mMtkReceiver:Landroid/content/BroadcastReceiver;

    .line 1009
    new-instance v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    .line 150
    const-string v2, "MtkSubscriptionInfoUpdater created"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 151
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I

    .line 154
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "persist.vendor.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OP09"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    :cond_0
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mMtkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 165
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 166
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/16 v6, 0x66

    invoke-interface {v5, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/16 v6, 0x65

    invoke-interface {v5, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    .end local v4    # "index":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IOplusUiccManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    .line 172
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/IOplusUiccManager;->initOperatorSwitchWithSim(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    .line 174
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubName(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .line 101
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I

    return p1
.end method

.method static synthetic blacklist access$400()Landroid/content/Context;
    .locals 1

    .line 101
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$500()Landroid/content/Context;
    .locals 1

    .line 101
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic blacklist access$604(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 101
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    return-void
.end method

.method private blacklist checkAllIccIdReady()Z
    .locals 6

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAllIccIdReady +, retry_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 892
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 893
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    .line 894
    .local v3, "iccId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No SIM insert :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 897
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 898
    const/4 v2, 0x0

    return v2

    .line 900
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccId["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 891
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v3    # "iccId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkIsAvailable()Z
    .locals 4

    .line 967
    const/4 v0, 0x1

    .line 968
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 969
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsUpdateAvailable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 971
    const/4 v0, 0x0

    .line 972
    goto :goto_1

    .line 968
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 975
    .end local v1    # "i":I
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsAvailable result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 976
    return v0
.end method

.method private blacklist getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 946
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 953
    .local v0, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_1

    .line 954
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 956
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 958
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 959
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 963
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static blacklist initIccidStringForNoSim()Ljava/lang/String;
    .locals 1

    .line 1133
    const-string v0, "initIccidStringForNoSim"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1134
    const-string v0, "N/A"

    return-object v0
.end method

.method private blacklist isNewSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "decIccId"    # Ljava/lang/String;
    .param p3, "oldIccId"    # Ljava/lang/String;

    .line 871
    const/4 v0, 0x1

    .line 872
    .local v0, "newSim":Z
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 876
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 877
    const/4 v0, 0x0

    .line 879
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewSim newSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 881
    return v0
.end method

.method static synthetic blacklist lambda$updateSubscriptionInfoByIccId$0(Z)V
    .locals 1
    .param p0, "hasChanges"    # Z

    .line 769
    if-eqz p0, :cond_0

    .line 771
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged()V

    .line 774
    :cond_0
    const-string v0, "updateSubscriptionInfoByIccId: SubscriptionInfo update complete"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1120
    const-string v0, "MtkSubscriptionInfoUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1124
    const-string v0, "MtkSubscriptionInfoUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method private blacklist resetSimMountChangeState(I)V
    .locals 18
    .param p1, "slotId"    # I

    .line 1055
    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v0, 0x0

    .line 1056
    .local v0, "needReport":Z
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aget v2, v2, v9

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1057
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlDt:[I

    aget v2, v2, v9

    aput v2, v1, v3

    .line 1058
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 1059
    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v1

    iget-object v4, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    aget v4, v4, v1

    if-eq v2, v4, :cond_0

    .line 1060
    const/4 v0, 0x1

    .line 1061
    move v10, v0

    goto :goto_1

    .line 1058
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v10, v0

    .line 1064
    .end local v0    # "needReport":Z
    .end local v1    # "i":I
    .local v10, "needReport":Z
    :goto_1
    if-eqz v10, :cond_2

    .line 1065
    iget-object v0, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v11, v0, v3

    .line 1066
    .local v11, "newDetectedType":I
    const/4 v1, 0x1

    aget v12, v0, v1

    .line 1067
    .local v12, "newSimCount":I
    const/4 v1, 0x2

    aget v13, v0, v1

    .line 1068
    .local v13, "newValid1":I
    const/4 v1, 0x3

    aget v14, v0, v1

    .line 1069
    .local v14, "newValid2":I
    const/4 v1, 0x4

    aget v15, v0, v1

    .line 1070
    .local v15, "newValid3":I
    const/4 v1, 0x5

    aget v7, v0, v1

    .line 1071
    .local v7, "newValid4":I
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_SIM_MOUNT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1072
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "DETECTED_TYPE"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v0, "SML_SIM_COUNT"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string v0, "SML_SIM1_VALID"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    const-string v0, "SML_SIM2_VALID"

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    const-string v0, "SML_SIM3_VALID"

    invoke-virtual {v6, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    const-string v0, "SML_SIM4_VALID"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1078
    const-string v0, "phone"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1079
    const-string v0, "slot"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting ACTION_SIM_SLOT_SIM_MOUNT_CHANGE,  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aget v2, v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1084
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1085
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v16, v6

    .end local v6    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move v6, v7

    move/from16 v17, v7

    .end local v7    # "newValid4":I
    .local v17, "newValid4":I
    move/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateOldSmlInfo(IIIIIII)V

    .line 1087
    .end local v11    # "newDetectedType":I
    .end local v12    # "newSimCount":I
    .end local v13    # "newValid1":I
    .end local v14    # "newValid2":I
    .end local v15    # "newValid3":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "newValid4":I
    goto :goto_2

    .line 1088
    :cond_2
    const-string v0, "resetSimMountChangeState no  need report "

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1090
    :goto_2
    return-void
.end method

.method protected static blacklist setSubInfoInitialized()V
    .locals 1

    .line 857
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIsSubInfoInitialized:Z

    if-nez v0, :cond_0

    .line 858
    const-string v0, "SubInfo Initialized"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 859
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIsSubInfoInitialized:Z

    .line 860
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubInfoReady()V

    .line 868
    :cond_0
    return-void
.end method

.method private blacklist updateNewSmlInfo(III)V
    .locals 8
    .param p1, "detectedType"    # I
    .param p2, "simCount"    # I
    .param p3, "slotId"    # I

    .line 1093
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aput p1, v0, p3

    .line 1094
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1095
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 1096
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 1097
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v5, 0x3

    aput v3, v0, v5

    .line 1098
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v6, 0x4

    aput v3, v0, v6

    .line 1099
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v7, 0x5

    aput v3, v0, v7

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateNewSmlInfo]- ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aget v2, v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method private blacklist updateOldSmlInfo(IIIIIII)V
    .locals 2
    .param p1, "detectedType"    # I
    .param p2, "simCount"    # I
    .param p3, "valid1"    # I
    .param p4, "valid2"    # I
    .param p5, "valid3"    # I
    .param p6, "valid4"    # I
    .param p7, "slotId"    # I

    .line 1107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlDt:[I

    aput p1, v0, p7

    .line 1108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1109
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1110
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1111
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1112
    const/4 v1, 0x4

    aput p5, v0, v1

    .line 1113
    const/4 v1, 0x5

    aput p6, v0, v1

    .line 1114
    return-void
.end method

.method private blacklist updateSubName(I)V
    .locals 7
    .param p1, "subId"    # I

    .line 1023
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 1024
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    .line 1025
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1027
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v1

    .line 1029
    .local v1, "spnOverride":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "carrierName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    .line 1031
    .local v3, "slotId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubName, carrierName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1032
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1033
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1034
    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v1, p1, v2, v5, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    .end local v4    # "nameToSet":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CARD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1039
    .restart local v4    # "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN not found, set name to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1042
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, p1, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    .line 1046
    .end local v1    # "spnOverride":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    .end local v2    # "carrierName":Ljava/lang/String;
    .end local v3    # "slotId":I
    .end local v4    # "nameToSet":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private blacklist updateSubscriptionInfoIfNeed()V
    .locals 8

    .line 911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSubscriptionInfoIfNeed] before update sIccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 913
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 912
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, "needUpdate":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 927
    .local v3, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 928
    .local v4, "currentIccid":Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 929
    :cond_1
    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v4, v5, v0

    .line 930
    const/4 v1, 0x1

    .line 931
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateSubscriptionInfoIfNeed] sIccId["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 932
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needUpdate: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  !TextUtils.isEmpty(sIccId["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]): "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 934
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 938
    :cond_2
    if-eqz v1, :cond_3

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 939
    invoke-virtual {p0, v0, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    .line 911
    .end local v1    # "needUpdate":Z
    .end local v3    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v4    # "currentIccid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 942
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected blacklist areUiccAppsDisabledOnCard(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 816
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 817
    .local v0, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 818
    const-string v2, "[areUiccAppsDisabledOnCard] MtkUiccController is null."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 819
    return v1

    .line 821
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[areUiccAppsDisabledOnCard] iccid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 824
    return v1

    .line 830
    :cond_1
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 831
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    .line 832
    .local v3, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 832
    :cond_3
    :goto_0
    return v1

    .line 836
    .end local v3    # "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 837
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 838
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[areUiccAppsDisabledOnCard] IccUtils.stripTrailingFs(iccid) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    if-nez v3, :cond_5

    const-string v5, "null"

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 838
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 843
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public blacklist dispose()V
    .locals 2

    .line 885
    const-string v0, "[dispose]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 886
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mMtkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 887
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 204
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    .local v0, "index":Ljava/lang/Integer;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 276
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 254
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    goto/16 :goto_0

    .line 257
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 258
    .local v1, "slotId":I
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    aput-object v6, v3, v1

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case SIM_NO_CHANGED: set N/A for slot"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 260
    iput v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 261
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    .end local v1    # "slotId":I
    goto/16 :goto_0

    .line 234
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v2, v1, v3

    .line 236
    goto/16 :goto_0

    .line 239
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : <EVENT_RADIO_AVAILABLE> SIM"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-boolean v3, v1, v6

    .line 242
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 243
    iput v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 244
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v4, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mLockUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v2, v2, v4

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v3, v4, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateNewSmlInfo(III)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->resetSimMountChangeState(I)V

    .line 271
    monitor-exit v1

    .line 272
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    .line 227
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IOplusUiccManager;->updateSimReadyExt(I)V

    .line 229
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    .line 230
    goto :goto_0

    .line 210
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 211
    .local v1, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    if-eqz v1, :cond_5

    .line 212
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->setDataRoamingEnabledForOperator(I)V

    .line 216
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IOplusUiccManager;->handleCotaSimLoaded(Lcom/android/internal/telephony/Phone;)V

    .line 218
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    .line 219
    nop

    .line 278
    .end local v1    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleSimLoaded(I)V
    .locals 25
    .param p1, "phoneId"    # I

    .line 397
    move-object/from16 v1, p0

    move/from16 v8, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimLoaded: phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 402
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 403
    .local v9, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v9, :cond_0

    .line 404
    const-string v0, "handleSimLoaded: IccCard null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 405
    return-void

    .line 407
    :cond_0
    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    .line 408
    .local v10, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v10, :cond_1

    .line 409
    const-string v0, "handleSimLoaded: IccRecords null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 410
    return-void

    .line 412
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 413
    const-string v0, "handleSimLoaded: IccID null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 414
    return-void

    .line 425
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    .line 429
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 430
    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v11

    .line 431
    .local v11, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v11, :cond_f

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v18, v9

    goto/16 :goto_5

    .line 434
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    .line 435
    .local v14, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v15

    .line 436
    .local v15, "subId":I
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 437
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 438
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7, v15}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "operator":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 441
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v0

    if-ne v15, v0, :cond_4

    .line 442
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 444
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v6, v15}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    goto :goto_1

    .line 446
    :cond_5
    const-string v0, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 449
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "iso":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 452
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v5, v15}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    goto :goto_2

    .line 454
    :cond_6
    const-string v0, "EVENT_RECORDS_LOADED sim country iso is null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 457
    :goto_2
    invoke-virtual {v7, v15}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "msisdn":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 459
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v4, v15}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 462
    :cond_7
    invoke-virtual {v7, v15}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "imsi":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 464
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v3, v15}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setImsi(Ljava/lang/String;I)I

    .line 467
    :cond_8
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "ehplmns":[Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getPlmnsFromHplmnActRecord()[Ljava/lang/String;

    move-result-object v12

    .line 469
    .local v12, "hplmns":[Ljava/lang/String;
    if-nez v2, :cond_9

    if-eqz v12, :cond_a

    .line 470
    :cond_9
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v2, v12, v15}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;I)V

    .line 476
    :cond_a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v15}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v16

    .line 478
    .local v16, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v7, v15}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v17

    .line 480
    .local v17, "simCarrierName":Ljava/lang/String;
    move-object/from16 v18, v9

    .end local v9    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .local v18, "iccCard":Lcom/android/internal/telephony/IccCard;
    const/4 v9, 0x2

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    if-eq v0, v9, :cond_b

    .line 500
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    sget-object v19, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    sget-object v20, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v20, v20, v8

    move-object/from16 v21, v2

    .end local v2    # "ehplmns":[Ljava/lang/String;
    .local v21, "ehplmns":[Ljava/lang/String;
    move-object v2, v0

    move-object/from16 v22, v3

    .end local v3    # "imsi":Ljava/lang/String;
    .local v22, "imsi":Ljava/lang/String;
    move-object/from16 v3, v19

    move-object/from16 v19, v4

    .end local v4    # "msisdn":Ljava/lang/String;
    .local v19, "msisdn":Ljava/lang/String;
    move/from16 v4, p1

    move-object/from16 v23, v5

    .end local v5    # "iso":Ljava/lang/String;
    .local v23, "iso":Ljava/lang/String;
    move v5, v15

    move-object/from16 v24, v6

    .end local v6    # "operator":Ljava/lang/String;
    .local v24, "operator":Ljava/lang/String;
    move-object/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    .local v20, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v7, v17

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/IOplusUiccManager;->updateSimNameIfNeed(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "nameToSet":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nameSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v2

    .line 504
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v3

    .line 503
    invoke-virtual {v2, v0, v15, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    goto :goto_3

    .line 480
    .end local v0    # "nameToSet":Ljava/lang/String;
    .end local v19    # "msisdn":Ljava/lang/String;
    .end local v20    # "tm":Landroid/telephony/TelephonyManager;
    .end local v21    # "ehplmns":[Ljava/lang/String;
    .end local v22    # "imsi":Ljava/lang/String;
    .end local v23    # "iso":Ljava/lang/String;
    .end local v24    # "operator":Ljava/lang/String;
    .restart local v2    # "ehplmns":[Ljava/lang/String;
    .restart local v3    # "imsi":Ljava/lang/String;
    .restart local v4    # "msisdn":Ljava/lang/String;
    .restart local v5    # "iso":Ljava/lang/String;
    .restart local v6    # "operator":Ljava/lang/String;
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v19, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v20, v7

    .line 510
    .end local v2    # "ehplmns":[Ljava/lang/String;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "msisdn":Ljava/lang/String;
    .end local v5    # "iso":Ljava/lang/String;
    .end local v6    # "operator":Ljava/lang/String;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v19    # "msisdn":Ljava/lang/String;
    .restart local v20    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v21    # "ehplmns":[Ljava/lang/String;
    .restart local v22    # "imsi":Ljava/lang/String;
    .restart local v23    # "iso":Ljava/lang/String;
    .restart local v24    # "operator":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/IOplusUiccManager;->broadcastSimCardTypeReady(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 517
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 518
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curr_subid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 520
    .local v4, "storedSubId":I
    if-eq v4, v15, :cond_d

    .line 521
    nop

    .line 522
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preferred_network_mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 521
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 526
    .local v0, "networkType":I
    if-ne v0, v5, :cond_c

    .line 527
    sget v5, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 529
    .end local v0    # "networkType":I
    .local v5, "networkType":I
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 530
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 529
    invoke-static {v0, v7, v8}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v5    # "networkType":I
    .restart local v0    # "networkType":I
    goto :goto_4

    .line 532
    .end local v0    # "networkType":I
    .restart local v5    # "networkType":I
    :catch_0
    move-exception v0

    .line 533
    .local v0, "retrySnfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "MtkSubscriptionInfoUpdater"

    const-string v9, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 536
    .end local v5    # "networkType":I
    .local v0, "networkType":I
    :goto_4
    nop

    .line 537
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 536
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 546
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 547
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 546
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 551
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 552
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 557
    .end local v0    # "networkType":I
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    invoke-interface {v0, v8, v3}, Lcom/android/internal/telephony/IOplusUiccManager;->updateSimLoadedExt(I[Ljava/lang/String;)V

    .line 560
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "storedSubId":I
    .end local v12    # "hplmns":[Ljava/lang/String;
    .end local v14    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v15    # "subId":I
    .end local v16    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v17    # "simCarrierName":Ljava/lang/String;
    .end local v19    # "msisdn":Ljava/lang/String;
    .end local v20    # "tm":Landroid/telephony/TelephonyManager;
    .end local v21    # "ehplmns":[Ljava/lang/String;
    .end local v22    # "imsi":Ljava/lang/String;
    .end local v23    # "iso":Ljava/lang/String;
    .end local v24    # "operator":Ljava/lang/String;
    move-object/from16 v9, v18

    goto/16 :goto_0

    .line 434
    .end local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v9    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_e
    move-object/from16 v18, v9

    .end local v9    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    goto :goto_6

    .line 431
    .end local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v9    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_f
    move-object/from16 v18, v9

    .line 432
    .end local v9    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty subinfo for phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "could not update ContentResolver"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 564
    :goto_6
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 564
    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    .line 575
    const-string v0, "LOADED"

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    const/16 v2, 0xb

    invoke-virtual {v1, v8, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 577
    const/16 v2, 0xa

    invoke-virtual {v1, v8, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 578
    invoke-virtual {v1, v8, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 579
    invoke-virtual {v1, v8, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 580
    return-void
.end method

.method protected blacklist handleSimLocked(ILjava/lang/String;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hot plug in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 304
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_1

    .line 305
    const-string v1, "handleSimLocked: IccCard null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 306
    return-void

    .line 308
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 309
    .local v2, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v2, :cond_2

    .line 310
    const-string v1, "handleSimLocked: IccRecords null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 311
    return-void

    .line 324
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 325
    .local v3, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v4, ""

    .line 326
    .local v4, "tempIccid":Ljava/lang/String;
    :goto_0
    const-string v5, "ro.vendor.mtk_flight_mode_power_off_md"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 327
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v5, v5, p1

    .line 328
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 329
    const-string v5, "All iccids are not ready and iccid changed"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 330
    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v1, v5, p1

    .line 331
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 334
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    .line 337
    const-string v1, "LOCKED"

    invoke-virtual {p0, p1, v1, p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    const/16 v5, 0xb

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 339
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->getSimStateFromLockedReason(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 340
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 341
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 342
    return-void
.end method

.method protected blacklist handleSimNotReady(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimNotReady: phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "isFinalState":Z
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 350
    .local v1, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->areUiccAppsDisabledOnCard(I)Z

    move-result v2

    .line 357
    .local v2, "uiccAppsDisabled":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    .line 364
    .local v3, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 368
    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sInactiveIccIds:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 370
    :cond_0
    const/4 v0, 0x1

    .line 376
    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    aput-object v5, v4, p1

    .line 377
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    .line 386
    :goto_0
    const/4 v4, 0x0

    const-string v5, "NOT_READY"

    invoke-virtual {p0, p1, v5, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    const/16 v4, 0xb

    invoke-virtual {p0, p1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 389
    const/4 v4, 0x6

    invoke-virtual {p0, p1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 390
    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 393
    :cond_2
    return-void
.end method

.method protected blacklist isAllIccIdQueryDone()Z
    .locals 3

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 191
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Iccid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    return v1

    .line 197
    .end local v0    # "i":I
    :cond_2
    const-string v0, "All IccIds query complete"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist onMultiSimConfigChanged()V
    .locals 4

    .line 282
    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->onMultiSimConfigChanged()V

    .line 284
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 285
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 286
    .local v0, "activeModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSimConfigChangedcase activeModemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SUPPORTED_MODEM_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 290
    move v1, v0

    .local v1, "phoneId":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    if-ge v1, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "phoneId":I
    :cond_0
    return-void
.end method

.method public blacklist triggerUpdateInternalSimMountState(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerUpdateInternalSimMountState slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1051
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 1052
    return-void
.end method

.method protected declared-synchronized blacklist updateSubscriptionInfoByIccId(IZ)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "updateEmbeddedSubs"    # Z

    move-object/from16 v1, p0

    move/from16 v8, p1

    monitor-enter p0

    .line 585
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId:+ Start - phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 586
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSubscriptionInfoByIccId]- invalid phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 588
    monitor-exit p0

    return-void

    .line 597
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusUiccManager;->enableHypnusAction()V

    .line 600
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 601
    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    .line 602
    .local v9, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 603
    .local v0, "oldIccId":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 604
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v11, v0

    goto :goto_0

    .line 606
    :cond_1
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    move-object v0, v2

    move-object v11, v0

    .line 608
    .end local v0    # "oldIccId":Ljava/lang/String;
    .local v11, "oldIccId":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId: removing subscription info record: phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldIccId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->clearSubInfoRecord(I)V

    .line 620
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId: adding subscription info record: iccid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    .line 622
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 624
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2, v8}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 628
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 629
    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 631
    .local v12, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v13, 0x1

    if-eqz v12, :cond_5

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 634
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 635
    .local v3, "temp":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 643
    .local v4, "value":Landroid/content/ContentValues;
    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 644
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 643
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "msisdn":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 648
    const-string v6, "number"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 650
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v7

    .line 649
    const/4 v14, 0x0

    invoke-virtual {v6, v7, v4, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 651
    const/4 v0, 0x1

    .line 633
    .end local v3    # "temp":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "value":Landroid/content/ContentValues;
    .end local v5    # "msisdn":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 654
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 657
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 664
    .end local v0    # "changed":Z
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 665
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 666
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-virtual {v0, v2, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    .line 670
    .local v14, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v14, v0}, Lcom/mediatek/internal/telephony/MtkDefaultSmsSimSettings;->setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V

    .line 677
    const-string v0, "ro.vendor.mtk_external_sim_support"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_6

    const-string v0, "ro.vendor.mtk_non_dsda_rsim_support"

    .line 678
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_6

    .line 680
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 682
    .local v0, "rsimPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 683
    .local v2, "rsimSubId":[I
    if-ltz v0, :cond_6

    .line 684
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    if-eqz v2, :cond_6

    array-length v3, v2

    if-eqz v3, :cond_6

    .line 686
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v3

    aget v4, v2, v10

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubId(I)V

    .line 710
    .end local v0    # "rsimPhoneId":I
    .end local v2    # "rsimSubId":[I
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 711
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IOplusUiccManager;->calculateDataSubId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 713
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->setSubInfoInitialized()V

    .line 718
    :cond_7
    const/4 v0, -0x1

    .line 719
    .local v0, "detectedType":I
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 721
    .local v15, "decIccId":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    if-eqz v2, :cond_8

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    .line 722
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 723
    const/4 v0, 0x2

    move v7, v0

    goto :goto_2

    .line 724
    :cond_8
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-direct {v1, v2, v15, v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 725
    const/4 v0, 0x1

    move v7, v0

    goto :goto_2

    .line 727
    :cond_9
    const/4 v0, 0x4

    move v7, v0

    .line 730
    .end local v0    # "detectedType":I
    .local v7, "detectedType":I
    :goto_2
    if-nez v14, :cond_a

    move v0, v10

    goto :goto_3

    :cond_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    move v6, v0

    .line 733
    .local v6, "subCount":I
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsSmlLockMode:Z

    if-eqz v0, :cond_b

    .line 734
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mLockUpdate:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 735
    :try_start_2
    invoke-direct {v1, v7, v6, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateNewSmlInfo(III)V

    .line 736
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->resetSimMountChangeState(I)V

    .line 737
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 743
    :cond_b
    :goto_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/IOplusUiccManager;->updateSubscriptionInfoByIccIdExt(Landroid/content/Context;[Ljava/lang/String;)V

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 747
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v2

    const/4 v0, 0x0

    move-object v3, v5

    move/from16 v4, p1

    move-object v10, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    move v5, v7

    move/from16 v17, v6

    .end local v6    # "subCount":I
    .local v17, "subCount":I
    move v13, v7

    .end local v7    # "detectedType":I
    .local v13, "detectedType":I
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V

    .line 751
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    move-object v2, v0

    .line 752
    .local v2, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    move-object v3, v0

    .line 753
    .local v3, "uiccSlots":[Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v3, :cond_e

    if-eqz p2, :cond_e

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 755
    .local v4, "cardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v5, v3

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_d

    aget-object v0, v3, v6

    move-object v7, v0

    .line 756
    .local v7, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_c

    .line 759
    nop

    .line 760
    :try_start_4
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 761
    .local v0, "cardId":I
    move-object/from16 v16, v2

    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .local v16, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 764
    .end local v0    # "cardId":I
    goto :goto_7

    .line 762
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 763
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_6
    :try_start_6
    const-string v2, "updateSubscriptionInfoByIccId uiccSlots.getUiccCard() is null."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_7

    .line 756
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_c
    move-object/from16 v16, v2

    .line 755
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .end local v7    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto :goto_5

    .line 768
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_d
    move-object/from16 v16, v2

    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    sget-object v0, Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;->INSTANCE:Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;

    invoke-virtual {v1, v4, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateEmbeddedSubscriptions(Ljava/util/List;Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;)V

    goto :goto_8

    .line 753
    .end local v4    # "cardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_e
    move-object/from16 v16, v2

    .line 783
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_8
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId: SubscriptionInfo update complete: phoneId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " detectedType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    .end local v17    # "subCount":I
    .local v2, "subCount":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 791
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsMultiSimSettingControllerInitialized:Z

    if-nez v0, :cond_f

    .line 792
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsMultiSimSettingControllerInitialized:Z

    .line 793
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyAllSubscriptionLoaded()V

    .line 797
    :cond_f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/IOplusUiccManager;->setOperatorConf([Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 801
    :cond_10
    monitor-exit p0

    return-void

    .line 584
    .end local v2    # "subCount":I
    .end local v3    # "uiccSlots":[Lcom/android/internal/telephony/uicc/UiccSlot;
    .end local v9    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "oldIccId":Ljava/lang/String;
    .end local v12    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v13    # "detectedType":I
    .end local v14    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v15    # "decIccId":Ljava/lang/String;
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .end local p1    # "phoneId":I
    .end local p2    # "updateEmbeddedSubs":Z
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
