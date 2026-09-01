.class public Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;
    }
.end annotation


# static fields
.field private static blacklist ACTION_BOOT_COMPLETE:Ljava/lang/String; = null

.field private static final blacklist DBG:Z = true

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DSSelector"

.field private static final blacklist USER_BUILD:Z

.field private static blacklist mOperatorSpec:Ljava/lang/String;


# instance fields
.field private blacklist mAirplaneModeOn:Z

.field protected final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIsInRoaming:Z

.field private blacklist mIsNeedPreCheck:Z

.field private blacklist mIsNeedWaitAirplaneModeOff:Z

.field private blacklist mIsNeedWaitAirplaneModeOffRoaming:Z

.field private blacklist mIsWaitIccid:Z

.field private blacklist mPrefNetworkModeObserver:Landroid/database/ContentObserver;

.field private blacklist mProtocolHandler:Landroid/os/Handler;

.field private blacklist mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mUpdateNWTypeHandler:Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 54
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->USER_BUILD:Z

    .line 77
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->ACTION_BOOT_COMPLETE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 58
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    .line 59
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsWaitIccid:Z

    .line 62
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedPreCheck:Z

    .line 63
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 64
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    .line 66
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    .line 70
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 72
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsInRoaming:Z

    .line 75
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 80
    new-instance v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 316
    new-instance v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mUpdateNWTypeHandler:Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;

    .line 130
    const-string v0, "DataSubSelector is created"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 131
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, "OM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->ACTION_BOOT_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    .line 146
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->initOpDataSubSelector(Landroid/content/Context;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->initSimSwitchForDSS(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    if-nez v1, :cond_1

    .line 153
    new-instance v1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 156
    :cond_1
    invoke-static {p1, p0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->getInstance(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 158
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;->init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    .line 159
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    invoke-interface {v1, p0, v2}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;)V

    .line 161
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->registerPrefNetworkModeObserver()V

    .line 162
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$1000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->ACTION_BOOT_COMPLETE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 52
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleBootCompleteAction()V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 52
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handlePrefNetworkModeChanged()V

    return-void
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkModeUtil(II)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleDefaultDataChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return v0
.end method

.method static synthetic blacklist access$402(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return p1
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleAirPlaneModeOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return v0
.end method

.method static synthetic blacklist access$602(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return p1
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleSubinfoRecordUpdated(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handlePlmnChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 52
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleConnectivityAction()V

    return-void
.end method

.method private blacklist handleAirPlaneModeOff(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 232
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleAirPlaneModeOff(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method private blacklist handleBootCompleteAction()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleBootCompleteAction()V

    .line 245
    return-void
.end method

.method private blacklist handleConnectivityAction()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleConnectivityAction()V

    .line 241
    return-void
.end method

.method private blacklist handleDefaultDataChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleDefaultDataChanged(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method private blacklist handlePlmnChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handlePlmnChanged(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private blacklist handlePrefNetworkModeChanged()V
    .locals 3

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 211
    .local v0, "defDataSubId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 213
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 217
    .end local v1    # "defDataPhoneId":I
    :cond_0
    return-void
.end method

.method private blacklist handleSimStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleSimStateChanged(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private blacklist handleSubinfoRecordUpdated(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleSubinfoRecordUpdated(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method private blacklist initOpDataSubSelector(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    nop

    .line 167
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 168
    nop

    .line 169
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataSubSelectorOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mDataSubSelectorOPExt init fail"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist initSimSwitchForDSS(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    nop

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 180
    nop

    .line 181
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSimSwitchForDSSOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mSimSwitchForDSSExt init fail"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .line 397
    const-string v0, "DSSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .line 403
    const-string v0, "DSSelector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method private blacklist registerPrefNetworkModeObserver()V
    .locals 6

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 190
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 191
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 192
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist updateNetworkModeUtil(II)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating network mode for subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 355
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 357
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mUpdateNWTypeHandler:Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;

    .line 358
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 357
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 360
    return-void
.end method


# virtual methods
.method public blacklist getAirPlaneModeOn()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method public blacklist getDataSubSelectorOpExt()Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    return-object v0
.end method

.method public blacklist getIsNeedPreCheck()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedPreCheck:Z

    return v0
.end method

.method public blacklist getIsWaitIccid()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsWaitIccid:Z

    return v0
.end method

.method public blacklist getPhoneNum()I
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 312
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 311
    return v0
.end method

.method public blacklist setDataEnabled(IZ)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataEnabled: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 271
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_3

    .line 272
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 273
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_2

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 276
    .local v1, "phoneSubId":I
    const-string v2, " to disable"

    const-string v3, "Set Sub"

    if-nez p2, :cond_1

    .line 277
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_2

    .line 281
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 282
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 283
    if-eq v4, p1, :cond_2

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 285
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 287
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 288
    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 281
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "phoneSubId":I
    .end local v4    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist setDefaultData(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 298
    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 299
    .local v1, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 301
    .local v2, "currSub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultDataSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current default sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 302
    if-eq v1, v2, :cond_0

    const/4 v3, -0x1

    if-lt v1, v3, :cond_0

    .line 303
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v3

    .line 304
    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    goto :goto_0

    .line 306
    :cond_0
    const-string v3, "setDefaultDataSubId: default data unchanged"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void
.end method

.method public blacklist setIsNeedPreCheck(Z)V
    .locals 0
    .param p1, "isNeedPreCheck"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedPreCheck:Z

    .line 265
    return-void
.end method

.method public blacklist setIsWaitIccid(Z)V
    .locals 0
    .param p1, "isWaitIccid"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsWaitIccid:Z

    .line 257
    return-void
.end method

.method public blacklist updateNetworkMode(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 323
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 324
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 325
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v1, :cond_0

    .line 326
    const-string v2, "subInfoList null"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 327
    return-void

    .line 330
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mProtocolHandler:Landroid/os/Handler;

    .line 331
    new-instance v2, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;

    invoke-direct {v2, p0, v1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/util/List;I)V

    .line 350
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mProtocolHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void
.end method
