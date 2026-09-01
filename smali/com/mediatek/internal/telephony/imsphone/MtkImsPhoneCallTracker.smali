.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.source "MtkImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_RESUME_BACKROUND_CALL:I = 0x68

.field private static final blacklist EVENT_RETRY_DATA_ENABLED_CHANGED:I = 0x69

.field private static final blacklist EVENT_ROAMING_OFF:I = 0x66

.field private static final blacklist EVENT_ROAMING_ON:I = 0x65

.field private static final blacklist EVENT_ROAMING_SETTING_CHANGE:I = 0x67

.field private static final blacklist IMS_RTT_CALL_TYPE_CS:I = 0x0

.field private static final blacklist IMS_RTT_CALL_TYPE_CS_NO_TTY:I = 0x3

.field private static final blacklist IMS_RTT_CALL_TYPE_PS:I = 0x2

.field private static final blacklist IMS_RTT_CALL_TYPE_RTT:I = 0x1

.field public static final blacklist IMS_SESSION_MODIFY_OPERATION_FLAG:I = 0x8000

.field private static final blacklist IMS_VIDEO_CALL:I = 0x15

.field private static final blacklist IMS_VIDEO_CONF:I = 0x17

.field private static final blacklist IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final blacklist IMS_VOICE_CALL:I = 0x14

.field private static final blacklist IMS_VOICE_CONF:I = 0x16

.field private static final blacklist IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final blacklist INVALID_CALL_MODE:I = 0xff

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkImsPhoneCallTracker"

.field private static final blacklist PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final blacklist SENLOG:Z

.field private static final blacklist TELDBG:Z


# instance fields
.field private blacklist mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mCarrierSwitchWfcModeRequired:Z

.field private blacklist mDialAsECC:Z

.field private blacklist mIgnoreDataRoaming:Z

.field protected blacklist mImsBaseReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mImsRegistrationErrorCode:I

.field private blacklist mImsRttCallType:I

.field private blacklist mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

.field private blacklist mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

.field private blacklist mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

.field private blacklist mIsDataRoaming:Z

.field private blacklist mIsDataRoamingSettingEnabled:Z

.field private blacklist mIsImsEccSupported:Z

.field private blacklist mIsOnCallResumed:Z

.field private blacklist mIsRttCallMergeSupported:Z

.field private blacklist mIsRttEmcGuardTimerSupported:Z

.field private blacklist mLastDataEnabledReason:I

.field private blacklist mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private blacklist mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field protected final blacklist mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private blacklist mRoamingVariablesInited:Z

.field private blacklist mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mWifiPdnOOSState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 143
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    .line 144
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 147
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "RG"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 148
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "FG"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 149
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "BG"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 150
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "HO"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    .line 160
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsOnCallResumed:Z

    .line 167
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttEmcGuardTimerSupported:Z

    .line 169
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z

    .line 171
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I

    .line 175
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z

    .line 178
    new-instance v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 205
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 206
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    .line 207
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    .line 210
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    .line 212
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    .line 217
    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 242
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 244
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 813
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 1193
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 1211
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1227
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    .line 288
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    .line 289
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setRttEmcGuardTimerSupported(Z)V

    .line 293
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerIndicationReceiver()V

    .line 295
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v1, "intentfilter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v2, "multiSimConfigChanged":Landroid/content/IntentFilter;
    const-string v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    new-instance v3, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerSettingsObserver()V

    .line 306
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 307
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 310
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const/16 v4, 0x66

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->initRttEmcGuardTimer()V

    .line 317
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z

    return v0
.end method

.method static synthetic blacklist access$1001(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z

    return p1
.end method

.method static synthetic blacklist access$1101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$1201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$1501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$1601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$1701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method static synthetic blacklist access$1900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$2000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$2100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->dialPendingMO()V

    return-void
.end method

.method static synthetic blacklist access$2200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$2301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$2401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$2501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$2601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$2701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$2800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 139
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$3000()Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z

    return p1
.end method

.method static synthetic blacklist access$3100()Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    return v0
.end method

.method static synthetic blacklist access$3200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$3301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$3401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$3501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$3601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$3701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$3800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$3901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$4000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$4101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$4200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$4301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$4400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$4501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$4601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$4701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$4801(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$4900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$5000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$502(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I

    return p1
.end method

.method static synthetic blacklist access$5100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$5200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$5300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$5400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$5500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$5600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$5700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$5800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$5900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/ims/MtkImsConnectionStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic blacklist access$6500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    return-object v0
.end method

.method static synthetic blacklist access$6702(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 139
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    return-object p1
.end method

.method static synthetic blacklist access$6800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$6900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 139
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->notifyRttImsRegister(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void
.end method

.method static synthetic blacklist access$7000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$7100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic blacklist access$7200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic blacklist access$7300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$7400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$7500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic blacklist access$7600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic blacklist access$7700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$801(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1492
    if-nez p1, :cond_0

    .line 1493
    const/4 v0, 0x0

    return-object v0

    .line 1496
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    const-string v0, "conferenceCall"

    return-object v0

    .line 1499
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;
    .locals 3
    .param p1, "conn"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1470
    const-string v0, ""

    if-nez p1, :cond_0

    .line 1471
    return-object v0

    .line 1474
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getCallId()I

    move-result v1

    .line 1475
    .local v1, "callId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1476
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getCallIdBeforeDisconnected()I

    move-result v1

    .line 1477
    if-ne v1, v2, :cond_1

    .line 1478
    return-object v0

    .line 1481
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isRttCall(Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 572
    if-eqz p1, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    return v0

    .line 575
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isRttCallInvolved(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 3
    .param p1, "fgImsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "bgImsCall"    # Lcom/android/ims/ImsCall;

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCall(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCall(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x1

    .line 567
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRttCallInvolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 568
    return v0
.end method

.method private blacklist isRttCallMergeSupported()Z
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRttCallMergeSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 580
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    return v0
.end method

.method private blacklist isTestSim()Z
    .locals 3

    .line 2059
    const/4 v0, 0x0

    .line 2060
    .local v0, "isTestSim":Z
    const-string v1, "vendor.gsm.sim.ril.testsim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2061
    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2062
    const-string v1, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2063
    const-string v1, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 2064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2065
    return v0
.end method

.method private blacklist notifyRttImsRegister(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 6
    .param p1, "capability"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRttImsRegister: capability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2009
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2010
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2011
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2012
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2013
    .local v1, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 2019
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2020
    nop

    .line 2021
    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    .line 2022
    .local v2, "isVoiceCapability":Z
    if-eqz v2, :cond_1

    .line 2023
    const-string v3, "ims_rtt_capability=1"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2024
    const-string v3, "notifyRttImsRegister: set audio RTT capability"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2026
    :cond_1
    const-string v3, "ims_rtt_capability=0"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2027
    const-string v3, "notifyRttImsRegister: remove audio RTT capability"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2030
    .end local v2    # "isVoiceCapability":Z
    :cond_2
    :goto_0
    return-void

    .line 2014
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRttImsRegister: telephony = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-nez v0, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", audioManager = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2016
    return-void
.end method

.method private blacklist onDataRoamingEnabledChanged(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataRoamingEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1850
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    const-string v1, "enabled"

    const-string v2, "disabled"

    if-nez v0, :cond_1

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataRoamingEnabledChanged: Ignore data "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - carrier policy indicates that data is not metered for ViLTE calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1853
    return-void

    .line 1856
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    if-eqz v0, :cond_3

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataRoaming: Ignore data "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - carrier policy indicates that ignore data roaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1859
    return-void

    .line 1862
    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    if-nez v0, :cond_4

    .line 1863
    const-string v0, "onDataRoamingEnabledChanged: Ignore on when data off"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1864
    return-void

    .line 1869
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1870
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 1871
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 1872
    .local v2, "isLocalVideoCapable":Z
    :cond_6
    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 1873
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "isLocalVideoCapable":Z
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_2

    .line 1875
    :cond_7
    const/4 v0, 0x2

    .line 1876
    .local v0, "reason":I
    const/16 v1, 0x57e

    .line 1880
    .local v1, "reasonCode":I
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->maybeNotifyDataDisabled(ZI)V

    .line 1882
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->handleDataEnabledChange(ZI)V

    .line 1886
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    .line 1890
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 1892
    :cond_8
    return-void
.end method

.method private blacklist registerIndicationReceiver()V
    .locals 3

    .line 1328
    const-string v0, "registerIndicationReceiver"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1331
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1334
    return-void
.end method

.method private blacklist sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRttSrvccOrCsfbEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1948
    if-nez p1, :cond_0

    .line 1949
    const-string v0, "sendRttSrvccOrCsfbEvent no call"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1950
    return-void

    .line 1952
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCall(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1953
    const-string v0, "sendRttSrvccOrCsfbEvent: not for RTT call"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1954
    return-void

    .line 1956
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1957
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1958
    .local v0, "activeCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 1959
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1960
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 1962
    const-string v2, "mediatek.telecom.event.EVENT_CSFB"

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1966
    :cond_2
    const-string v2, "mediatek.telecom.event.EVENT_SRVCC"

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1971
    .end local v0    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_3
    :goto_0
    return-void
.end method

.method public static blacklist sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 1698
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1701
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 1699
    :cond_1
    :goto_0
    const-string v0, "MtkImsPhoneCallTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 3
    .param p1, "imsPhoneCall"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1375
    const-string v0, "setCallTerminationFlag"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1379
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallTerminationFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no ims call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1381
    return-void

    .line 1384
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/MtkImsCall;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/MtkImsCall;->setTerminationRequestFlag(Z)V

    .line 1385
    return-void
.end method

.method private blacklist unregisterIndicationReceiver()V
    .locals 2

    .line 1337
    const-string v0, "unregisterIndicationReceiver"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1340
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .locals 5
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_1

    .line 523
    move v0, p1

    .line 525
    .local v0, "videoStateAfterCheckingData":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isDataAvailableForViLTE()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 526
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 528
    const-string v1, "Data is off, answer as voice call"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const-string v2, "CC"

    const-string v3, "Answer"

    const-string v4, ""

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 532
    invoke-super {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    .line 533
    return-void

    .line 519
    .end local v0    # "videoStateAfterCheckingData":I
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot accept call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized blacklist addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    monitor-enter p0

    .line 668
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 670
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    :cond_0
    monitor-exit p0

    return-void

    .line 667
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist cacheCarrierConfiguration(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 1907
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    .line 1909
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1910
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1911
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_0

    .line 1912
    const-string v1, "cacheCarrierConfiguration: No carrier config service found."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1913
    return-void

    .line 1916
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1917
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    .line 1918
    const-string v2, "cacheCarrierConfiguration: Empty carrier config."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1919
    return-void

    .line 1922
    :cond_1
    const-string v2, "mtk_ignore_data_roaming_for_video_calls"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    .line 1924
    const-string v2, "allow_merging_rtt_calls_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    .line 1927
    const-string v2, "mtk_emc_rtt_guard_timer_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttEmcGuardTimerSupported:Z

    .line 1930
    const-string v2, "mtk_carrier_switch_wfc_mode_required_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    .line 1933
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isTestSim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1934
    nop

    .line 1935
    const-string v2, "persist.vendor.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isVTDataMeteredByOpid(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 1936
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    .line 1937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheCarrierConfiguration: For test sim, mIsViLteDataMetered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1940
    :cond_2
    return-void
.end method

.method protected blacklist callEndCleanupHandOverCallIfAny()V
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 626
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC: remove connection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 627
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 628
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 631
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 632
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 635
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 640
    const-string v0, "SRVCC: notify ImsPhone state as idle."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 643
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 644
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getCallStateChangeAsyncResult()Landroid/os/AsyncResult;

    move-result-object v1

    .line 643
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 648
    :cond_1
    return-void
.end method

.method protected blacklist canDailOnCallTerminated()Z
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist checkForDialIssues()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 586
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->shouldProcessSelfActivation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    const-string v0, "IMS: checkForDialIssues(), bypass checkForDialIssues for self activation"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 588
    return-void

    .line 590
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForDialIssues()V

    .line 591
    return-void
.end method

.method protected blacklist checkIncomingCallInRttEmcGuardTime(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1634
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->checkIncomingCallInRttEmcGuardTime(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1635
    return-void
.end method

.method protected blacklist checkforCsfb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "cs_fallback"

    if-gtz v0, :cond_2

    .line 1560
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1562
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1563
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    .line 1564
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 1565
    :cond_0
    const-string v2, "There are CS connections, trigger CSFB!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1566
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1569
    .end local v0    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_0
    return-void

    .line 1550
    :cond_2
    const-string v0, "SRVCC: there are connections during handover, trigger CSFB!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1551
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist conference()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " merge with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 547
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    const-string v2, "CC"

    const-string v3, "Conference"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_0

    .line 551
    const-string v0, "Can\'t merge during swap call."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 552
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 555
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 554
    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCallInvolved(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCallMergeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    return-void

    .line 559
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    .line 560
    return-void
.end method

.method public declared-synchronized blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_0

    .line 374
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 371
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot dial call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local p1    # "dialString":Ljava/lang/String;
    .end local p2    # "dialArgs":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V
    .locals 16
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "retryCallFailCause"    # I
    .param p5, "retryCallFailNetworkType"    # I
    .param p6, "intentExtras"    # Landroid/os/Bundle;

    .line 381
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    if-nez v2, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v0

    const-wide/16 v4, 0x1f4

    const/16 v6, 0x12

    if-nez v0, :cond_2

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x4e

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 389
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 390
    invoke-virtual {v1, v6, v4, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    return-void

    .line 395
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setMute(Z)V

    .line 400
    const/4 v7, 0x0

    .line 401
    .local v7, "isEmergencyCall":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v8

    if-nez v8, :cond_3

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    .line 406
    :cond_3
    const/4 v8, 0x1

    if-eqz v7, :cond_4

    .line 407
    const/4 v9, 0x2

    goto :goto_0

    :cond_4
    move v9, v8

    .line 410
    .local v9, "serviceType":I
    :goto_0
    iget-boolean v10, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    if-eqz v10, :cond_5

    .line 411
    const/4 v9, 0x2

    .line 412
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dial as ECC: conn.getAddress(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 413
    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    .line 415
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v10

    .line 417
    .local v10, "callType":I
    move/from16 v11, p3

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 420
    :try_start_0
    new-array v12, v8, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v0

    .line 421
    .local v12, "callees":[Ljava/lang/String;
    iget-object v13, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v13, v9, v10}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v13

    .line 422
    .local v13, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 423
    const-string v14, "conference"

    invoke-virtual {v13, v14, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 425
    :cond_6
    const-string v14, "oir"
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    move/from16 v15, p2

    :try_start_1
    invoke-virtual {v13, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 426
    const-string v14, "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move/from16 v4, p4

    :try_start_2
    invoke-virtual {v13, v14, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 428
    const-string v5, "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v14, p5

    :try_start_3
    invoke-virtual {v13, v5, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 431
    if-eqz v7, :cond_7

    .line 433
    invoke-virtual {v1, v13, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setEmergencyCallInfo(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/Connection;)V

    .line 438
    :cond_7
    if-eqz v3, :cond_b

    .line 439
    const-string v5, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 440
    const-string v5, "DisplayText"

    const-string v6, "android.telecom.extra.CALL_SUBJECT"

    .line 441
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 440
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 447
    iget-object v5, v13, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v8, v5, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 450
    :cond_9
    const-string v5, "CallPull"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 451
    iget-object v5, v13, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v6, "CallPull"

    const-string v0, "CallPull"

    .line 452
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 451
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    const-string v0, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 455
    .local v0, "dialogId":I
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsPulledCall(Z)V

    .line 456
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPulledDialogId(I)V

    .line 460
    .end local v0    # "dialogId":I
    :cond_a
    iget-object v0, v13, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 473
    :cond_b
    array-length v0, v12

    if-ne v0, v8, :cond_c

    const-string v0, "conference"

    .line 474
    invoke-virtual {v13, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 475
    const-string v0, "oi"

    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-virtual {v13, v0, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_c
    monitor-enter p0
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 486
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getParticipantsToDial()[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_d
    move-object v5, v12

    :goto_1
    iget-object v6, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 486
    invoke-virtual {v0, v13, v5, v6}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 489
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 491
    iget-object v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v6

    .line 492
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v8

    .line 491
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V

    .line 494
    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 495
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V

    .line 496
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowHoldingVideoCall(Z)V

    .line 497
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v7    # "isEmergencyCall":Z
    .end local v9    # "serviceType":I
    .end local v10    # "callType":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local p2    # "clirMode":I
    .end local p3    # "videoState":I
    .end local p4    # "retryCallFailCause":I
    .end local p5    # "retryCallFailNetworkType":I
    .end local p6    # "intentExtras":Landroid/os/Bundle;
    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 504
    .end local v12    # "callees":[Ljava/lang/String;
    .end local v13    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .restart local v7    # "isEmergencyCall":Z
    .restart local v9    # "serviceType":I
    .restart local v10    # "callType":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .restart local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local p2    # "clirMode":I
    .restart local p3    # "videoState":I
    .restart local p4    # "retryCallFailCause":I
    .restart local p5    # "retryCallFailNetworkType":I
    .restart local p6    # "intentExtras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto :goto_8

    .line 498
    :catch_1
    move-exception v0

    goto :goto_6

    .line 504
    :catch_2
    move-exception v0

    goto :goto_3

    .line 498
    :catch_3
    move-exception v0

    goto :goto_5

    .line 504
    :catch_4
    move-exception v0

    goto :goto_2

    .line 498
    :catch_5
    move-exception v0

    goto :goto_4

    .line 504
    :catch_6
    move-exception v0

    move/from16 v15, p2

    :goto_2
    move/from16 v4, p4

    :goto_3
    move/from16 v14, p5

    goto :goto_8

    .line 498
    :catch_7
    move-exception v0

    move/from16 v15, p2

    :goto_4
    move/from16 v4, p4

    :goto_5
    move/from16 v14, p5

    .line 499
    .local v0, "e":Lcom/android/ims/ImsException;
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialInternal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 500
    iget-object v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialInternal exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 501
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 502
    const-wide/16 v5, 0x1f4

    const/16 v8, 0x12

    invoke-virtual {v1, v8, v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->retryGetImsService()V

    .line 505
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_7
    nop

    .line 506
    :goto_8
    return-void
.end method

.method public blacklist dispose()V
    .locals 3

    .line 321
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 323
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 324
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->clearDisconnected()V

    .line 328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {v0, p0}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterIndicationReceiver()V

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->resetImsCapabilities()V

    .line 342
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 345
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 348
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 352
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 353
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->disposeRttEmcGuardTimer()V

    .line 358
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->removeImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose() : removeRegistrationListener failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 365
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected blacklist getCallStateChangeAsyncResult()Landroid/os/AsyncResult;
    .locals 3

    .line 1628
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public blacklist getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "callState"    # Lcom/android/internal/telephony/Call$State;

    .line 695
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v0

    .line 696
    .local v0, "code":I
    const/16 v1, 0x640

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 807
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    return v1

    .line 707
    :pswitch_0
    const/16 v1, 0x193

    return v1

    .line 705
    :pswitch_1
    const/16 v1, 0x192

    return v1

    .line 703
    :pswitch_2
    const/16 v1, 0x191

    return v1

    .line 701
    :pswitch_3
    const/16 v1, 0x190

    return v1

    .line 711
    :pswitch_4
    const/16 v1, 0x3ee

    return v1

    .line 709
    :pswitch_5
    const/16 v1, 0x3ed

    return v1

    .line 699
    :pswitch_6
    const/16 v1, 0x17c

    return v1

    .line 800
    :pswitch_7
    const/16 v1, 0x3f3

    return v1

    .line 798
    :pswitch_8
    const/16 v1, 0x3f2

    return v1

    .line 796
    :pswitch_9
    const/16 v1, 0x3f0

    return v1

    .line 794
    :pswitch_a
    const/16 v1, 0x3f1

    return v1

    .line 792
    :pswitch_b
    const/16 v1, 0x603

    return v1

    .line 790
    :pswitch_c
    const/16 v1, 0x602

    return v1

    .line 788
    :pswitch_d
    const/16 v1, 0x601

    return v1

    .line 786
    :pswitch_e
    const/16 v1, 0x600

    return v1

    .line 784
    :pswitch_f
    const/16 v1, 0x5ff

    return v1

    .line 782
    :pswitch_10
    const/16 v1, 0x5fe

    return v1

    .line 780
    :pswitch_11
    const/16 v1, 0x5fd

    return v1

    .line 778
    :pswitch_12
    const/16 v1, 0x5fc

    return v1

    .line 776
    :pswitch_13
    const/16 v1, 0x5fb

    return v1

    .line 774
    :pswitch_14
    const/16 v1, 0x5fa

    return v1

    .line 772
    :pswitch_15
    const/16 v1, 0x5f9

    return v1

    .line 770
    :pswitch_16
    const/16 v1, 0x5f8

    return v1

    .line 768
    :pswitch_17
    const/16 v1, 0x5f7

    return v1

    .line 766
    :pswitch_18
    const/16 v1, 0x5f6

    return v1

    .line 764
    :pswitch_19
    const/16 v1, 0x5f5

    return v1

    .line 762
    :pswitch_1a
    const/16 v1, 0x5f4

    return v1

    .line 760
    :pswitch_1b
    const/16 v1, 0x5f3

    return v1

    .line 758
    :pswitch_1c
    const/16 v1, 0x5f2

    return v1

    .line 756
    :pswitch_1d
    const/16 v1, 0x5f1

    return v1

    .line 754
    :pswitch_1e
    const/16 v1, 0x5f0

    return v1

    .line 752
    :pswitch_1f
    const/16 v1, 0x5ef

    return v1

    .line 750
    :pswitch_20
    const/16 v1, 0x5ee

    return v1

    .line 748
    :pswitch_21
    const/16 v1, 0x5ed

    return v1

    .line 746
    :pswitch_22
    const/16 v1, 0x5ec

    return v1

    .line 744
    :pswitch_23
    const/16 v1, 0x5eb

    return v1

    .line 742
    :pswitch_24
    const/16 v1, 0x5ea

    return v1

    .line 740
    :pswitch_25
    const/16 v1, 0x5e9

    return v1

    .line 738
    :pswitch_26
    const/16 v1, 0x5e8

    return v1

    .line 736
    :pswitch_27
    const/16 v1, 0x5e7

    return v1

    .line 734
    :pswitch_28
    const/16 v1, 0x5e6

    return v1

    .line 732
    :pswitch_29
    const/16 v1, 0x5e5

    return v1

    .line 730
    :pswitch_2a
    const/16 v1, 0x5e4

    return v1

    .line 728
    :pswitch_2b
    const/16 v1, 0x5e3

    return v1

    .line 726
    :pswitch_2c
    const/16 v1, 0x5e2

    return v1

    .line 724
    :pswitch_2d
    const/16 v1, 0x5e1

    return v1

    .line 722
    :pswitch_2e
    const/16 v1, 0x5e0

    return v1

    .line 720
    :pswitch_2f
    const/16 v1, 0x5df

    return v1

    .line 718
    :pswitch_30
    const/16 v1, 0x5de

    return v1

    .line 716
    :pswitch_31
    const/16 v1, 0x5dd

    return v1

    .line 714
    :pswitch_32
    const/16 v1, 0x5dc

    return v1

    .line 803
    :cond_0
    const/16 v1, 0x51

    return v1

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf001
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf00b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist getHangupReasionInfo(IZ)I
    .locals 1
    .param p1, "disconnectCause"    # I
    .param p2, "rejectCall"    # Z

    .line 1976
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    .line 1977
    const/16 v0, 0x2350

    return v0

    .line 1978
    :cond_0
    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_1

    .line 1979
    const/16 v0, 0x2352

    return v0

    .line 1980
    :cond_1
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_2

    .line 1981
    const/16 v0, 0x2351

    return v0

    .line 1982
    :cond_2
    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_3

    .line 1983
    const/16 v0, 0x2353

    return v0

    .line 1988
    :cond_3
    const/16 v0, 0x1f8

    return v0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1510
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0

    .line 1506
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method protected blacklist getVtInterface()Ljava/lang/String;
    .locals 5

    .line 1688
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1689
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1690
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 1691
    .local v1, "subscriberId":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vt_data0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1693
    .local v2, "vtIf":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] getVtInterface(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1694
    return-object v2
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1188
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1184
    :pswitch_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mLastDataEnabledReason:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    .line 1185
    goto :goto_0

    .line 1175
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unholdHeldCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    goto :goto_0

    .line 1176
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage EVENT_RESUME_BACKROUND_CALL exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1181
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_0

    .line 1170
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onRoamingSettingsChanged()V

    .line 1171
    goto :goto_0

    .line 1166
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingOff()V

    .line 1167
    goto :goto_0

    .line 1162
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingOn()V

    .line 1163
    nop

    .line 1191
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_0

    .line 602
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 603
    return-void

    .line 598
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot hangup call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup call with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_0

    .line 615
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V

    .line 616
    return-void

    .line 611
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot hangup call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method blacklist hangupAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1345
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    instance-of v0, v0, Lcom/mediatek/ims/internal/MtkImsManager;

    if-eqz v0, :cond_3

    .line 1353
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->hangupAllCall(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    nop

    .line 1358
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1360
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1364
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1366
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1370
    :cond_2
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1349
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "No MtkImsManager Instance"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist ignoreCarrierPauseSupport()Z
    .locals 1

    .line 1725
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist ignoreConference(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 3
    .param p1, "fgImsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "bgImsCall"    # Lcom/android/ims/ImsCall;

    .line 1994
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1999
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 2004
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2000
    :cond_2
    :goto_0
    const-string v1, "conference: skip; background call state terminated"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2001
    return v0

    .line 1995
    :cond_3
    :goto_1
    const-string v1, "conference: skip; foreground call state terminated"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1996
    return v0
.end method

.method public blacklist initRoamingAndRoamingSetting()V
    .locals 3

    .line 1759
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 1760
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    .line 1762
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    .line 1763
    .local v0, "imsMgr":Lcom/mediatek/ims/internal/MtkImsManager;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->setDataRoamingSettingsEnabled(Z)V

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRoamingAndRoamingSetting, mIsDataRoaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDataRoamingSettingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1767
    return-void
.end method

.method protected blacklist isCarrierPauseAllowed(Lcom/android/ims/ImsCall;)Z
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1710
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1711
    const/4 v0, 0x0

    return v0

    .line 1713
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist isDataAvailableForViLTE()Z
    .locals 1

    .line 1943
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRoamingOnAndRoamingSettingOff()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .line 1540
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->getIsEmergencyNumber()Z

    move-result v0

    return v0
.end method

.method protected blacklist isRoamingOnAndRoamingSettingOff()Z
    .locals 1

    .line 1896
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSupportImsEcc()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z

    return v0
.end method

.method protected blacklist isVTDataMeteredByOpid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "optr"    # Ljava/lang/String;

    .line 2048
    const-string v0, "OP01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OP02"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OP09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2049
    const-string v0, "OP17"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OP50"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OP149"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2050
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2054
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2051
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiPdnOutOfService()Z
    .locals 2

    .line 1730
    iget v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected blacklist logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p3, "msg"    # Ljava/lang/String;

    .line 1437
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1441
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1442
    .local v0, "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    new-instance v1, Lmediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lmediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 1443
    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1444
    const-string v2, "ImsPhone"

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    sget-object v2, Lmediatek/telecom/FormattedLog$OpType;->DUMP:Lmediatek/telecom/FormattedLog$OpType;

    .line 1445
    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1446
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1447
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1448
    invoke-virtual {v1, p3}, Lmediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1449
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1450
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v2

    const-string v3, "No"

    if-eqz v2, :cond_1

    const-string v2, "Yes"

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v4, "isConfCall"

    invoke-virtual {v1, v4, v2}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1451
    const-string v2, "isConfChildCall"

    invoke-virtual {v1, v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1452
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent"

    invoke-virtual {v1, v3, v2}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1453
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lmediatek/telecom/FormattedLog;

    move-result-object v1

    .line 1455
    .local v1, "formattedLog":Lmediatek/telecom/FormattedLog;
    if-eqz v1, :cond_3

    .line 1456
    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    if-eqz v2, :cond_3

    .line 1457
    :cond_2
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1460
    :cond_3
    return-void

    .line 1439
    .end local v0    # "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    .end local v1    # "formattedLog":Lmediatek/telecom/FormattedLog;
    :cond_4
    :goto_1
    return-void
.end method

.method protected blacklist logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p4, "msg"    # Ljava/lang/String;

    .line 1402
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1406
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1407
    .local v0, "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    new-instance v1, Lmediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lmediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 1408
    invoke-virtual {v1, p1}, Lmediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1409
    const-string v2, "ImsPhone"

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    sget-object v2, Lmediatek/telecom/FormattedLog$OpType;->OPERATION:Lmediatek/telecom/FormattedLog$OpType;

    .line 1410
    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1411
    invoke-virtual {v1, p2}, Lmediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1412
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1413
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1414
    invoke-virtual {v1, p4}, Lmediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1415
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lmediatek/telecom/FormattedLog;

    move-result-object v1

    .line 1417
    .local v1, "formattedLog":Lmediatek/telecom/FormattedLog;
    if-eqz v1, :cond_2

    .line 1418
    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    if-eqz v2, :cond_2

    .line 1419
    :cond_1
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1422
    :cond_2
    return-void

    .line 1404
    .end local v0    # "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    .end local v1    # "formattedLog":Lmediatek/telecom/FormattedLog;
    :cond_3
    :goto_0
    return-void
.end method

.method protected blacklist makeImsPhoneConnectionForConference([Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 7
    .param p1, "participantsToDial"    # [Ljava/lang/String;

    .line 1528
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-object v6
.end method

.method protected blacklist makeImsPhoneConnectionForMO(Ljava/lang/String;Z)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "isEmergencyNumber"    # Z

    .line 1516
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-object v6
.end method

.method protected blacklist makeImsPhoneConnectionForMT(Lcom/android/ims/ImsCall;Z)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 7
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isUnknown"    # Z

    .line 1522
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object v4, v0

    goto :goto_0

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object v4, v0

    :goto_0
    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 1522
    return-object v6
.end method

.method protected blacklist modifyVideoCall(Lcom/android/ims/ImsCall;I)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "newVideoState"    # I

    .line 1657
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1659
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const v1, 0x8000

    or-int/2addr p2, v1

    .line 1661
    if-eqz v0, :cond_0

    .line 1662
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 1663
    .local v1, "oldVideoState":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1664
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1668
    .end local v1    # "oldVideoState":I
    :cond_0
    return-void
.end method

.method public blacklist notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 1103
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1108
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    .line 1110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_1

    .line 1111
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v1, :cond_2

    .line 1116
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    goto :goto_0

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_2

    .line 1119
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1121
    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist onDataEnabledChanged(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 1901
    iput p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mLastDataEnabledReason:I

    .line 1902
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    .line 1903
    return-void
.end method

.method protected blacklist onDataRoamingOff()V
    .locals 1

    .line 1803
    const-string v0, "onDataRoamingOff"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1805
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-nez v0, :cond_0

    .line 1806
    const-string v0, "onDataRoamingOff: device already not roaming. ignored the update."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1807
    return-void

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 1812
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-nez v0, :cond_1

    .line 1813
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    .line 1815
    :cond_1
    return-void
.end method

.method protected blacklist onDataRoamingOn()V
    .locals 1

    .line 1782
    const-string v0, "onDataRoamingOn"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1784
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-eqz v0, :cond_0

    .line 1785
    const-string v0, "onDataRoamingOn: device already in roaming. ignored the update."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1786
    return-void

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 1791
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-eqz v0, :cond_1

    .line 1792
    const-string v0, "onDataRoamingOn: setup data on roaming"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1793
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    goto :goto_0

    .line 1796
    :cond_1
    const-string v0, "onDataRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1797
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    .line 1799
    :goto_0
    return-void
.end method

.method protected blacklist onRoamingSettingsChanged()V
    .locals 3

    .line 1819
    const-string v0, "onRoamingSettingsChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    .line 1822
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1823
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    .line 1824
    .local v0, "imsMgr":Lcom/mediatek/ims/internal/MtkImsManager;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->setDataRoamingSettingsEnabled(Z)V

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoamingSettingsChanged: mIsDataRoaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDataRoamingSettingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1830
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-nez v1, :cond_0

    .line 1831
    const-string v1, "onRoamingSettingsChanged: device is not roaming. ignored the request."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1832
    return-void

    .line 1835
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-eqz v1, :cond_1

    .line 1836
    const-string v1, "onRoamingSettingsChanged: setup data on roaming"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1837
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    goto :goto_0

    .line 1840
    :cond_1
    const-string v1, "onRoamingSettingsChanged: Tear down data connection on roaming."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1841
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    .line 1843
    :goto_0
    return-void
.end method

.method protected blacklist processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    .line 679
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 681
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 682
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const-string v1, "CC"

    const-string v2, ""

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 685
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_0

    .line 687
    const-string v1, "ImsCall updated to video call but data off, retry onDataEnabledChanged"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 689
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 691
    :cond_0
    return-void
.end method

.method public blacklist registerForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1736
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1737
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1738
    return-void
.end method

.method public blacklist registerSettingsObserver()V
    .locals 4

    .line 1747
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 1748
    const-string v0, ""

    .line 1749
    .local v0, "simSuffix":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1750
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1753
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1754
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x67

    .line 1753
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1756
    return-void
.end method

.method public blacklist rejectCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const-string v1, "CC"

    const-string v2, "Reject"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 539
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    .line 540
    return-void
.end method

.method protected blacklist releasePendingMOIfRequired()V
    .locals 3

    .line 1125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v0, :cond_0

    .line 1126
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1129
    const/16 v0, 0x12

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1130
    return-void
.end method

.method protected blacklist resetRingBackTone(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1620
    instance-of v0, p1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    if-eqz v0, :cond_0

    .line 1621
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->resetRingbackTone()V

    .line 1624
    :cond_0
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 653
    const-string v0, "sendUSSD : "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 656
    .local v1, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v2, "dialstring"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 658
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v1    # "profile":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_0

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 662
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->retryGetImsService()V

    .line 664
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method protected blacklist setMultiPartyState(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 1606
    instance-of v0, p1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v0, :cond_0

    .line 1607
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 1608
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isConferenceHost()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SRVCC: Connection isMultiparty is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "and isConfHost is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " before handover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1613
    :cond_0
    return-void
.end method

.method protected blacklist setRedialAsEcc(I)V
    .locals 2
    .param p1, "cause"    # I

    .line 1582
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    const/16 v0, 0x17c

    if-ne p1, v0, :cond_0

    .line 1585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    .line 1591
    :cond_0
    return-void
.end method

.method protected blacklist shouldResumeBackgroundCall()Z
    .locals 2

    .line 2036
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2037
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 2039
    const/4 v0, 0x1

    return v0

    .line 2041
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist startListeningForCalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1644
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startListeningForCalls()V

    .line 1647
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->addImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListeningForCalls() : register ims succeed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    goto :goto_0

    .line 1649
    :catch_0
    move-exception v0

    .line 1651
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "startListeningForCalls() : register ims fail!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1653
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method protected blacklist startRttEmcGuardTimer()V
    .locals 1

    .line 1639
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->startRttEmcGuardTimer()V

    .line 1640
    return-void
.end method

.method protected blacklist switchWfcModeIfRequired(Lcom/android/ims/ImsManager;ZZ)V
    .locals 2
    .param p1, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p2, "isWfcEnabled"    # Z
    .param p3, "isEmergencyNumber"    # Z

    .line 1673
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1681
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1682
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 1684
    :cond_1
    return-void

    .line 1675
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not switch WFC mode, isWfcEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEmergencyNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierSwitchWfcModeRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method protected blacklist takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)Lcom/android/ims/ImsCall;
    .locals 2
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1535
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferHandoverConnections mSrvccState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_1

    .line 1136
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1138
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneId:I

    .line 1139
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1140
    const-string v2, "transferHandoverConnections reset the hold tone."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 1142
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 1143
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneId:I

    .line 1145
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    goto :goto_0

    .line 1148
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1150
    return-void
.end method

.method public blacklist unregisterForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1741
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1742
    return-void
.end method

.method protected blacklist updateDisconnectCause(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 1
    .param p1, "cause"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1595
    const/16 v0, 0x24

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1596
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    const/16 v0, 0x2d

    return v0

    .line 1600
    :cond_0
    return p1
.end method
