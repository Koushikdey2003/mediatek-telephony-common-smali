.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist FDN_CONTENT_URI:Ljava/lang/String; = "content://icc/fdn"

.field private static final blacklist FDN_CONTENT_URI_WITH_SUB_ID:Ljava/lang/String; = "content://icc/fdn/subId/"

.field private static final blacklist FDN_FOR_ALLOW_DATA:Ljava/lang/String; = "*99#"

.field private static final blacklist GID1_DEFAULT:Ljava/lang/String; = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

.field private static final blacklist KDDI_OPERATOR:[Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkDct"

.field private static final blacklist SKIP_DATA_STALL_ALARM:Ljava/lang/String; = "persist.vendor.skip.data.stall.alarm"

.field private static final blacklist THROTTLING_MAX_PDP_SIZE:I = 0x8

.field private static final blacklist VDBG:Z

.field private static final blacklist mImpiList:[Ljava/lang/String;


# instance fields
.field private blacklist MCCMNC_EE:[Ljava/lang/String;

.field private blacklist MCCMNC_OP18:[Ljava/lang/String;

.field private blacklist MCCMNC_TELCEL:[Ljava/lang/String;

.field private blacklist MCCMNC_TELSTRA:[Ljava/lang/String;

.field private blacklist mAllowConfig:Z

.field private blacklist mCcDomesticRoamingEnabled:Z

.field private blacklist mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

.field private blacklist mCcIntlRoamingEnabled:Z

.field private blacklist mCcOneSettingForRoaming:Z

.field private blacklist mCcUniqueSettingsForRoaming:Z

.field blacklist mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

.field blacklist mCpaDctCallback:Landroid/os/Handler;

.field private blacklist mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

.field private blacklist mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field private blacklist mDedicatedBearerCount:I

.field blacklist mDetachedDc:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

.field private blacklist mHandoverApnType:I

.field private blacklist mHasFetchMdAutoSetupImsCapability:Z

.field private blacklist mHasFetchModemDeactPdnCapabilityForMultiPS:Z

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final blacklist mIntentReceiverEx:Landroid/content/BroadcastReceiver;

.field private blacklist mIsAddMnoApnsIntoAllApnList:Z

.field private blacklist mIsFdnChecked:Z

.field private blacklist mIsMatchFdnForAllowData:Z

.field private blacklist mIsNotifyDataAttached:Z

.field private blacklist mIsOperatorNumericEmpty:Z

.field private blacklist mIsPhbStateChangedIntentRegistered:Z

.field private blacklist mIsRecordsOverride:Z

.field private blacklist mIsSimNotReady:Z

.field private blacklist mIsSupportConcurrent:Z

.field private blacklist mMdAutoSetupImsCapability:Z

.field private volatile blacklist mMobileDataUsage:Landroid/net/NetworkStats;

.field private final blacklist mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

.field private blacklist mModemDeactPdnCapabilityForMultiPS:Z

.field private blacklist mMtuFromResource:I

.field private final blacklist mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

.field private blacklist mPendingDataCall:Z

.field private blacklist mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhoneType:I

.field private blacklist mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

.field private blacklist mRealPhoneType:I

.field private blacklist mRilRat:I

.field private blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mTurboSS:Lmediatek/telephony/MtkServiceState;

.field private blacklist mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 23

    .line 205
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    .line 285
    const-string v1, "405840"

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405857"

    const-string v6, "405858"

    const-string v7, "405859"

    const-string v8, "405860"

    const-string v9, "405861"

    const-string v10, "405862"

    const-string v11, "405863"

    const-string v12, "405864"

    const-string v13, "405865"

    const-string v14, "405866"

    const-string v15, "405867"

    const-string v16, "405868"

    const-string v17, "405869"

    const-string v18, "405870"

    const-string v19, "405871"

    const-string v20, "405872"

    const-string v21, "405873"

    const-string v22, "405874"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mImpiList:[Ljava/lang/String;

    .line 301
    const-string v1, "44007"

    const-string v2, "44008"

    const-string v3, "44050"

    const-string v4, "44051"

    const-string v5, "44052"

    const-string v6, "44053"

    const-string v7, "44054"

    const-string v8, "44055"

    const-string v9, "44056"

    const-string v10, "44070"

    const-string v11, "44071"

    const-string v12, "44072"

    const-string v13, "44073"

    const-string v14, "44074"

    const-string v15, "44075"

    const-string v16, "44076"

    const-string v17, "44077"

    const-string v18, "44078"

    const-string v19, "44079"

    const-string v20, "44088"

    const-string v21, "44089"

    const-string v22, "44170"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->KDDI_OPERATOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 26
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 379
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 211
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 212
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 215
    const/4 v2, 0x0

    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    .line 221
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllowConfig:Z

    .line 222
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHasFetchModemDeactPdnCapabilityForMultiPS:Z

    .line 223
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mModemDeactPdnCapabilityForMultiPS:Z

    .line 224
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHasFetchMdAutoSetupImsCapability:Z

    .line 225
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMdAutoSetupImsCapability:Z

    .line 230
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 244
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    .line 245
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    .line 246
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    .line 247
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    .line 248
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    .line 250
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    .line 253
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 254
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRealPhoneType:I

    .line 255
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 256
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsOperatorNumericEmpty:Z

    .line 257
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    .line 258
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsNotifyDataAttached:Z

    .line 259
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    .line 260
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    .line 261
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 262
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    .line 264
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    invoke-direct {v3, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;)V

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    .line 292
    const-string v4, "405840"

    const-string v5, "405854"

    const-string v6, "405855"

    const-string v7, "405856"

    const-string v8, "405857"

    const-string v9, "405858"

    const-string v10, "405859"

    const-string v11, "405860"

    const-string v12, "405861"

    const-string v13, "405862"

    const-string v14, "405863"

    const-string v15, "405864"

    const-string v16, "405865"

    const-string v17, "405866"

    const-string v18, "405867"

    const-string v19, "405868"

    const-string v20, "405869"

    const-string v21, "405870"

    const-string v22, "405871"

    const-string v23, "405872"

    const-string v24, "405873"

    const-string v25, "405874"

    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_OP18:[Ljava/lang/String;

    .line 321
    const-string v3, "33402"

    const-string v4, "334020"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELCEL:[Ljava/lang/String;

    .line 322
    const-string v3, "50501"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELSTRA:[Ljava/lang/String;

    .line 323
    const-string v3, "23430"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_EE:[Ljava/lang/String;

    .line 324
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 327
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRilRat:I

    .line 328
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    .line 331
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 332
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    invoke-direct {v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    .line 336
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    .line 337
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 341
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDetachedDc:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 344
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;

    invoke-direct {v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    .line 2693
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 2694
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 2695
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2696
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;

    invoke-direct {v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3201
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    .line 384
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const-string v3, "com.mediatek.internal.telephony.dataconnection.IwlanDataService"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setIwlanDataServiceClassName(Ljava/lang/String;)V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reloadOpCustomizationFactory()V

    .line 389
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 397
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllowConfig:Z

    .line 401
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 402
    .local v4, "currentTime":J
    new-instance v1, Landroid/net/NetworkStats;

    invoke-direct {v1, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 403
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 404
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "netstats"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    .line 406
    .local v1, "statsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    invoke-virtual {v1, v3, v6}, Landroid/app/usage/NetworkStatsManager;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createWorkerHandler()V

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setSscMode()V

    .line 418
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 419
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    invoke-virtual {v3, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 421
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanOrSetupDataConnByCheckFdn()V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSubIdReady()V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Z

    .line 202
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onWifiStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reloadOpCustomizationFactory()V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRealPhoneType:I

    return v0
.end method

.method static synthetic blacklist access$502(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # I

    .line 202
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRealPhoneType:I

    return p1
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onFdnChanged()V

    return-void
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 202
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private blacklist addVsimApnTypeToDefaultApnSetting()V
    .locals 35

    .line 3483
    move-object/from16 v0, p0

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 3484
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3485
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 3486
    .local v2, "apnSetting":Landroid/telephony/data/ApnSetting;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3487
    new-instance v3, Lmediatek/telephony/data/MtkApnSetting;

    move-object v4, v3

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    .line 3488
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v7

    .line 3489
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v9

    .line 3490
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v11

    .line 3491
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v13

    .line 3492
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 3493
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v16

    .line 3494
    move/from16 v34, v1

    .end local v1    # "i":I
    .local v34, "i":I
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    move/from16 v17, v1

    .line 3495
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v18

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v19

    .line 3496
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v20

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v21

    .line 3497
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v22

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v23

    .line 3498
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v24

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v25

    .line 3499
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v26

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v27

    .line 3500
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v28

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v29

    .line 3501
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v30

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v31

    .line 3502
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v32

    move-object v1, v2

    check-cast v1, Lmediatek/telephony/data/MtkApnSetting;

    iget v1, v1, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    move/from16 v33, v1

    invoke-direct/range {v4 .. v33}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    move-object v1, v3

    .line 3504
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    .local v1, "apnSetting":Landroid/telephony/data/ApnSetting;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    move/from16 v3, v34

    .end local v34    # "i":I
    .local v3, "i":I
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3486
    .end local v3    # "i":I
    .local v1, "i":I
    .restart local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_0
    move v3, v1

    .line 3484
    .end local v1    # "i":I
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    .restart local v3    # "i":I
    :goto_1
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    :cond_1
    move v3, v1

    .line 3508
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist checkDomesticDataRoamingEnabled()Z
    .locals 2

    .line 3387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDomesticDataRoamingEnabled: getDomesticDataRoamingFromSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDomesticRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3389
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3387
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3392
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist checkInternationalDataRoamingEnabled()Z
    .locals 2

    .line 3397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInternationalDataRoamingEnabled: getInternationalDataRoamingFromSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIntlRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3399
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3397
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3402
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist cleanOrSetupDataConnByCheckFdn()V
    .locals 9

    .line 2820
    const-string v0, "cleanOrSetupDataConnByCheckFdn()"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2823
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://icc/fdn/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uriFdn":Landroid/net/Uri;
    goto :goto_0

    .line 2826
    .end local v0    # "uriFdn":Landroid/net/Uri;
    :cond_0
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2828
    .restart local v0    # "uriFdn":Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2829
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v8, "number"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2831
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 2832
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2833
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 2834
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 2835
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2837
    :cond_1
    nop

    .line 2838
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2837
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2839
    .local v3, "strFdnNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strFdnNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2840
    const-string v4, "*99#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2841
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 2842
    goto :goto_1

    .line 2844
    .end local v3    # "strFdnNumber":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2847
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2850
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    if-eqz v3, :cond_5

    .line 2851
    const-string v2, "match FDN for allow data, call setupDataOnAllConnectableApns()"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2852
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v3, "FdnDisabled"

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_2

    .line 2855
    :cond_5
    const-string v3, "not match FDN for allow data, call cleanUpAllConnections(REASON_FDN_ENABLED)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2856
    const-string v3, "FdnEnabled"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2858
    :goto_2
    return-void
.end method

.method private blacklist createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 1812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    .local v0, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1814
    .local v1, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1815
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 1814
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1817
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1820
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    .line 1822
    .local v3, "apn":Landroid/telephony/data/ApnSetting;
    if-nez v3, :cond_1

    .line 1823
    goto :goto_0

    .line 1826
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->hasMvnoParams()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1828
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v4

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isMvnoMatches(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_4

    .line 1831
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v4

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v5

    .line 1830
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1832
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1835
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    .end local v3    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1841
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1842
    move-object v3, v0

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    goto :goto_1

    .line 1844
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :cond_6
    move-object v3, v1

    .line 1846
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    if-eqz v4, :cond_7

    .line 1847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoApns="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1852
    :cond_7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createApnList: X result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1853
    return-object v3
.end method

.method private blacklist createWorkerHandler()V
    .locals 1

    .line 2863
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2864
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 2872
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2874
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private blacklist encodeInactiveTimer(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 33
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;

    .line 3731
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 3732
    const-string v2, "encodeInactiveTimer apn is null"

    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3733
    const/4 v2, 0x0

    return-object v2

    .line 3736
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_6

    .line 3737
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1

    goto/16 :goto_2

    .line 3739
    :cond_1
    instance-of v2, v1, Lmediatek/telephony/data/MtkApnSetting;

    if-eqz v2, :cond_7

    .line 3740
    move-object v2, v1

    check-cast v2, Lmediatek/telephony/data/MtkApnSetting;

    iget v2, v2, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    const/4 v4, 0x0

    const v5, 0x1fffffff

    if-gez v2, :cond_2

    move v5, v4

    goto :goto_0

    .line 3741
    :cond_2
    move-object v2, v1

    check-cast v2, Lmediatek/telephony/data/MtkApnSetting;

    iget v2, v2, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    if-le v2, v5, :cond_3

    .line 3742
    goto :goto_0

    :cond_3
    move-object v2, v1

    check-cast v2, Lmediatek/telephony/data/MtkApnSetting;

    iget v5, v2, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    :goto_0
    move v2, v5

    .line 3743
    .local v2, "inactTimer":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3744
    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    .line 3745
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v4

    :goto_1
    shl-int/lit8 v3, v2, 0x3

    add-int/2addr v4, v3

    .local v4, "authType":I
    move/from16 v16, v4

    .line 3747
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    .line 3748
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v7

    .line 3749
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v9

    .line 3750
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v11

    .line 3751
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v13

    .line 3752
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 3753
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v17

    .line 3754
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v19

    .line 3755
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v21

    .line 3756
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v23

    .line 3757
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v25

    .line 3758
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v27

    .line 3759
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v29

    .line 3760
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v31

    .line 3761
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v32

    .line 3747
    invoke-static/range {v5 .. v32}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;III)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    return-object v3

    .line 3738
    .end local v2    # "inactTimer":I
    .end local v4    # "authType":I
    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeInactiveTimer invalid authType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3764
    :cond_7
    return-object v1
.end method

.method private blacklist getDataRetryOperator()Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
    .locals 4

    .line 3917
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3919
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3920
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 3923
    :cond_0
    if-eqz v0, :cond_8

    .line 3924
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELCEL:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 3925
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3926
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3924
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3929
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELSTRA:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 3930
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3931
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3929
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3934
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_EE:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 3935
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3936
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3934
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3939
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->KDDI_OPERATOR:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 3940
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3941
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3939
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3946
    .end local v1    # "i":I
    :cond_8
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v1
.end method

.method private blacklist getDisconnectDoneRetryTimer(Ljava/lang/String;J)J
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .line 3083
    move-wide v0, p2

    .line 3084
    .local v0, "timer":J
    const-string v2, "apnChanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3086
    const-wide/16 v0, 0xbb8

    goto :goto_0

    .line 3087
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v2, :cond_1

    .line 3090
    :try_start_0
    invoke-interface {v2, p1, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->getDisconnectDoneRetryTimer(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 3094
    goto :goto_0

    .line 3091
    :catch_0
    move-exception v2

    .line 3092
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DataConnectionExt.getDisconnectDoneRetryTimer fail!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3093
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3097
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private blacklist getDomesticDataRoamingEnabledFromSettings()Z
    .locals 5

    .line 3137
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 3139
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 3141
    .local v1, "isDomDataRoamingEnabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domestic_data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3142
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3141
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 3145
    goto :goto_1

    .line 3143
    :catch_0
    move-exception v2

    .line 3144
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDomesticDataRoamingEnabled: SettingNofFoundException snfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3147
    .end local v2    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v2, :cond_1

    .line 3148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDomesticDataRoamingEnabled: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDomDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3151
    :cond_1
    return v1
.end method

.method private blacklist getDomesticRoamingEnabled()Z
    .locals 2

    .line 2969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDomesticRoamingEnabled: isDomesticRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bDomesticRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabledBySim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2969
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2972
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabledBySim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getDomesticRoamingEnabledBySim()Z
    .locals 3

    .line 3371
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    if-eqz v0, :cond_1

    .line 3372
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3373
    nop

    .line 3374
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3375
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 3374
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 3373
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3377
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3379
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getInternationalDataRoamingEnabledFromSettings()Z
    .locals 5

    .line 3155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 3157
    .local v0, "phoneId":I
    const/4 v1, 0x1

    .line 3159
    .local v1, "isIntDataRoamingEnabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "international_data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3160
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3159
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 3164
    goto :goto_1

    .line 3161
    :catch_0
    move-exception v2

    .line 3162
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternationalDataRoamingEnabled: SettingNofFoundException snfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3165
    .end local v2    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v2, :cond_1

    .line 3166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternationalDataRoamingEnabled: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isIntDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3169
    :cond_1
    return v1
.end method

.method private blacklist getIntlRoamingEnabled()Z
    .locals 2

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntlRoamingEnabled: isIntlRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bIntlRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2981
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getIsPcoAllowedDefault()Z
    .locals 1

    .line 4073
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_0

    .line 4074
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->getIsPcoAllowedDefault()Z

    move-result v0

    return v0

    .line 4076
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getMtuFromResource()V
    .locals 7

    .line 2626
    const/4 v0, 0x0

    .line 2627
    .local v0, "resource":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2628
    .local v1, "operator":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2629
    .local v2, "mcc":I
    const/4 v3, 0x0

    .line 2631
    .local v3, "mnc":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 2633
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 2634
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2638
    goto :goto_0

    .line 2635
    :catch_0
    move-exception v4

    .line 2636
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2637
    const-string v5, "operator numeric is invalid"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2642
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 2643
    .local v4, "configuration":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object v4, v5

    .line 2644
    iput v2, v4, Landroid/content/res/Configuration;->mcc:I

    .line 2645
    iput v3, v4, Landroid/content/res/Configuration;->mnc:I

    .line 2646
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    .line 2647
    .local v5, "resc":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .line 2651
    .end local v4    # "configuration":Landroid/content/res/Configuration;
    .end local v5    # "resc":Landroid/content/Context;
    goto :goto_1

    .line 2648
    :catch_1
    move-exception v4

    .line 2649
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2650
    const-string v5, "getMtuFromResource fail"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2653
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_1

    .line 2654
    const v4, 0x10e007f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    .line 2656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtuFromResource: mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mtu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2659
    :cond_1
    return-void
.end method

.method private blacklist getOperatorNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 3768
    const-string v0, "mcc"

    .line 3769
    .local v0, "mccTag":Ljava/lang/String;
    const-string v1, "mnc"

    .line 3770
    .local v1, "mncTag":Ljava/lang/String;
    const/4 v2, 0x3

    .line 3771
    .local v2, "mccLength":I
    const/4 v3, 0x3

    .line 3773
    .local v3, "mncLength":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getImpi()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 3774
    .local v4, "strHexImpi":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "getOperatorNumericFromImpi: no impi"

    if-nez v5, :cond_1

    .line 3775
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3776
    return-object p1

    .line 3778
    :cond_1
    const/4 v5, 0x0

    .line 3779
    .local v5, "impi":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parseImpiToString([B)Ljava/lang/String;

    move-result-object v5

    .line 3780
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOperatorNumericFromImpi: impi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Landroid/os/Build;->IS_USER:Z

    if-eqz v8, :cond_2

    const-string v8, "xxx"

    goto :goto_1

    :cond_2
    move-object v8, v5

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3781
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3782
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3783
    return-object p1

    .line 3785
    :cond_3
    const-string v7, "mcc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3786
    .local v8, "mccPosition":I
    const-string v9, "mnc"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 3787
    .local v10, "mncPosition":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_8

    if-ne v10, v11, :cond_4

    goto :goto_3

    .line 3791
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v8

    .line 3792
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    .line 3791
    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v10

    .line 3793
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    .line 3792
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3794
    .local v7, "masterMccMnc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOperatorNumericFromImpi: masterMccMnc: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3795
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3796
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3797
    return-object p1

    .line 3799
    :cond_5
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mImpiList:[Ljava/lang/String;

    array-length v9, v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_7

    aget-object v12, v6, v11

    .line 3800
    .local v12, "mccMnc":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3801
    const-string v6, "getOperatorNumericFromImpi: get operator from impi"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3802
    return-object v7

    .line 3799
    .end local v12    # "mccMnc":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3805
    :cond_7
    return-object p1

    .line 3788
    .end local v7    # "masterMccMnc":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3789
    return-object p1
.end method

.method private blacklist handlePcoDataAfterAttached(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_0

    .line 2525
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->handlePcoDataAfterAttached(Landroid/os/AsyncResult;Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;)V

    .line 2527
    :cond_0
    return-void
.end method

.method private blacklist hasMdAutoSetupImsCapability()Z
    .locals 3

    .line 3673
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHasFetchMdAutoSetupImsCapability:Z

    if-nez v0, :cond_1

    .line 3674
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 3675
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 3676
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasMdAutoSetupImsCapability()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3677
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMdAutoSetupImsCapability:Z

    .line 3679
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHasFetchMdAutoSetupImsCapability:Z

    .line 3680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasMdAutoSetupImsCapability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMdAutoSetupImsCapability:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3682
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMdAutoSetupImsCapability:Z

    return v0
.end method

.method private blacklist hasModemDeactPdnCapabilityForMultiPS()Z
    .locals 3

    .line 3409
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHasFetchModemDeactPdnCapabilityForMultiPS:Z

    if-nez v0, :cond_1

    .line 3410
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3411
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 3412
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 3413
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasModemDeactPdnCapabilityForMultiPS()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3414
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mModemDeactPdnCapabilityForMultiPS:Z

    goto :goto_0

    .line 3416
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mModemDeactPdnCapabilityForMultiPS:Z

    .line 3418
    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHasFetchModemDeactPdnCapabilityForMultiPS:Z

    .line 3419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasModemDeactPdnCapabilityForMultiPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mModemDeactPdnCapabilityForMultiPS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3421
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mModemDeactPdnCapabilityForMultiPS:Z

    return v0
.end method

.method private blacklist hasOperatorIaCapability()Z
    .locals 3

    .line 3241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3242
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 3243
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 3244
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasOperatorIaCapability()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3245
    const-string v0, "hasOpIaCapability: true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3246
    return v2

    .line 3248
    :cond_0
    return v1
.end method

.method private blacklist ignoreDataAllow(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, "ignoreDataAllow":Z
    const-string v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2953
    const/4 v0, 0x1

    .line 2957
    :cond_0
    if-nez v0, :cond_1

    const-string v1, "vsim"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2958
    const-string v1, "Vsim is enabled, set ignoreDataAllow as true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2959
    const/4 v0, 0x1

    .line 2962
    :cond_1
    return v0
.end method

.method private blacklist ignoreDataRoaming(Ljava/lang/String;)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2889
    const/4 v0, 0x0

    .line 2890
    .local v0, "ignoreDataRoaming":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    .line 2893
    .local v1, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->ignoreDataRoaming(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2897
    goto :goto_0

    .line 2894
    :catch_0
    move-exception v2

    .line 2895
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "get ignoreDataRoaming fail!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2896
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2899
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP156:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2900
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    check-cast v2, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v2}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v2

    .line 2901
    .local v2, "iwlanRegState":I
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2902
    .local v3, "isOverEpdg":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoreDataRoaming: OP156 check apnType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Epdg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2903
    if-eqz v3, :cond_2

    const-string v4, "mms"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2904
    const-string v4, "xcap"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2905
    :cond_1
    const/4 v0, 0x1

    .line 2909
    .end local v2    # "iwlanRegState":I
    .end local v3    # "isOverEpdg":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 2910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreDataRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", apnType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 2912
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2913
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v2

    .line 2914
    .local v2, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    sget-object v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne v2, v3, :cond_4

    .line 2915
    const/4 v0, 0x1

    .line 2916
    const-string v3, "RSim, set ignoreDataRoaming as true for any apn type"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2917
    :cond_4
    const-string v3, "vsim"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne v2, v3, :cond_5

    .line 2919
    const/4 v0, 0x1

    .line 2920
    const-string v3, "Aka sim and soft sim, set ignoreDataRoaming as true for vsim type"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2924
    .end local v2    # "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    :cond_5
    :goto_2
    return v0
.end method

.method private blacklist ignoreDefaultDataUnselected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2928
    const/4 v0, 0x0

    .line 2931
    .local v0, "ignoreDefaultDataUnselected":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->ignoreDefaultDataUnselected(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2935
    goto :goto_0

    .line 2932
    :catch_0
    move-exception v1

    .line 2933
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "get ignoreDefaultDataUnselected fail!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2934
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2937
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 2938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreDefaultDataUnselected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", apnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2942
    :cond_0
    if-nez v0, :cond_1

    .line 2943
    const-string v1, "vsim"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2944
    const-string v1, "Vsim is enabled, set ignoreDefaultDataUnselected as true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2945
    const/4 v0, 0x1

    .line 2947
    :cond_1
    return v0
.end method

.method private blacklist isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 3102
    const/4 v0, 0x0

    .line 3103
    .local v0, "isDataAllowedAsOff":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    .line 3105
    .local v1, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v2, :cond_0

    .line 3106
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v0

    .line 3110
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    if-eqz v2, :cond_1

    .line 3112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataAllowedAsOff: getDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bIsInternationalRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3112
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3118
    const/4 v0, 0x1

    .line 3123
    :cond_1
    if-nez v0, :cond_2

    const-string v2, "vsim"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3124
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3125
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v2

    .line 3126
    .local v2, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->isUserDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3127
    const-string v3, "Vsim is enabled, set isDataAllowedAsOff true"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3128
    const/4 v0, 0x1

    .line 3132
    .end local v2    # "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    :cond_2
    return v0
.end method

.method private blacklist isDataAllowedExt(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 4
    .param p1, "dataConnectionReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2535
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2536
    const-string v1, "isDataAllowedExt: apnContext is null, return false"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2537
    return v0

    .line 2539
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2542
    .local v1, "apnType":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_LOCATED_PLMN_CHANGED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2544
    const-string v2, "isDataAllowedExt: located plmn changed, setSetupDataPendingFlag"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2545
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    .line 2546
    return v0

    .line 2550
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2552
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDefaultDataUnselected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2553
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2556
    :cond_2
    return v0

    .line 2560
    :cond_3
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2562
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDataRoaming(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2564
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2568
    :cond_4
    return v0

    .line 2565
    :cond_5
    :goto_1
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2572
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2574
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDataAllow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2575
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2578
    :cond_7
    return v0

    .line 2583
    :cond_8
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NON_VSIM_PDN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2585
    const-string v2, "vsim"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2586
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NON_VSIM_PDN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2589
    :cond_9
    return v0

    .line 2594
    :cond_a
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_FDN_ENABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2596
    const-string v2, "emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2597
    const-string v2, "ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    .line 2602
    :cond_b
    return v0

    .line 2598
    :cond_c
    :goto_4
    const-string v2, "isDataAllowedExt allow IMS/EIMS for reason FDN_ENABLED"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2599
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_FDN_ENABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2607
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2609
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_e

    .line 2610
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataSetupSscMode3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2611
    const-string v0, "isDataAllowedExt allow SSC mode3 for reason APN_NOT_CONNECTABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2612
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2615
    :cond_e
    return v0

    .line 2620
    :cond_f
    :goto_5
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataAllowedExt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2622
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v0

    return v0
.end method

.method private blacklist isDataAllowedForRoamingFeature(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V
    .locals 2
    .param p1, "dataConnectionReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    .line 3560
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3564
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3570
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRoamingTypeAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3571
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 3575
    :cond_1
    return-void
.end method

.method private blacklist isDataRetryRestrictEnabled()Z
    .locals 2

    .line 3950
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-ne v0, v1, :cond_0

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

.method private blacklist isDataRoamingTypeAllowed()Z
    .locals 5

    .line 3173
    const/4 v0, 0x0

    .line 3175
    .local v0, "isDataRoamingTypeAllowed":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3177
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v1

    .line 3178
    .local v1, "bDomDataOnRoamingEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v2

    .line 3180
    .local v2, "bIntDataOnRoamingEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRoamingTypeAllowed bDomDataOnRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bIntDataOnRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", getDataRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3182
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentRoamingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3183
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mUserDataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 3184
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3180
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3187
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    .line 3188
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    .line 3189
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3192
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3190
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3195
    .end local v1    # "bDomDataOnRoamingEnabled":Z
    .end local v2    # "bIntDataOnRoamingEnabled":Z
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataRoamingTypeAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3196
    return v0
.end method

.method private blacklist isDomesticRoaming()Z
    .locals 2

    .line 2985
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isFdnEnableSupport()Z
    .locals 2

    .line 2728
    const/4 v0, 0x0

    .line 2729
    .local v0, "isFdnEnableSupport":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v1, :cond_0

    .line 2730
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isFdnEnableSupport()Z

    move-result v0

    .line 2732
    :cond_0
    return v0
.end method

.method private blacklist isFdnEnabled()Z
    .locals 7

    .line 2736
    const/4 v0, 0x0

    .line 2737
    .local v0, "bFdnEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnableSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2738
    nop

    .line 2739
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2738
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2740
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_5

    .line 2742
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isFdnEnabled(I)Z

    move-result v2

    move v0, v2

    .line 2743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFdnEnabled(), bFdnEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2744
    if-eqz v0, :cond_3

    .line 2745
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFdnEnabled(), match FDN for allow data = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2748
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    xor-int/2addr v2, v3

    return v2

    .line 2750
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isPhbReady(I)Z

    move-result v2

    .line 2751
    .local v2, "bPhbReady":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFdnEnabled(), bPhbReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2752
    if-eqz v2, :cond_1

    .line 2753
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v4, 0x4220a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2755
    :cond_1
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-nez v4, :cond_2

    .line 2756
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2757
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2758
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2760
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2762
    .end local v2    # "bPhbReady":Z
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :goto_0
    goto :goto_1

    .line 2763
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-eqz v2, :cond_4

    .line 2764
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2765
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2767
    :catch_0
    move-exception v2

    .line 2768
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2769
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    goto :goto_2

    .line 2771
    :cond_5
    const-string v2, "isFdnEnabled(), get telephonyEx failed!!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2774
    .end local v1    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_6
    :goto_2
    return v0
.end method

.method private blacklist isIntlRoaming()Z
    .locals 2

    .line 2990
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isLocatedPlmnChanged()Z
    .locals 2

    .line 3209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3210
    const/4 v0, 0x0

    return v0

    .line 3212
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 3213
    .local v0, "sst":Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->willLocatedPlmnChange()Z

    move-result v1

    return v1
.end method

.method private blacklist isMvnoMatches(ILjava/lang/String;)Z
    .locals 6
    .param p1, "mvnoType"    # I
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .line 3856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mvnoMatchData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3857
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-nez p1, :cond_6

    .line 3858
    const/4 v4, 0x0

    .line 3859
    .local v4, "strHexSpn":Ljava/lang/String;
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v5, v3, :cond_1

    .line 3860
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmSpn()Ljava/lang/String;

    move-result-object v2

    .end local v4    # "strHexSpn":Ljava/lang/String;
    .local v2, "strHexSpn":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 3862
    .end local v2    # "strHexSpn":Ljava/lang/String;
    .restart local v4    # "strHexSpn":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaSpn()Ljava/lang/String;

    move-result-object v2

    .line 3864
    .end local v4    # "strHexSpn":Ljava/lang/String;
    .restart local v2    # "strHexSpn":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 3865
    return v1

    .line 3867
    :cond_3
    const/4 v4, 0x0

    .line 3868
    .local v4, "strSpn":Ljava/lang/String;
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v5, v3, :cond_4

    .line 3869
    nop

    .line 3870
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3869
    invoke-static {v3, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parseSpnToString(I[B)Ljava/lang/String;

    move-result-object v0

    .end local v4    # "strSpn":Ljava/lang/String;
    .local v0, "strSpn":Ljava/lang/String;
    goto :goto_1

    .line 3872
    .end local v0    # "strSpn":Ljava/lang/String;
    .restart local v4    # "strSpn":Ljava/lang/String;
    :cond_4
    nop

    .line 3873
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 3872
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parseSpnToString(I[B)Ljava/lang/String;

    move-result-object v0

    .line 3875
    .end local v4    # "strSpn":Ljava/lang/String;
    .restart local v0    # "strSpn":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strSpn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3876
    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3877
    return v3

    .line 3879
    .end local v0    # "strSpn":Ljava/lang/String;
    .end local v2    # "strHexSpn":Ljava/lang/String;
    :cond_5
    goto/16 :goto_3

    :cond_6
    if-ne p1, v3, :cond_b

    .line 3880
    const/4 v0, 0x0

    .line 3881
    .local v0, "strImsi":Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v4, v3, :cond_8

    .line 3882
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmImsi()Ljava/lang/String;

    move-result-object v2

    :cond_7
    move-object v0, v2

    goto :goto_2

    .line 3884
    :cond_8
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaImsi()Ljava/lang/String;

    move-result-object v2

    :cond_9
    move-object v0, v2

    .line 3886
    :goto_2
    if-eqz v0, :cond_a

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3887
    return v3

    .line 3889
    .end local v0    # "strImsi":Ljava/lang/String;
    :cond_a
    goto/16 :goto_3

    :cond_b
    if-ne p1, v0, :cond_e

    .line 3890
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGid1()Ljava/lang/String;

    move-result-object v2

    :cond_c
    move-object v0, v2

    .line 3891
    .local v0, "gid1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gid1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3893
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_d

    .line 3894
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3895
    return v3

    .line 3897
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_d
    goto :goto_3

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    .line 3898
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getIccid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3899
    return v3

    .line 3901
    :cond_f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 3902
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getPnn()Ljava/lang/String;

    move-result-object v2

    :cond_10
    move-object v0, v2

    .line 3903
    .local v0, "strHexPnn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 3904
    return v1

    .line 3906
    :cond_11
    const/4 v2, 0x0

    .line 3907
    .local v2, "strPnn":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parsePnnToString([B)Ljava/lang/String;

    move-result-object v2

    .line 3908
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strPnn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3909
    if-eqz v2, :cond_12

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3910
    return v3

    .line 3913
    .end local v0    # "strHexPnn":Ljava/lang/String;
    .end local v2    # "strPnn":Ljava/lang/String;
    :cond_12
    :goto_3
    return v1
.end method

.method private blacklist isOp18Sim()Z
    .locals 4

    .line 3228
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3230
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_OP18:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3232
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3233
    const/4 v2, 0x1

    return v2

    .line 3231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3237
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSimActivated()Z
    .locals 3

    .line 3709
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGid1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3710
    .local v0, "gid1":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gid1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3711
    const-string v1, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 3712
    const/4 v1, 0x0

    return v1

    .line 3714
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isUniqueRoamingFeatureEnabled()Z
    .locals 2

    .line 4413
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    if-eqz v0, :cond_0

    .line 4414
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4413
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$initApnContexts$0(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 2
    .param p0, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p1, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 638
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$sortApnContextByPriority$1(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 2
    .param p0, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p1, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    return-void
.end method

.method private blacklist makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 4001
    const/4 v0, 0x0

    .line 4003
    .local v0, "inactiveTimer":I
    :try_start_0
    const-string v1, "inactive_timer"

    .line 4004
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 4003
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v0, v1

    .line 4005
    if-eqz v0, :cond_0

    .line 4006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeApnSetting: inactive_timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4010
    :cond_0
    goto :goto_0

    .line 4008
    :catch_0
    move-exception v1

    .line 4013
    :goto_0
    invoke-static {p1, v0}, Lmediatek/telephony/data/MtkApnSetting;->makeApnSetting(Landroid/database/Cursor;I)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    return-object v1
.end method

.method private blacklist notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V
    .locals 4
    .param p1, "ddcId"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "dataInfo"    # Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    .param p4, "failCause"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 3607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnection ddcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.ACTION_ANY_DEDICATE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3612
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DdcId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3616
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3617
    const-string v1, "cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3621
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3622
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3624
    return-void
.end method

.method private blacklist notifyVoiceCallEventToDataConnection(ZZ)V
    .locals 3
    .param p1, "bInVoiceCall"    # Z
    .param p2, "bSupportConcurrent"    # Z

    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoiceCallEventToDataConnection: bInVoiceCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bSupportConcurrent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3363
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3364
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyVoiceCallEvent(ZZ)V

    .line 3365
    .end local v1    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_0

    .line 3366
    :cond_0
    return-void
.end method

.method private blacklist onAllowChanged(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllowChanged: Allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3257
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllowConfig:Z

    .line 3258
    if-eqz p1, :cond_0

    .line 3259
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "dataAllowed"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 3262
    :cond_0
    return-void
.end method

.method private blacklist onApnChangedDone()V
    .locals 3

    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApnChangedDone: subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", default data subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2674
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2678
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const-string v2, "apnChanged"

    if-ne v0, v1, :cond_0

    .line 2679
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_0

    .line 2681
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2682
    .local v0, "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2683
    const-string v1, "Temp data switch is active , call setupDataOnAllConnectableApns()"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2684
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2687
    .end local v0    # "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onDataSetupSscMode3(II)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "lifetime"    # I

    .line 4137
    const/4 v0, 0x0

    .line 4139
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4140
    .local v2, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4141
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4142
    move-object v0, v2

    .line 4143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataSetupSscMode3: found apnContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4144
    goto :goto_1

    .line 4146
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupSscMode3: cid does not match! (APN type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4146
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4151
    .end local v2    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    goto :goto_0

    .line 4153
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 4154
    const-string v1, "onDataSetupSscMode3: couldn\'t find corresponding apnContext"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4155
    return-void

    .line 4158
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v1

    .line 4159
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/16 v3, 0x31

    invoke-virtual {v2, p2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateNetworkAgentSscMode3(II)V

    .line 4160
    const-string v2, "dataSetupSscMode3"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4161
    move-object v3, v0

    check-cast v3, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->setDataConnectionSscMode3(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4163
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 4165
    return-void
.end method

.method private blacklist onDedecatedBearerActivated(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V
    .locals 7
    .param p1, "dataResponse"    # Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedecatedBearerActivated, dataInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3581
    iget v2, p1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v5, 0x0

    const-string v6, "activation"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V

    .line 3584
    return-void
.end method

.method private blacklist onDedecatedBearerDeactivated(I)V
    .locals 7
    .param p1, "cid"    # I

    .line 3595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedecatedBearerDeactivated, Cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3596
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "deactivation"

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V

    .line 3599
    return-void
.end method

.method private blacklist onDedecatedBearerModified(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V
    .locals 7
    .param p1, "dataResponse"    # Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedecatedBearerModified, dataInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3589
    iget v2, p1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v5, 0x0

    const-string v6, "modification"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V

    .line 3592
    return-void
.end method

.method private blacklist onFdnChanged()V
    .locals 6

    .line 2778
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnableSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2779
    const-string v0, "onFdnChanged()"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2780
    const/4 v0, 0x0

    .line 2781
    .local v0, "bFdnEnabled":Z
    const/4 v1, 0x0

    .line 2783
    .local v1, "bPhbReady":Z
    nop

    .line 2784
    const-string v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2783
    invoke-static {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2785
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_0

    .line 2787
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isFdnEnabled(I)Z

    move-result v3

    move v0, v3

    .line 2788
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isPhbReady(I)Z

    move-result v3

    move v1, v3

    .line 2789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFdnChanged(), bFdnEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bPhbReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2791
    :catch_0
    move-exception v3

    .line 2792
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2793
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2795
    :cond_0
    const-string v3, "onFdnChanged(), get telephonyEx failed!!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2798
    :goto_1
    if-eqz v1, :cond_2

    .line 2799
    if-eqz v0, :cond_1

    .line 2800
    const-string v3, "fdn enabled, check fdn list"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2801
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v4, 0x4220a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 2803
    :cond_1
    const-string v3, "fdn disabled, call setupDataOnAllConnectableApns()"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2804
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v4, "FdnDisabled"

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_2

    .line 2807
    :cond_2
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-nez v3, :cond_3

    .line 2808
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2809
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2810
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2812
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2814
    .end local v0    # "bFdnEnabled":Z
    .end local v1    # "bPhbReady":Z
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_3
    :goto_2
    goto :goto_3

    .line 2815
    :cond_4
    const-string v0, "not support fdn enabled, skip onFdnChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2817
    :goto_3
    return-void
.end method

.method private blacklist onNetworkRejectReceived(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3966
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3977
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3978
    .local v0, "ints":[I
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 3979
    const-string v1, "onNetworkRejectReceived urc format error"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3980
    return-void

    .line 3982
    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 3983
    .local v1, "emm_cause":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 3984
    .local v2, "esm_cause":I
    const/4 v3, 0x2

    aget v3, v0, v3

    .line 3985
    .local v3, "event":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkRejectReceived emm_cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", esm_cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", event_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3988
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.intent.action.ACTION_NETWORK_REJECT_CAUSE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3989
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3990
    const/high16 v5, 0x20000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3991
    const-string v5, "emmCause"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3992
    const-string v5, "esmCause"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3993
    const-string v5, "rejectEventType"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3995
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 3967
    .end local v0    # "ints":[I
    .end local v1    # "emm_cause":I
    .end local v2    # "esm_cause":I
    .end local v3    # "event":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v0, "onNetworkRejectReceived exception"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3997
    :goto_1
    return-void
.end method

.method private blacklist onProcessPendingSetupData()V
    .locals 2

    .line 3217
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "resumePendingData"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 3219
    return-void
.end method

.method private blacklist onRoamingTypeChanged()V
    .locals 9

    .line 2995
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    .line 2996
    .local v0, "bDataOnRoamingEnabled":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    .line 2997
    .local v1, "bUserDataEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabledBySim()Z

    move-result v2

    .line 2998
    .local v2, "bDomesticSpecialSim":Z
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    .line 2999
    .local v3, "bIntlSpecialSim":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v4

    .line 3000
    .local v4, "bDomAndIntRoamingFeatureEnabled":Z
    const/4 v5, 0x0

    .line 3003
    .local v5, "trySetup":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRoamingTypeChanged: bDataOnRoamingEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bUserDataEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bDomesticSpecialSim = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bIntlSpecialSim = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bDomAndIntRoamingFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bOneSettingForRoamingFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", roamingType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3009
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3003
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3013
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3014
    const-string v6, "onRoamingTypeChanged: device is not roaming. ignored the request."

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3015
    return-void

    .line 3021
    :cond_0
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 3022
    const v6, 0x42200

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDataRoamingOnOrSettingsChanged(I)V

    .line 3023
    return-void

    .line 3027
    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 3028
    const-string v6, "onRoamingTypeChanged: is not specific SIM. ignored the request."

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3029
    return-void

    .line 3034
    :cond_2
    if-eqz v4, :cond_5

    .line 3035
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkDomesticDataRoamingEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3036
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkInternationalDataRoamingEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 3039
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3037
    :cond_4
    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    .line 3041
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    .line 3042
    if-eqz v2, :cond_7

    .line 3043
    if-eqz v1, :cond_6

    .line 3044
    const/4 v5, 0x1

    goto :goto_1

    .line 3046
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 3050
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v8, v7

    :cond_8
    move v5, v8

    goto :goto_1

    .line 3052
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3053
    if-eqz v3, :cond_b

    .line 3054
    if-eqz v0, :cond_a

    .line 3055
    const/4 v5, 0x1

    goto :goto_1

    .line 3057
    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    .line 3061
    :cond_b
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    move v8, v7

    :cond_c
    move v5, v8

    goto :goto_1

    .line 3064
    :cond_d
    const-string v6, "onRoamingTypeChanged error: unexpected roaming type"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3067
    :goto_1
    const-string v6, "roamingOn"

    if-eqz v5, :cond_e

    .line 3068
    const-string v7, "onRoamingTypeChanged: setup data on roaming"

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3069
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 3070
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    goto :goto_2

    .line 3072
    :cond_e
    const-string v8, "onRoamingTypeChanged: Tear down data connection on roaming."

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3073
    invoke-virtual {p0, v7, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 3075
    :goto_2
    return-void
.end method

.method private blacklist onSkipDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4168
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4170
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v1

    .line 4171
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object v2, p1

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getDataConnectionSscMode3()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    .line 4173
    .local v2, "dc3":Lcom/android/internal/telephony/dataconnection/DataConnection;
    const/4 v3, 0x1

    .line 4174
    .local v3, "skipDisconnect":Z
    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_0

    .line 4176
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4177
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4178
    move-object v4, v2

    check-cast v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/16 v6, 0x32

    invoke-virtual {v4, v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateNetworkAgentSscMode3(II)V

    .line 4179
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->setDataConnectionSscMode3(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto :goto_1

    .line 4180
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4181
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->setDataConnectionSscMode3(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto :goto_1

    .line 4183
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 4175
    :cond_4
    :goto_0
    const/4 v3, 0x0

    .line 4186
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dataSetupSscMode3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4187
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4190
    :cond_5
    if-eqz v3, :cond_6

    .line 4192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectDone: skip due to SSC mode3, dc=("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), dc3=("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4195
    :cond_6
    return v3
.end method

.method private blacklist onSubIdReady()V
    .locals 7

    .line 2477
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updatePhoneType()Z

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubIdReady mPhoneType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [1:GSM,2:CDMA]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2482
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2483
    const-string v1, "onSubIdReady: empty operator numeric, return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2484
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsOperatorNumericEmpty:Z

    .line 2485
    return-void

    .line 2489
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma3GDualModeCard(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2490
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 2491
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    .line 2493
    .local v4, "isDisconnected":Z
    :goto_1
    if-nez v4, :cond_3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2494
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2495
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 2496
    .local v5, "numeric":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2497
    const-string v6, "CDMA 3G dual mode card numeric change, clean up."

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2498
    const-string v6, "apnChanged"

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2503
    .end local v1    # "overallState":Lcom/android/internal/telephony/DctConstants$State;
    .end local v4    # "isDisconnected":Z
    .end local v5    # "numeric":Ljava/lang/String;
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 2504
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    .line 2507
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRetryOperator()Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 2508
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2509
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setRemoveRestrictEutranMode(ZLandroid/os/Message;)V

    .line 2513
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getMtuFromResource()V

    .line 2515
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createAllApnList()V

    .line 2516
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 2517
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 2518
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sortApnContextByPriority()V

    .line 2519
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v2, "simLoaded"

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2520
    return-void
.end method

.method private blacklist onTearDownPdnByApnId(I)V
    .locals 3
    .param p1, "apnId"    # I

    .line 4116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 4117
    return-void
.end method

.method private blacklist onWifiStateChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 3310
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 3311
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 3312
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWifiStateChanged, wifi enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mInVoiceCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsSupportConcurrent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3318
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3319
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-nez v2, :cond_1

    .line 3320
    const-string v1, "onWifiStateChanged: wifi disabled and not support concurrent"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 3322
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 3323
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 3324
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(ZZ)V

    goto :goto_1

    .line 3325
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-eqz v2, :cond_2

    .line 3326
    const-string v2, "onWifiStateChanged: wifi enabled and support concurrent"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 3328
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    .line 3329
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 3330
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(ZZ)V

    .line 3333
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist preCheckCpaDcTrackerInstance()Z
    .locals 4

    .line 4671
    const/4 v0, 0x1

    .line 4672
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4673
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 4672
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4674
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v1, :cond_2

    .line 4675
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4676
    if-nez v1, :cond_0

    .line 4677
    const-string v1, "[CpaDct]can\'t mCpaDcTracker!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4678
    const/4 v0, 0x0

    goto :goto_0

    .line 4680
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 4681
    const-string v1, "[CpaDct]mCpaDcTracker\'s phone id not match!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4682
    const/4 v0, 0x0

    goto :goto_0

    .line 4687
    :cond_1
    const-string v1, "[CpaDct]not support CPA mode!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4688
    const/4 v0, 0x0

    .line 4690
    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist readAddOnConfiguration()V
    .locals 4

    .line 3628
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3629
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3630
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 3632
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 3633
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3635
    :cond_0
    if-eqz v1, :cond_2

    .line 3636
    const-string v2, "mtk_domestic_roaming_enabled_only_by_mobile_data_setting"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    .line 3638
    const-string v2, "mtk_domestic_roaming_enabled_only_by_mobile_data_setting_check_nw_plmn"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    .line 3640
    const-string v2, "mtk_intl_roaming_enabled_only_by_roaming_data_setting"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    .line 3645
    const-string v2, "mtk_unique_settings_for_domestic_and_intl_roaming"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    .line 3650
    const-string v2, "mtk_one_setting_for_domestic_and_intl_roaming_data"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    .line 3652
    const-string v2, "mtk_key_add_mnoapns_into_allapnlist"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    .line 3655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAddOnConfiguration: DomesticRoamingEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SpecifiedNw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", IntlRoamingEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", UniqueSettingsForRoaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", OneSettingForRoaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", IsAddMnoApnsIntoAllApnList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3670
    :cond_2
    return-void
.end method

.method private blacklist registerFdnContentObserver()V
    .locals 3

    .line 2716
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnableSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://icc/fdn/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "fdnContentUri":Landroid/net/Uri;
    goto :goto_0

    .line 2721
    .end local v0    # "fdnContentUri":Landroid/net/Uri;
    :cond_0
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2723
    .restart local v0    # "fdnContentUri":Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const v2, 0x421f8

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 2725
    .end local v0    # "fdnContentUri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private blacklist reloadOpCustomizationFactory()V
    .locals 2

    .line 3687
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_0

    .line 3688
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->stopDataRoamingStrategy()V

    .line 3691
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3692
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 3693
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3694
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 3696
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->startDataRoamingStrategy(Lcom/android/internal/telephony/Phone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3704
    :cond_1
    goto :goto_0

    .line 3699
    :catch_0
    move-exception v0

    .line 3701
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mDataConnectionExt init fail"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3703
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist resetSimStatus()V
    .locals 3

    .line 3957
    const-string v0, "resetSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3958
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3959
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3961
    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    .line 3962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    .line 3963
    return-void
.end method

.method private blacklist sendOnApnChangedDone(Z)V
    .locals 1
    .param p1, "bImsApnChanged"    # Z

    .line 2666
    const v0, 0x421f7

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2667
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2668
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2669
    return-void
.end method

.method private blacklist setDataRoamingEnabledByDefault(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .line 4382
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    if-eqz v0, :cond_0

    .line 4383
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRoamingFromUserAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4384
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    .line 4387
    .local v0, "oldEnabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataRoamingEnabledByDefault: oldEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4391
    if-eq v0, p1, :cond_0

    .line 4392
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setDataRoamingEnabled(Z)V

    .line 4393
    return v1

    .line 4397
    .end local v0    # "oldEnabled":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setIsPcoAllowedDefault(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .line 4067
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_0

    .line 4068
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->setIsPcoAllowedDefault(Z)V

    .line 4070
    :cond_0
    return-void
.end method

.method private blacklist setRoamingDataWithRoamingType(I)Z
    .locals 3
    .param p1, "roamingType"    # I

    .line 4366
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4367
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataRoamingEnabledByDefault(Z)Z

    move-result v0

    return v0

    .line 4370
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4376
    :cond_1
    return v2

    .line 4373
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataRoamingEnabledByDefault(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist setSscMode()V
    .locals 4

    .line 4123
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 4124
    .local v0, "mode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSscMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4125
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 4127
    return-void
.end method

.method private blacklist teardownDataByEmergencyPolicy()V
    .locals 12

    .line 3426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3427
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3428
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 3430
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 3432
    .local v2, "isDeactPdn":Z
    if-eqz v0, :cond_0

    .line 3433
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 3434
    .local v3, "subId":I
    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3437
    .end local v3    # "subId":I
    :cond_0
    if-eqz v1, :cond_3

    .line 3438
    const-string v3, "emergency_bearer_management_policy"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3440
    .local v3, "disConnectApns":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 3441
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3442
    .local v8, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3443
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v9

    .line 3444
    .local v9, "apnSetting":Landroid/telephony/data/ApnSetting;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compare apn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " by filter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3446
    const/4 v2, 0x1

    .line 3447
    const-string v7, "pdnOccupied"

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 3449
    goto :goto_2

    .line 3452
    .end local v8    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v9    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_1
    goto :goto_1

    .line 3440
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3455
    .end local v3    # "disConnectApns":[Ljava/lang/String;
    :cond_3
    const-string v3, "Couldn\'t find CarrierConfigService."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3457
    :cond_4
    return-void
.end method

.method private blacklist updateMobileDataUsage(Landroid/os/AsyncResult;)V
    .locals 30
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4419
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 4420
    .local v1, "rxPkts":I
    move-object/from16 v2, p1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 4422
    .local v3, "ints":[I
    iget v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 4424
    return-void

    .line 4426
    :cond_0
    array-length v4, v3

    const/4 v6, 0x0

    if-lez v4, :cond_1

    aget v4, v3, v6

    goto :goto_0

    :cond_1
    move v4, v6

    .line 4427
    .local v4, "txBytes":I
    :goto_0
    array-length v7, v3

    if-le v7, v5, :cond_2

    aget v7, v3, v5

    goto :goto_1

    :cond_2
    move v7, v6

    .line 4428
    .local v7, "txPkts":I
    :goto_1
    array-length v8, v3

    const/4 v9, 0x2

    if-le v8, v9, :cond_3

    aget v8, v3, v9

    goto :goto_2

    :cond_3
    move v8, v6

    .line 4429
    .local v8, "rxBytes":I
    :goto_2
    array-length v9, v3

    const/4 v10, 0x3

    if-le v9, v10, :cond_4

    aget v6, v3, v10

    :cond_4
    move v1, v6

    .line 4431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 4432
    .local v9, "currentTime":J
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v17

    .line 4433
    .local v17, "isRoaming":I
    const-string v6, "default"

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v6

    .line 4434
    .local v6, "linkProperties":Landroid/net/LinkProperties;
    if-nez v6, :cond_5

    const-string v11, ""

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object v12, v11

    .line 4435
    .local v12, "ifacename":Ljava/lang/String;
    if-nez v12, :cond_6

    .line 4436
    const-string v5, "updateMobileDataUsage ifacename = null"

    invoke-direct {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4437
    return-void

    .line 4440
    :cond_6
    new-instance v11, Landroid/net/NetworkStats;

    invoke-direct {v11, v9, v10, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v5, v11

    .line 4441
    .local v5, "mobileDataUsage":Landroid/net/NetworkStats;
    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    invoke-virtual {v5, v11}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 4442
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v11, v15

    const/16 v13, -0xa

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    const/16 v16, 0x1

    const/16 v18, 0x1

    int-to-long v13, v8

    move-wide/from16 v19, v13

    int-to-long v13, v1

    move-wide/from16 v21, v13

    int-to-long v13, v4

    move-wide/from16 v23, v13

    int-to-long v13, v7

    move-wide/from16 v25, v13

    const-wide/16 v27, 0x0

    move-object v13, v12

    .end local v12    # "ifacename":Ljava/lang/String;
    .local v13, "ifacename":Ljava/lang/String;
    move-object v2, v13

    const/16 v13, -0xa

    const/4 v14, 0x0

    .end local v13    # "ifacename":Ljava/lang/String;
    .local v2, "ifacename":Ljava/lang/String;
    invoke-direct/range {v11 .. v28}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v11, v29

    invoke-virtual {v5, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 4447
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMobileDataUsage ifacename:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", txBytes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", txPkts:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", rxBytes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", rxPkts:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4452
    iput-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 4462
    return-void
.end method

.method private blacklist updatePhoneType()Z
    .locals 3

    .line 3809
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3810
    .local v0, "tempPhoneType":I
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3811
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma3GCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3812
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3815
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma3GDualModeCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3816
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3819
    :cond_1
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected blacklist apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1953
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1956
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z
    .locals 9
    .param p1, "detach"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpAllConnectionsInternal: detach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "didDisconnect":Z
    const/4 v1, 0x0

    .line 1270
    .local v1, "disableMeteredOnly":Z
    const/4 v2, 0x0

    .line 1272
    .local v2, "imsConnect":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "roamingOn"

    if-nez v3, :cond_2

    .line 1273
    const-string v3, "specificDisabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1274
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1275
    const-string v3, "carrierActionDisableMeteredApn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v1, v3

    .line 1277
    const-string v3, "simNotReady"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1278
    const-string v3, "cleanUpAllConnectionsInternal: not cleanup connections for sim not ready"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1279
    return v0

    .line 1284
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1286
    .local v5, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1287
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDataRoaming(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpAllConnectionsInternal: Ignore Data Roaming for apnType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1288
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1290
    goto :goto_2

    .line 1294
    :cond_3
    const-string v6, "SinglePdnArbitration"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ims"

    if-eqz v7, :cond_4

    .line 1295
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1296
    goto :goto_2

    .line 1298
    :cond_4
    const-string v7, "radioTurnedOff"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1299
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpAllConnectionsInternal: Ignore ims for apnType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1300
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1302
    const/4 v2, 0x1

    .line 1303
    goto :goto_2

    .line 1306
    :cond_5
    nop

    .line 1307
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1306
    invoke-virtual {p0, v5, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->shouldCleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1309
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v0, 0x1

    .line 1310
    :cond_6
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1311
    const/4 v6, 0x2

    invoke-virtual {p0, p1, v6, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_3

    .line 1313
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpAllConnectionsInternal: APN type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " shouldn\'t be cleaned up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1316
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_3
    goto/16 :goto_2

    .line 1318
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 1319
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 1322
    const/16 v3, 0x11

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRequestedApnType:I

    .line 1324
    if-eqz v2, :cond_9

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDisconnectPendingCount:I

    if-nez v3, :cond_9

    .line 1325
    const-string v3, "cleanUpAllConnectionsInternal: legacy ims only connect, power off radio immediately"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1326
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    .line 1328
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAllConnectionsInternal: mDisconnectPendingCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDisconnectPendingCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1330
    if-eqz p1, :cond_a

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDisconnectPendingCount:I

    if-nez v3, :cond_a

    .line 1331
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyAllDataDisconnected()V

    .line 1334
    :cond_a
    return v0
.end method

.method public blacklist cleanUpConnectionsOnCpaChanged(ILandroid/os/Handler;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callback"    # Landroid/os/Handler;

    .line 4625
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    .line 4626
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 4627
    .local v0, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 4629
    .local v1, "isDisconnected":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CpaDct]cleanUpConnectionsOnCpaChanged() mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4630
    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    const-string v3, "apnChanged"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V

    .line 4631
    return-void
.end method

.method protected blacklist cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V
    .locals 9
    .param p1, "detach"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpConnectionsOnUpdatedApns: detach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2393
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "apnChanged"

    if-eqz v0, :cond_0

    .line 2394
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto/16 :goto_3

    .line 2396
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    if-nez v0, :cond_1

    .line 2400
    return-void

    .line 2402
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2404
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasMdAutoSetupImsCapability()Z

    move-result v3

    const-string v4, "emergency"

    if-eqz v3, :cond_2

    const-string v3, "nwTypeChanged"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2405
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnectionsOnUpdatedApns(): skip emergency due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2407
    goto :goto_0

    .line 2412
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v3

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2413
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    .line 2412
    invoke-virtual {v3, v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2416
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasMdAutoSetupImsCapability()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2417
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2418
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ims"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2419
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkSkipCleanUpConnectionsOnUpdatedApns: skip IMS/EIMS due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2420
    goto/16 :goto_0

    .line 2425
    :cond_4
    const/4 v3, 0x1

    .line 2426
    .local v3, "cleanupRequired":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2427
    nop

    .line 2428
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v5

    .line 2427
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2429
    .local v4, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 2430
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/data/ApnSetting;

    .line 2431
    .local v6, "apnSetting":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2432
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v8

    .line 2431
    invoke-virtual {v6, v7, v8}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2433
    const/4 v3, 0x0

    .line 2434
    goto :goto_2

    .line 2436
    .end local v6    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_5
    goto :goto_1

    .line 2438
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 2440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnectionsOnUpdatedApns: APN type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " clean up is required. The new waiting APN list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not cover "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2440
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2446
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2449
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "cleanupRequired":Z
    .end local v4    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :cond_7
    goto/16 :goto_0

    .line 2452
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2453
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 2454
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 2457
    :cond_9
    const/16 v0, 0x11

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRequestedApnType:I

    .line 2459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisconnectPendingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDisconnectPendingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2460
    if-eqz p1, :cond_a

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_a

    .line 2461
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyAllDataDisconnected()V

    .line 2463
    :cond_a
    return-void
.end method

.method protected blacklist createAllApnList()V
    .locals 9

    .line 1859
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1860
    .local v0, "operator":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1861
    :cond_0
    const-string v1, "createAllApnList: ignore, sim not ready and no operator numeric"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1862
    return-void

    .line 1866
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1867
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1868
    if-eqz v0, :cond_4

    .line 1869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1870
    .local v2, "selection":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAllApnList: selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1873
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "filtered"

    .line 1874
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    .line 1873
    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1877
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 1878
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1879
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1881
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1883
    :cond_3
    const-string v4, "createAllApnList: cursor is null"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1884
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnSettingsInitializationLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor is null for carrier, operator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1890
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addVsimApnTypeToDefaultApnSetting()V

    .line 1892
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addEmergencyApnSetting()V

    .line 1896
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->dedupeApnSettings()V

    .line 1898
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAllApnList: No APN found for carrier, operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1900
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnSettingsInitializationLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no APN found for carrier, operator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1902
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 1904
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x1b

    invoke-virtual {v1, v2, v2, v3}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 1906
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 1907
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1908
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 1909
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setPreferredApn(I)V

    .line 1911
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAllApnList: mPreferredApn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1913
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAllApnList: X mAllApnSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1914
    return-void

    .line 1892
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist dispose()V
    .locals 2

    .line 537
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    .line 539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->stopDataRoamingStrategy()V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 550
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 551
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 552
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 553
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 559
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 564
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    .line 565
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 570
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 571
    .local v0, "statsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->unregisterNetworkStatsProvider(Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 573
    return-void
.end method

.method public blacklist enableApn(IILandroid/os/Message;)V
    .locals 9
    .param p1, "apnType"    # I
    .param p2, "requestType"    # I
    .param p3, "onCompleteMsg"    # Landroid/os/Message;

    .line 1556
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1558
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1559
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 1560
    .local v2, "state":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 1561
    const-string v3, "Enable \'default\' apn type in advance"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1562
    const-string v3, "dataEnabled"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 1564
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    .line 1565
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {p0, p3, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addRequestNetworkCompleteMsg(Landroid/os/Message;I)V

    goto :goto_0

    .line 1568
    :cond_0
    const/4 v5, 0x0

    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p3

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZIII)V

    .line 1571
    :goto_0
    return-void

    .line 1576
    .end local v1    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApn(IILandroid/os/Message;)V

    .line 1577
    return-void
.end method

.method protected blacklist getAllowConfig()Z
    .locals 2

    .line 3265
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isMultiPsAttachSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3266
    return v1

    .line 3268
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasModemDeactPdnCapabilityForMultiPS()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllowConfig:Z

    :goto_0
    return v1
.end method

.method protected blacklist getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2236
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    const/4 v0, 0x2

    return v0

    .line 2238
    :cond_0
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2239
    const/4 v0, 0x3

    return v0

    .line 2240
    :cond_1
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2241
    const/4 v0, 0x4

    return v0

    .line 2242
    :cond_2
    const-string v0, "ia"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2243
    return v1

    .line 2244
    :cond_3
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2245
    const/4 v0, 0x1

    return v0

    .line 2247
    :cond_4
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2248
    const/16 v0, 0x3e9

    return v0

    .line 2249
    :cond_5
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2250
    const/16 v0, 0x3ea

    return v0

    .line 2251
    :cond_6
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2252
    const/16 v0, 0x3eb

    return v0

    .line 2253
    :cond_7
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2254
    const/16 v0, 0x3ec

    return v0

    .line 2255
    :cond_8
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2256
    const/16 v0, 0x3ed

    return v0

    .line 2257
    :cond_9
    const-string v0, "rcs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2258
    const/16 v0, 0x3ee

    return v0

    .line 2259
    :cond_a
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2260
    return v1

    .line 2261
    :cond_b
    const-string v0, "bip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2262
    const/16 v0, 0x3ef

    return v0

    .line 2263
    :cond_c
    const-string v0, "*"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2264
    const/16 v0, 0x3f2

    return v0

    .line 2265
    :cond_d
    const-string v0, "vsim"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2266
    const/16 v0, 0x3f0

    return v0

    .line 2267
    :cond_e
    const-string v0, "mcx"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2268
    const/16 v0, 0x3f1

    return v0

    .line 2271
    :cond_f
    return v1
.end method

.method public blacklist getIccid()Ljava/lang/String;
    .locals 2

    .line 4321
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 4322
    .local v0, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public blacklist getImsi()Ljava/lang/String;
    .locals 3

    .line 4311
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4314
    :cond_0
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4315
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4317
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4312
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMobileDataUsage()Landroid/net/NetworkStats;
    .locals 1

    .line 4502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    return-object v0
.end method

.method public blacklist getMtu()I
    .locals 1

    .line 2662
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    return v0
.end method

.method public blacklist getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2360
    const/4 v0, 0x0

    .line 2361
    .local v0, "result":[Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfAddress() for RCS, apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2363
    const/4 v1, 0x0

    .line 2365
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const-string v2, "default"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2366
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2369
    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2370
    const-string v3, "apnContext is null for RCS, return null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2371
    return-object v2

    .line 2374
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    .line 2376
    .local v3, "dataConnection":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-eqz v3, :cond_3

    .line 2377
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPcscfAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 2379
    if-eqz v0, :cond_2

    .line 2380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 2381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pcscf["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2384
    .end local v2    # "i":I
    :cond_2
    return-object v0

    .line 2386
    :cond_3
    return-object v2
.end method

.method public blacklist getPendingDataCallFlag()Z
    .locals 1

    .line 3204
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    return v0
.end method

.method public blacklist getTurboSS()Lmediatek/telephony/MtkServiceState;
    .locals 1

    .line 4291
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    return-object v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1970
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1972
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x42003

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_14

    const v1, 0x42017

    if-eq v0, v1, :cond_c

    const v1, 0x42029

    const-string v4, "default"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 2229
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 2211
    :pswitch_0
    const-string v0, "EVENT_MODEM_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2212
    iput-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 2213
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->resetSimStatus()V

    .line 2214
    goto/16 :goto_4

    .line 2207
    :pswitch_1
    const-string v0, "EVENT_RECORDS_OVERRIDE"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2208
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    .line 2209
    goto/16 :goto_4

    .line 2188
    :pswitch_2
    const-string v0, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2189
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2190
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 2189
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 2191
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v0, :cond_16

    .line 2192
    if-eqz v1, :cond_1

    .line 2193
    const-string v1, "Removing stale icc objects."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2194
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsOverride(Landroid/os/Handler;)V

    .line 2195
    iput-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2197
    :cond_1
    if-eqz v0, :cond_16

    .line 2198
    const-string v1, "new Icc object"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2199
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    .line 2200
    const v1, 0x42213

    invoke-virtual {v0, p0, v1, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2202
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto/16 :goto_4

    .line 2059
    .end local v0    # "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :pswitch_3
    const-string v0, "EVENT_PLMN_DATA"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2060
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2061
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_16

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_16

    .line 2062
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 2063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlmnMvnoData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2064
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsOperatorNumericEmpty:Z

    if-eqz v1, :cond_16

    .line 2065
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsOperatorNumericEmpty:Z

    .line 2066
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2067
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSubIdReady()V

    goto/16 :goto_4

    .line 2178
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2179
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2180
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2181
    .local v1, "ints":[I
    array-length v2, v1

    if-lez v2, :cond_2

    aget v2, v1, v3

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 2182
    .local v2, "nwLimitState":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nwLimitState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2183
    .end local v1    # "ints":[I
    .end local v2    # "nwLimitState":I
    goto/16 :goto_4

    .line 2184
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_NW_LIMIT_STATE, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2186
    goto/16 :goto_4

    .line 2169
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2170
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 2171
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updateMobileDataUsage(Landroid/os/AsyncResult;)V

    goto/16 :goto_4

    .line 2173
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MOBILE_DATA_USAGE, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2175
    goto/16 :goto_4

    .line 2164
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDataSetupSscMode3(II)V

    .line 2165
    goto/16 :goto_4

    .line 2160
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onTearDownPdnByApnId(I)V

    .line 2161
    goto/16 :goto_4

    .line 2156
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2157
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onNetworkRejectReceived(Landroid/os/AsyncResult;)V

    .line 2158
    goto/16 :goto_4

    .line 2131
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    if-lez v0, :cond_5

    .line 2132
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    .line 2134
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2135
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2136
    .local v1, "cid":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDedecatedBearerDeactivated(I)V

    .line 2137
    goto/16 :goto_4

    .line 2124
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cid":I
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2125
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    if-eqz v1, :cond_16

    .line 2126
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 2127
    .local v1, "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDedecatedBearerModified(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V

    .line 2128
    .end local v1    # "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    goto/16 :goto_4

    .line 2116
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    .line 2117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2118
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    if-eqz v1, :cond_16

    .line 2119
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 2120
    .restart local v1    # "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDedecatedBearerActivated(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V

    .line 2121
    .end local v1    # "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    goto/16 :goto_4

    .line 2111
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->handlePcoDataAfterAttached(Landroid/os/AsyncResult;)V

    .line 2112
    goto/16 :goto_4

    .line 2099
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2100
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 2101
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2102
    .local v1, "ints":[I
    aget v4, v1, v3

    if-ne v4, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    .line 2103
    .local v2, "allowed":Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onAllowChanged(Z)V

    .line 2104
    .end local v1    # "ints":[I
    .end local v2    # "allowed":Z
    goto/16 :goto_4

    .line 2105
    :cond_7
    const-string v1, "Parameter error: ret should not be NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2107
    goto/16 :goto_4

    .line 2044
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2045
    const-string v0, "EVENT_REMOVE_RESTRICT_EUTRAN"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2046
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mReregisterOnReconnectFailure:Z

    .line 2047
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "psRestrictDisabled"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_4

    .line 2054
    :pswitch_f
    const-string v0, "EVENT_MD_DATA_RETRY_COUNT_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2055
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "modemDataCountReset"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2057
    goto/16 :goto_4

    .line 2095
    :pswitch_10
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onRoamingTypeChanged()V

    .line 2096
    goto/16 :goto_4

    .line 2079
    :pswitch_11
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2080
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2081
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 2082
    const-string v0, "Only common Emergency APN, skip set initial attach apn."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logw(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2084
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    goto/16 :goto_4

    .line 2088
    :cond_9
    const-string v0, "EVENT_RESET_ATTACH_APN: Ignore due to null APN list"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2091
    goto/16 :goto_4

    .line 2074
    :pswitch_12
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onProcessPendingSetupData()V

    .line 2075
    goto/16 :goto_4

    .line 2038
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RESET_PDP_DONE cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2041
    goto/16 :goto_4

    .line 2035
    :pswitch_14
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onFdnChanged()V

    .line 2036
    goto/16 :goto_4

    .line 1974
    :pswitch_15
    const-string v0, "EVENT_APN_CHANGED_DONE"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1976
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onApnChangedDone()V

    .line 1977
    goto/16 :goto_4

    .line 2140
    :cond_a
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRilRat:I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 2142
    iput-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    .line 2144
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRilRat:I

    .line 2145
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    .line 2148
    :cond_b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2149
    .local v0, "rat":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DATA_RAT_CHANGED: rat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2150
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2151
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2152
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1984
    .end local v0    # "rat":I
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1985
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1987
    .local v0, "cnnm":Landroid/net/ConnectivityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1988
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPsRestricted:Z

    .line 1989
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1990
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 1991
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    goto/16 :goto_4

    .line 1994
    :cond_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    const-string v5, "psRestrictEnabled"

    if-ne v1, v4, :cond_e

    .line 1995
    invoke-virtual {p0, v3, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 1996
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mReregisterOnReconnectFailure:Z

    .line 1998
    :cond_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1999
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v1, :cond_10

    .line 2006
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v3

    if-nez v3, :cond_f

    .line 2008
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    goto :goto_2

    .line 2011
    :cond_f
    const-string v3, "EVENT_PS_RESTRICT_DISABLED, data not attached, skip."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2014
    :cond_10
    const-string v4, "**** Default ApnContext not found ****"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2016
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_12

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    .line 2018
    :cond_11
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Default ApnContext not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2023
    :cond_12
    :goto_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2024
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2025
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    goto :goto_3

    .line 2028
    :cond_13
    const-string v2, "**** MMS ApnContext not found ****"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2032
    .end local v1    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_3
    goto :goto_4

    .line 2217
    .end local v0    # "cnnm":Landroid/net/ConnectivityManager;
    :cond_14
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2219
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 2220
    .local v1, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2221
    invoke-virtual {v1, v3}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 2222
    const-string v3, "set permanentFailed as false for cc33 operators"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2226
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    .line 2227
    nop

    .line 2232
    :cond_16
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x421f7
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x421ff
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42206
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4220c
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

.method protected blacklist initApnContexts(Landroid/os/PersistableBundle;)V
    .locals 10
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 617
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const-string v0, "initApnContexts: isDataCapable == false.  No Apn Contexts loaded"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 619
    return-void

    .line 622
    :cond_0
    const-string v0, "initApnContexts: E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 624
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;-><init>(Landroid/os/PersistableBundle;)V

    .line 625
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->getTypes()Ljava/util/Collection;

    move-result-object v0

    .line 627
    .local v0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/dataconnection/ApnConfigType;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    .line 628
    .local v2, "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    new-instance v9, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    .line 629
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getPriority()I

    move-result v8

    move-object v3, v9

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;-><init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 630
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initApnContexts: apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v5

    .line 635
    invoke-static {v5}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 637
    .end local v2    # "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$0S9m22ZRQ_vXqEkSPUZfGVdl63g;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$0S9m22ZRQ_vXqEkSPUZfGVdl63g;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 639
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logSortedApnContexts()V

    .line 640
    return-void
.end method

.method public blacklist isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;ILcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z
    .locals 21
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "requestType"    # I
    .param p3, "dataConnectionReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    .line 730
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 732
    .local v4, "reasons":Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    const/4 v5, 0x0

    .line 733
    .local v5, "requestApnType":I
    if-eqz v1, :cond_0

    .line 734
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v5

    .line 738
    :cond_0
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    move-result v6

    .line 739
    .local v6, "internalDataEnabled":Z
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    .line 740
    .local v7, "attachedState":Z
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v8

    .line 741
    .local v8, "desiredPowerState":Z
    iget-object v9, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    move-result v9

    .line 743
    .local v9, "radioStateFromCarrier":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v10

    .line 744
    .local v10, "dataRat":I
    const/16 v11, 0x12

    if-ne v10, v11, :cond_1

    .line 745
    const/4 v8, 0x1

    .line 746
    const/4 v9, 0x1

    .line 783
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v12

    .line 782
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    .line 785
    .local v12, "defaultDataSelected":Z
    const/4 v14, 0x1

    if-eqz v1, :cond_3

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 786
    invoke-static {v5, v15}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v15, v14

    .line 788
    .local v15, "isMeteredApnType":Z
    :goto_1
    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 796
    .local v16, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 797
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v16

    .line 801
    :cond_4
    if-eqz v1, :cond_6

    const/16 v13, 0x200

    if-ne v5, v13, :cond_6

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 806
    if-eqz v3, :cond_5

    .line 807
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v3, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 810
    :cond_5
    return v14

    .line 814
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v13

    if-nez v13, :cond_7

    .line 815
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 820
    :cond_7
    const/16 v13, 0x11

    if-eqz v1, :cond_8

    if-eq v5, v13, :cond_9

    :cond_8
    const/16 v13, 0x100

    if-ne v5, v13, :cond_a

    :cond_9
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 822
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v13

    if-eqz v13, :cond_a

    if-ne v10, v11, :cond_a

    .line 824
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 827
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->shouldRestrictDataForEcbm()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 828
    :cond_b
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 831
    :cond_c
    const/4 v11, 0x2

    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->shouldAutoAttach()Z

    move-result v13

    if-nez v13, :cond_d

    if-eq v2, v11, :cond_d

    .line 832
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 834
    :cond_d
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_e

    .line 835
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->SIM_NOT_READY:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 838
    :cond_e
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v13

    .line 839
    .local v13, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-eqz v13, :cond_f

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v14

    if-nez v14, :cond_f

    .line 840
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 841
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 844
    :cond_f
    if-nez v6, :cond_10

    .line 845
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 847
    :cond_10
    if-nez v12, :cond_11

    .line 848
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 850
    :cond_11
    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v14

    const-string v11, "default"

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v14

    if-nez v14, :cond_12

    .line 851
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 854
    if-eqz v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 855
    const-string v14, "roamingOn"

    invoke-virtual {v1, v14}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 860
    :cond_12
    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v14

    move/from16 v17, v6

    .end local v6    # "internalDataEnabled":Z
    .local v17, "internalDataEnabled":Z
    sget-object v6, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v14, v6}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 861
    .local v6, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    invoke-interface {v6, v1}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->isInBootwizard(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 862
    const-string v14, "isInBootwizard and data disallowed"

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 863
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 866
    :cond_13
    iget-boolean v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPsRestricted:Z

    if-eqz v14, :cond_14

    .line 867
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 869
    :cond_14
    if-nez v8, :cond_15

    .line 870
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 872
    :cond_15
    if-nez v9, :cond_16

    .line 873
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 876
    :cond_16
    if-eqz v1, :cond_17

    .line 880
    iget v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    move/from16 v18, v7

    .end local v7    # "attachedState":Z
    .local v18, "attachedState":Z
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v7

    .line 881
    move/from16 v19, v8

    .end local v8    # "desiredPowerState":Z
    .local v19, "desiredPowerState":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v8

    .line 880
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v7

    if-eq v14, v7, :cond_18

    const/4 v7, 0x2

    if-eq v2, v7, :cond_18

    .line 882
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_OTHER_TRANSPORT:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_2

    .line 876
    .end local v18    # "attachedState":Z
    .end local v19    # "desiredPowerState":Z
    .restart local v7    # "attachedState":Z
    .restart local v8    # "desiredPowerState":Z
    :cond_17
    move/from16 v18, v7

    move/from16 v19, v8

    .line 886
    .end local v7    # "attachedState":Z
    .end local v8    # "desiredPowerState":Z
    .restart local v18    # "attachedState":Z
    .restart local v19    # "desiredPowerState":Z
    :cond_18
    :goto_2
    if-nez v1, :cond_19

    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v7

    goto :goto_3

    .line 887
    :cond_19
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v7

    :goto_3
    nop

    .line 889
    .local v7, "isDataEnabled":Z
    if-nez v7, :cond_1b

    .line 890
    if-eqz v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 891
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isPolicyDataEnabled()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 892
    :cond_1a
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 897
    :cond_1b
    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedForRoamingFeature(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 900
    if-eqz v13, :cond_1c

    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isSimMeLockAllowed(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 901
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_SIM_ME_LOCK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 905
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnabled()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 906
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_FDN_ENABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 910
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getAllowConfig()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 911
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 915
    :cond_1e
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v8

    .line 916
    .local v8, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->isAllowOnlyVsimNetwork()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 917
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NON_VSIM_PDN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 921
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 922
    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 923
    .local v14, "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v14, :cond_21

    if-eqz v1, :cond_21

    .line 924
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 925
    .local v2, "apnSettingDefault":Landroid/telephony/data/ApnSetting;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v20

    if-eqz v20, :cond_20

    .line 926
    move/from16 v20, v7

    .end local v7    # "isDataEnabled":Z
    .local v20, "isDataEnabled":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 927
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_DATA_RETRY_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_4

    .line 925
    .end local v20    # "isDataEnabled":Z
    .restart local v7    # "isDataEnabled":Z
    :cond_20
    move/from16 v20, v7

    .end local v7    # "isDataEnabled":Z
    .restart local v20    # "isDataEnabled":Z
    goto :goto_4

    .line 923
    .end local v2    # "apnSettingDefault":Landroid/telephony/data/ApnSetting;
    .end local v20    # "isDataEnabled":Z
    .restart local v7    # "isDataEnabled":Z
    :cond_21
    move/from16 v20, v7

    .end local v7    # "isDataEnabled":Z
    .restart local v20    # "isDataEnabled":Z
    goto :goto_4

    .line 921
    .end local v14    # "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v20    # "isDataEnabled":Z
    .restart local v7    # "isDataEnabled":Z
    :cond_22
    move/from16 v20, v7

    .line 933
    .end local v7    # "isDataEnabled":Z
    .restart local v20    # "isDataEnabled":Z
    :cond_23
    :goto_4
    if-eqz v1, :cond_24

    .line 934
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v7, "2GVoiceCallEnded"

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 936
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    if-eq v2, v7, :cond_24

    .line 937
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_TEMP_DATA_SWITCH_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 941
    :cond_24
    if-eqz v1, :cond_25

    .line 942
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getIsPcoAllowedDefault()Z

    move-result v2

    if-nez v2, :cond_25

    .line 944
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_PCO_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 949
    :cond_25
    if-eqz v1, :cond_26

    .line 950
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isLocatedPlmnChanged()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 951
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_LOCATED_PLMN_CHANGED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 956
    :cond_26
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->containsHardDisallowedReasons()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 957
    if-eqz v3, :cond_27

    .line 958
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 960
    :cond_27
    const/4 v2, 0x0

    return v2

    .line 967
    :cond_28
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 969
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_29

    .line 970
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    goto :goto_5

    .line 973
    :cond_29
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2a

    if-nez v15, :cond_2a

    const/16 v2, 0x11

    if-eq v5, v2, :cond_2a

    .line 975
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 980
    :cond_2a
    :goto_5
    if-eqz v1, :cond_2b

    .line 981
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasRestrictedRequests(Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 982
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 983
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 987
    :cond_2b
    invoke-interface {v6}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->haveVsimIgnoreUserDataSetting()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 988
    const-string v2, "Vsim,ignore soft disallowed reason"

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 989
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    goto :goto_6

    .line 995
    :cond_2c
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 998
    :cond_2d
    :goto_6
    if-eqz v3, :cond_2e

    .line 999
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 1002
    :cond_2e
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    return v2
.end method

.method public blacklist isDataServiceBound()Z
    .locals 1

    .line 4326
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceBound:Z

    return v0
.end method

.method protected blacklist isOnlySingleDcAllowed(I)Z
    .locals 4
    .param p1, "rilRadioTech"    # I

    .line 1491
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_1

    .line 1494
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isOnlySingleDcAllowed()Z

    move-result v0

    .line 1495
    .local v0, "onlySingleDcAllowed":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOnlySingleDcAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    return v1

    .line 1502
    .end local v0    # "onlySingleDcAllowed":Z
    :cond_0
    goto :goto_0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Fail to create or use plug-in"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1506
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isOp129DunChange()Z
    .locals 3

    .line 4568
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4569
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 4568
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4570
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp129GsmUmts(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4571
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4572
    :cond_0
    const-string v0, "isOp129DunChange"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4573
    const/4 v0, 0x1

    return v0

    .line 4576
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isOp129GsmUmts(I)Z
    .locals 2
    .param p1, "radioTechnology"    # I

    .line 4553
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 2334
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2335
    return-void
.end method

.method protected blacklist mergeApns(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 33
    .param p1, "dest"    # Landroid/telephony/data/ApnSetting;
    .param p2, "src"    # Landroid/telephony/data/ApnSetting;

    .line 1918
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    .line 1919
    .local v0, "id":I
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    const/16 v2, 0x11

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 1920
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    .line 1922
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    or-int v31, v1, v2

    .line 1923
    .local v31, "resultApnType":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 1924
    .local v8, "mmsc":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1925
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v9, v1

    .line 1926
    .local v9, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    :goto_2
    move v10, v1

    .line 1927
    .local v10, "mmsPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1928
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v6, v1

    .line 1929
    .local v6, "proxy":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    :goto_4
    move v7, v1

    .line 1930
    .local v7, "port":I
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    move v15, v1

    goto :goto_5

    .line 1931
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    move v15, v1

    :goto_5
    nop

    .line 1932
    .local v15, "protocol":I
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 1933
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    :goto_6
    move/from16 v16, v1

    .line 1934
    .local v16, "roamingProtocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 1935
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_7

    .line 1936
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    or-int/2addr v1, v3

    move/from16 v18, v1

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v18, v2

    .line 1939
    .local v18, "networkTypeBitmask":I
    :goto_8
    new-instance v32, Lmediatek/telephony/data/MtkApnSetting;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v4

    .line 1940
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v11

    .line 1941
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v13

    .line 1942
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v19

    .line 1943
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v20, v2

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v1, 0x1

    move/from16 v20, v1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v21

    .line 1944
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v25

    .line 1945
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v28

    .line 1946
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v29

    move-object/from16 v1, p1

    check-cast v1, Lmediatek/telephony/data/MtkApnSetting;

    iget v1, v1, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    move/from16 v30, v1

    move-object/from16 v1, v32

    move v2, v0

    move/from16 v14, v31

    invoke-direct/range {v1 .. v30}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    .line 1939
    return-object v32
.end method

.method protected blacklist mtkCanHandleOnDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZII)Z
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .param p4, "requestType"    # I

    .line 4232
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4233
    return v0

    .line 4234
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataSetupSscMode3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4236
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 4237
    .local v1, "apn":Landroid/telephony/data/ApnSetting;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataSetupComplete: SSC mode3 PDU, error apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requestType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4238
    invoke-static {p4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4237
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4240
    .end local v1    # "apn":Landroid/telephony/data/ApnSetting;
    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getDataConnectionSscMode3()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v1

    .line 4241
    .local v1, "dc3":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4242
    move-object v2, p1

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->setDataConnectionSscMode3(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4243
    if-nez v1, :cond_1

    .line 4244
    const-string v0, "onDataSetupComplete: SSC mode3 PDU, no connection to original DC, it\'s wired"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4246
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateNetworkAgentSscMode3(II)V

    .line 4248
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 4250
    .end local v1    # "dc3":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_2
    return v0
.end method

.method protected blacklist mtkCpaModeOnApnChanged(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 4823
    const/4 v0, 0x0

    .line 4824
    .local v0, "isNeedToSkip":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4825
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4826
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4827
    :cond_0
    const-string v1, "[CpaDct]mtkCpaModeOnApnChanged skip user apn changed"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4828
    const/4 v0, 0x1

    .line 4831
    :cond_1
    return v0
.end method

.method protected blacklist mtkCpaModeOnDataDisconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4694
    const/4 v0, 0x0

    .line 4695
    .local v0, "ret":Z
    if-eqz p1, :cond_4

    .line 4696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]onDataDisconnectDone apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4698
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4699
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4700
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4701
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4702
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4704
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4705
    const/4 v0, 0x1

    .line 4706
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 4707
    :cond_0
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4710
    :cond_1
    const-string v1, "[CpaDct]mtkCpaModeOnDataDisconnect is not CPA APN!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4713
    :cond_2
    const-string v1, "[CpaDct]not handle, currentCpaMode != CAP"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4716
    :cond_3
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4719
    :cond_4
    const-string v1, "[CpaDct]mtkCpaModeOnDataDisconnect, apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4721
    :goto_0
    return v0
.end method

.method protected blacklist mtkCpaModeOnDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZII)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .param p4, "requestType"    # I

    .line 4640
    const/4 v0, 0x0

    .line 4641
    .local v0, "ret":Z
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 4642
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]mtkCpaModeOnDataSetupComplete() apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4645
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4646
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4647
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4648
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4650
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4651
    const/4 v0, 0x1

    .line 4652
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 4653
    :cond_0
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4656
    :cond_1
    const-string v1, "[CpaDct]mtkCpaModeOnDataSetupComplete is not CPA APN!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4659
    :cond_2
    const-string v1, "[CpaDct]mtkCpaModeOnDataSetupComplete() not in NAVI mode"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4662
    :cond_3
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4665
    :cond_4
    const-string v1, "[CpaDct]not success or apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4667
    :goto_0
    return v0
.end method

.method protected blacklist mtkCpaModeOnRetryAfterDisconnected(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4796
    const/4 v0, 0x1

    .line 4797
    .local v0, "isNeedToRetry":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4798
    const-string v1, "apnChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4800
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4801
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4813
    :cond_0
    const-string v1, "[CpaDct]not skip retry, not CPA mode or switching from default to CPA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4802
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 4803
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApnCanHandleType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4804
    const-string v1, "[CpaDct]mtkCpaModeOnRetryAfterDisconnected skip retry"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4805
    const/4 v0, 0x0

    goto :goto_1

    .line 4807
    :cond_2
    const-string v1, "[CpaDct]not skip retry, isCapApnCanHandleType()==false"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4810
    :cond_3
    const-string v1, "[CpaDct]not skip retry, getCpaDctState()!= DISCONNECTING"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4816
    :cond_4
    const-string v1, "[CpaDct]not skip retry, reason is not APN_CHANGED"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4819
    :cond_5
    :goto_1
    return v0
.end method

.method protected blacklist mtkCpaModeOnTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "tryReson"    # Ljava/lang/String;

    .line 4725
    const/4 v0, 0x0

    .line 4726
    .local v0, "ret":Z
    if-eqz p1, :cond_4

    .line 4727
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]mtkCpaModeOnTrySetupData() apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tryReson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4731
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 4732
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4733
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4734
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4736
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4737
    const/4 v0, 0x1

    .line 4738
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 4739
    :cond_0
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4742
    :cond_1
    const-string v1, "[CpaDct]mtkCpaModeOnTrySetupData is not CPA APN!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4745
    :cond_2
    const-string v1, "[CpaDct]not handle, CpaDctState != CPA_DCT_STATE_LOST_NW"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4748
    :cond_3
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4751
    :cond_4
    const-string v1, "[CpaDct]apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4753
    :goto_0
    return v0
.end method

.method protected blacklist mtkCpaModeOnTrySetupDataError(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "dcReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    .param p3, "errStr"    # Ljava/lang/String;

    .line 4758
    const/4 v0, 0x0

    .line 4759
    .local v0, "ret":Z
    if-eqz p1, :cond_6

    .line 4760
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]mtkCpaModeOnTrySetupDataError() apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4764
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4765
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4783
    :cond_0
    const-string v1, "[CpaDct]not handle,requestMode != CAP or currentMode!=CPA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4766
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4767
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_2

    .line 4768
    const-string v1, "[CpaDct]not handle, apnContext.getState()=CONNECTED"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4770
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->containsOnly(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4771
    const-string v1, "[CpaDct]not handle for NOT_ATTACHED"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4772
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 4773
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4775
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4776
    const/4 v0, 0x1

    .line 4777
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 4778
    :cond_4
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4786
    :cond_5
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4789
    :cond_6
    const-string v1, "[CpaDct]apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4791
    :cond_7
    :goto_1
    return v0
.end method

.method public blacklist mtkDeactivateDataCall(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4057
    if-eqz p1, :cond_0

    .line 4058
    const-string v0, "mtkDeactivateDataCall: sync apn disable state for multi-purpose apn setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 4060
    .local v0, "nProfileId":I
    mul-int/lit8 v0, v0, -0x1

    .line 4061
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 4064
    .end local v0    # "nProfileId":I
    :cond_0
    return-void
.end method

.method protected blacklist mtkFakeDataConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 8
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtkFakeDataConnection: apn type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4298
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4299
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 4300
    .local v0, "conn":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    if-nez v0, :cond_0

    .line 4301
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 4302
    .local v1, "id":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    move v3, v1

    move-object v4, p0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 4304
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4306
    .end local v1    # "id":I
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->fakeNetworkAgent(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 4308
    .end local v0    # "conn":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    :cond_1
    return-void
.end method

.method protected blacklist mtkFetchCpaApn()Landroid/telephony/data/ApnSetting;
    .locals 2

    .line 4835
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4836
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4837
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4838
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4839
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaApn()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0

    .line 4843
    :cond_1
    const-string v0, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4845
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist mtkGetEmergencyApnSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;

    .line 3555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and numeric=\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist mtkGetOperatorNumeric()Ljava/lang/String;
    .locals 5

    .line 3825
    const/4 v0, 0x0

    .line 3826
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    const/4 v2, 0x2

    const-string v3, ""

    if-ne v1, v2, :cond_1

    .line 3827
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    move-object v0, v1

    goto :goto_2

    .line 3829
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    move-object v0, v1

    .line 3832
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkGetOperatorNumeric: phone type = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " [1:GSM,2:CDMA], operator from mPhone = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3833
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", operator from RIL = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3832
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3836
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3837
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3838
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3839
    const-string v1, "mtkGetOperatorNumeric: wrong phone type, update it"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3840
    const-string v0, ""

    .line 3841
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updatePhoneType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3842
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v1, v2, :cond_4

    .line 3844
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaNumeric()Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v0, v3

    goto :goto_3

    .line 3847
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmNumeric()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v0, v3

    .line 3852
    :cond_6
    :goto_3
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getOperatorNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist mtkHandlePcoByOp(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)V
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "pcoData"    # Landroid/telephony/PcoData;

    .line 4088
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_1

    .line 4089
    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->getPcoActionByApnType(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)I

    move-result v0

    .line 4090
    .local v0, "pcoAction":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4092
    :cond_0
    const-string v2, "mtkHandlePcoByOp action1: teardown default apn"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4093
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 4099
    .end local v0    # "pcoAction":I
    :cond_1
    :goto_0
    return-void
.end method

.method protected blacklist mtkIsAddRequestNetworkCompleteMsg(II)Z
    .locals 1
    .param p1, "apnType"    # I
    .param p2, "requestType"    # I

    .line 4271
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4272
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    if-nez v0, :cond_0

    .line 4273
    const-string v0, "Remember the handover apn type when data rat is unknown"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4274
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    .line 4275
    const/4 v0, 0x1

    return v0

    .line 4277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist mtkIsApnCanSupportNetworkType(Landroid/telephony/data/ApnSetting;I)Z
    .locals 4
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "radioTech"    # I

    .line 4533
    const/4 v0, 0x0

    .line 4534
    .local v0, "canHandle":Z
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 4535
    .local v1, "networkType":I
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    const/16 v3, 0x200

    if-ne v2, v3, :cond_2

    if-nez v1, :cond_2

    .line 4537
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4538
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    goto :goto_0

    .line 4539
    :cond_0
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 4540
    const/16 v2, 0x12

    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    .line 4542
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mtkIsApnCanSupportNetworkType] return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logi(Ljava/lang/String;)V

    .line 4545
    :cond_2
    return v0
.end method

.method protected blacklist mtkIsInUse(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4259
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getDataConnectionSscMode3()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 4260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findFreeDataConnection: APN type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dc=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is inuse for SSC mode3 PDU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4262
    const/4 v0, 0x1

    return v0

    .line 4264
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist mtkIsNeedNotify(Lcom/android/internal/telephony/dataconnection/ApnContext;Z)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "force"    # Z

    .line 3515
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3516
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 3517
    const-string v0, "mtkIsNeedNotify: do not notify state for default apn"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3518
    const/4 v0, 0x0

    return v0

    .line 3520
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->isNeedNotify()Z

    move-result v0

    return v0
.end method

.method protected blacklist mtkIsNeedRegisterSettingsObserver(II)Z
    .locals 2
    .param p1, "pSubId"    # I
    .param p2, "subId"    # I

    .line 3726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtkIsNeedRegisterSettingsObserver: pSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3727
    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist mtkIsPermanentFailure(I)Z
    .locals 5
    .param p1, "dcFailCause"    # I

    .line 3527
    const/4 v0, 0x0

    .line 3529
    .local v0, "bPermanent":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v1, :cond_0

    .line 3531
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isPermanentCause(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3535
    goto :goto_0

    .line 3532
    :catch_0
    move-exception v1

    .line 3533
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "mDataConnectionExt.isPermanentCause exception"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3537
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/16 v1, 0xf46

    if-ne p1, v1, :cond_2

    .line 3538
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3539
    .local v1, "strOperatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->KDDI_OPERATOR:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 3541
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3542
    const/4 v0, 0x1

    .line 3543
    goto :goto_2

    .line 3540
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3548
    .end local v1    # "strOperatorNumeric":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return v0
.end method

.method protected blacklist mtkIsSetFalseForUserAction()Z
    .locals 1

    .line 4407
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    return v0
.end method

.method protected blacklist mtkIsUseCarrierRoamingData()Z
    .locals 1

    .line 4402
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist mtkModifyInterApnDelay(JLcom/android/internal/telephony/dataconnection/ApnContext;)J
    .locals 3
    .param p1, "delay"    # J
    .param p3, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3467
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vsim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3468
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3469
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "apnChanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3471
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3472
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf8e

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3474
    const-wide/16 p1, 0x64

    goto :goto_1

    .line 3475
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3476
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emergency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3477
    :cond_2
    const-wide/16 p1, -0x1

    goto :goto_1

    .line 3470
    :cond_3
    :goto_0
    const-wide/16 p1, 0x3e8

    .line 3479
    :cond_4
    :goto_1
    return-wide p1
.end method

.method protected blacklist mtkSkipCheckForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4216
    if-eqz p1, :cond_0

    .line 4217
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataSetupSscMode3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4218
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 4219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForCompatibleConnectedApnContext: skip check for SSC mode3 PDU, apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4221
    const/4 v0, 0x1

    return v0

    .line 4223
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist mtkSkipDataStallAlarm()Z
    .locals 6

    .line 4331
    const/4 v0, 0x1

    .line 4332
    .local v0, "skipStall":Z
    const/4 v1, 0x0

    .line 4333
    .local v1, "isTestSim":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 4334
    .local v2, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v3

    .line 4336
    .local v3, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 4337
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isTestIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4338
    const/4 v1, 0x1

    .line 4341
    :cond_0
    const-string v4, "persist.vendor.skip.data.stall.alarm"

    if-eqz v1, :cond_2

    .line 4342
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4343
    const/4 v0, 0x0

    goto :goto_0

    .line 4346
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4349
    :cond_2
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4350
    const/4 v0, 0x1

    goto :goto_0

    .line 4353
    :cond_3
    const/4 v0, 0x0

    .line 4357
    :goto_0
    return v0
.end method

.method protected blacklist mtkSyncApnContextDisableState(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "releaseType"    # I

    .line 4025
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4026
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4027
    .local v0, "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4028
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 4029
    .local v1, "apnSettingDefault":Landroid/telephony/data/ApnSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4030
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4031
    const-string v2, "mtkSyncApnContextDisableState: do not sync disable info."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logw(Ljava/lang/String;)V

    .line 4032
    return-void

    .line 4036
    .end local v0    # "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnSettingDefault":Landroid/telephony/data/ApnSetting;
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4037
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apn type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not connected, we need to sync the disable state with RIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 4041
    .local v0, "nProfileId":I
    mul-int/lit8 v0, v0, -0x1

    .line 4042
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .end local v0    # "nProfileId":I
    goto :goto_0

    .line 4044
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 4046
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 4047
    .local v0, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v0, :cond_2

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4048
    const-string v1, "This apn context has INTERNET capability and CS will not tear it down"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4049
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 4050
    invoke-virtual {p0, v2, p2, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    nop

    .line 4054
    .end local v0    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist mtkTearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/os/Message;)V
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "msg"    # Landroid/os/Message;

    .line 4203
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getDataConnectionSscMode3()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpConnectionInternal: tearing down SSC mode3 PDU, apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4205
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getDataConnectionSscMode3()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    .line 4206
    const-string v1, "dataSetupSscMode3"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 4208
    :cond_0
    return-void
.end method

.method public blacklist notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V
    .locals 1
    .param p1, "ss"    # Lmediatek/telephony/MtkServiceState;

    .line 4281
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsNotifyDataAttached:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 4282
    invoke-virtual {p1}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4283
    const-string v0, "notifyMtkServiceStateChanged: send EVENT_DATA_CONNECTION_ATTACHED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsNotifyDataAttached:Z

    .line 4285
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    .line 4286
    const v0, 0x42010

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4288
    :cond_0
    return-void
.end method

.method protected blacklist onApnChanged()V
    .locals 5

    .line 1461
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 1462
    .local v0, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 1465
    .local v1, "isDisconnected":Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v4, v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v4, :cond_2

    .line 1467
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 1471
    :cond_2
    const-string v4, "apn changed!"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnApnChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 1476
    :cond_3
    const-string v4, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createAllApnList()V

    .line 1478
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 1479
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1480
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    const-string v4, "apnChanged"

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V

    .line 1483
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendOnApnChangedDone(Z)V

    .line 1485
    return-void
.end method

.method protected blacklist onDataConnectionAttached()V
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    .line 714
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDetachedDc:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "Add mms capability back when ps is attached"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDetachedDc:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->addMmsCapability()V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDetachedDc:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 720
    :cond_0
    return-void
.end method

.method protected blacklist onDataConnectionDetached()V
    .locals 6

    .line 679
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    .line 681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_data_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    move v0, v2

    .line 686
    .local v0, "isMobileDataAlwaysOn":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataAlwaysOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 687
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    if-ne v2, v1, :cond_1

    if-eqz v0, :cond_1

    .line 688
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 689
    .local v1, "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 691
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 692
    .local v2, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 693
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 694
    .local v3, "apnContextMms":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 695
    nop

    .line 696
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 697
    .local v4, "dataConnection":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    if-eqz v4, :cond_1

    .line 698
    const-string v5, "Remove mms capability temporarily when ps is detached"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 699
    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDetachedDc:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 700
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->removeMmsCapability()V

    .line 707
    .end local v1    # "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    .end local v3    # "apnContextMms":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "dataConnection":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    :cond_1
    return-void
.end method

.method protected blacklist onDataEnabledChanged(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "enabledChangedReason"    # I

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabledChangedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2294
    if-eqz p1, :cond_0

    .line 2295
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reevaluateDataConnections()V

    .line 2296
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2299
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 2300
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->oplusWlanAssistantMeasureForDataEnabled(Z)V

    .line 2302
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    goto :goto_2

    .line 2304
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    .line 2316
    const-string v1, "specificDisabled"

    .local v1, "cleanupReason":Ljava/lang/String;
    goto :goto_0

    .line 2309
    .end local v1    # "cleanupReason":Ljava/lang/String;
    :cond_1
    const-string v1, "carrierActionDisableMeteredApn"

    .line 2310
    .restart local v1    # "cleanupReason":Ljava/lang/String;
    goto :goto_0

    .line 2306
    .end local v1    # "cleanupReason":Ljava/lang/String;
    :cond_2
    const-string v1, "dataDisabledInternal"

    .line 2307
    .restart local v1    # "cleanupReason":Ljava/lang/String;
    nop

    .line 2321
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2322
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2323
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2324
    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2326
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    goto :goto_1

    .line 2329
    .end local v1    # "cleanupReason":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method protected blacklist onDataRoamingOff()V
    .locals 5

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataRoamingOff getDataRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 1583
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1587
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setRoamingDataWithRoamingType(I)Z

    .line 1589
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reevaluateDataConnections()V

    .line 1591
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v0

    const-string v1, "roamingOff"

    if-eqz v0, :cond_2

    .line 1593
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v0

    .line 1594
    .local v0, "bDomDataOnRoamingEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v2

    .line 1596
    .local v2, "bIntDataOnRoamingEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDomOrIntRoamingOn bDomDataOnRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bIntDataOnRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentRoamingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1598
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1596
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1600
    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    goto :goto_1

    .line 1601
    :cond_1
    :goto_0
    const-string v3, "onDomOrIntRoamingOn: setup data for HOME."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 1608
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1613
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1618
    .end local v0    # "bDomDataOnRoamingEnabled":Z
    .end local v2    # "bIntDataOnRoamingEnabled":Z
    :goto_1
    goto :goto_2

    .line 1619
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1626
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1627
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 1628
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1634
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_2

    .line 1636
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 1640
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp18Sim()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1641
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1643
    :cond_5
    return-void
.end method

.method protected blacklist onDataRoamingOnOrSettingsChanged(I)V
    .locals 7
    .param p1, "messageType"    # I

    .line 1648
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    .line 1649
    .local v0, "currentRoamingType":I
    const/4 v1, 0x1

    const v2, 0x42030

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1652
    .local v2, "settingChanged":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataRoamingOnOrSettingsChanged getDataRoamingEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUserDataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 1654
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", settingChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentRoamingType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1652
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1660
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1661
    const-string v1, "data not enabled by user"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1662
    return-void

    .line 1666
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1667
    const-string v1, "Device is not roaming, ignore the request."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1668
    return-void

    .line 1674
    :cond_2
    if-nez v2, :cond_3

    .line 1675
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setRoamingDataWithRoamingType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 1678
    :cond_3
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkDataRoamingStatus(Z)V

    .line 1680
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp18Sim()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1681
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1685
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v3

    const-string v4, "onDataRoamingOnOrSettingsChanged: Tear down data connection on roaming."

    const-string v5, "onDataRoamingOnOrSettingsChanged: setup data on roaming"

    const-string v6, "roamingOn"

    if-eqz v3, :cond_7

    .line 1686
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkDomesticDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkInternationalDataRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 1691
    :cond_5
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p0, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto :goto_3

    .line 1687
    :cond_6
    :goto_1
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1688
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1689
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    goto :goto_3

    .line 1695
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1697
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    .line 1713
    :cond_8
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1714
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1715
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v3

    .line 1716
    .local v3, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    sget-object v4, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne v3, v4, :cond_9

    .line 1717
    const-string v1, "RSim, not tear down any data connection since ignore data roaming"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1719
    :cond_9
    invoke-virtual {p0, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto :goto_3

    .line 1701
    .end local v3    # "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    .line 1702
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reevaluateDataConnections()V

    .line 1705
    :cond_b
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1707
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1708
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 1722
    :goto_3
    return-void
.end method

.method protected blacklist onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1727
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSkipDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1731
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1732
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 1731
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1733
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnDataDisconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    .line 1737
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1739
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_3

    .line 1740
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1741
    .local v1, "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1742
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_2

    .line 1743
    const-string v0, "all data disconnect except ims, power off radio immediately"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    .line 1745
    goto :goto_1

    .line 1747
    .end local v1    # "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    goto :goto_0

    .line 1751
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    return-void

    .line 1752
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasMdAutoSetupImsCapability()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1753
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pdnOccupied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1754
    const-string v0, "try setup emergency PDN"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v1, 0x200

    .line 1756
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1757
    .local v0, "eImsContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    .line 1761
    .end local v0    # "eImsContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5
    return-void
.end method

.method public blacklist onDsdaStateChanged()V
    .locals 3

    .line 3291
    const-string v0, "onDsdaStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3292
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 3293
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 3294
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3296
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3297
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-nez v2, :cond_1

    .line 3298
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 3299
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    goto :goto_1

    .line 3301
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 3302
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    .line 3304
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 3305
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(ZZ)V

    .line 3307
    :cond_2
    return-void
.end method

.method protected blacklist onSimAbsent()V
    .locals 1

    .line 1546
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setIsPcoAllowedDefault(Z)V

    .line 1547
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->resetSimStatus()V

    .line 1549
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimAbsent()V

    .line 1550
    return-void
.end method

.method public blacklist onVoiceCallEndedEx()V
    .locals 4

    .line 3336
    const-string v0, "onVoiceCallEndedEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    .line 3338
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3339
    .local v1, "prevIsSupportConcurrent":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v2

    .line 3340
    .local v2, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    .line 3341
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3343
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3344
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3350
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->resetPollStats()V

    goto :goto_2

    .line 3345
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 3346
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    .line 3347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 3355
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v3, "2GVoiceCallEnded"

    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 3356
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(ZZ)V

    .line 3357
    return-void
.end method

.method public blacklist onVoiceCallStartedEx()V
    .locals 3

    .line 3275
    const-string v0, "onVoiceCallStartedEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    .line 3277
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 3278
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3279
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3281
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-nez v1, :cond_1

    .line 3282
    const-string v1, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 3284
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 3285
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyAllActiveDataConnections()V

    .line 3287
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(ZZ)V

    .line 3288
    return-void
.end method

.method public blacklist processPendingSetupData(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V
    .locals 1
    .param p1, "sst"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 3222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    .line 3223
    const v0, 0x421fa

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3224
    return-void
.end method

.method protected blacklist readConfiguration()V
    .locals 0

    .line 1540
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->readConfiguration()V

    .line 1541
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->readAddOnConfiguration()V

    .line 1542
    return-void
.end method

.method protected blacklist registerForAllEvents()V
    .locals 4

    .line 444
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    .line 447
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForAllEvents: mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42202

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42201

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForMdDataRetryCountReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42211

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPlmnData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 464
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x421ff

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForResetAttachApn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42203

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42206

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPcoDataAfterAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42207

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDedicatedBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42208

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDedicatedBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42209

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDedicatedBearerDeactivationed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220f

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForMobileDataUsage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 499
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v3, 0x42210

    invoke-virtual {v0, p0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNwLimitState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 506
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    if-ne v0, v1, :cond_2

    .line 507
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220c

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNetworkReject(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 509
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const v1, 0x42212

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42214

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 514
    return-void
.end method

.method public blacklist registerServiceStateTrackerEvents()V
    .locals 3

    .line 425
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerServiceStateTrackerEvents()V

    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 429
    const v1, 0x42200

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->registerForDataRoamingTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    return-void
.end method

.method protected blacklist registerSettingsObserver()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 526
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 525
    const v2, 0x42032

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 531
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->registerFdnContentObserver()V

    .line 533
    return-void
.end method

.method protected blacklist retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1511
    const/4 v0, 0x1

    .line 1512
    .local v0, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1516
    const-string v2, "FdnEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1518
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1519
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1520
    :cond_0
    const/4 v0, 0x0

    .line 1525
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 1526
    .local v2, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->checkIfRetryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;Z)Z

    move-result v0

    .line 1531
    if-eqz v0, :cond_2

    .line 1532
    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnRetryAfterDisconnected(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    .line 1535
    :cond_2
    return v0
.end method

.method protected blacklist setDataProfilesAsNeeded()V
    .locals 8

    .line 1765
    const-string v0, "setDataProfilesAsNeeded"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1768
    .local v0, "operator":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1769
    :cond_0
    const-string v1, "setDataProfilesAsNeeded: ignore, sim not ready and no operator numeric"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1770
    return-void

    .line 1774
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    .local v1, "dataProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataProfile;>;"
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 1778
    .local v3, "apn":Landroid/telephony/data/ApnSetting;
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->encodeInactiveTimer(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    .line 1779
    .local v4, "apnEncode":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v5

    .line 1781
    .local v5, "dp":Landroid/telephony/data/DataProfile;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1782
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    .end local v3    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v4    # "apnEncode":Landroid/telephony/data/ApnSetting;
    .end local v5    # "dp":Landroid/telephony/data/DataProfile;
    :cond_2
    goto :goto_0

    .line 1787
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->fetchDunApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 1788
    .local v2, "dunApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1789
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    .line 1790
    .local v4, "dun":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v5

    .line 1791
    .local v5, "dpDun":Landroid/telephony/data/DataProfile;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1792
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataProfilesAsNeeded: add DUN apn setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1795
    .end local v4    # "dun":Landroid/telephony/data/ApnSetting;
    .end local v5    # "dpDun":Landroid/telephony/data/DataProfile;
    :cond_4
    goto :goto_1

    .line 1800
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1802
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1803
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/telephony/data/DataProfile;

    .line 1802
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/data/DataProfile;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1804
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v5

    const/4 v6, 0x0

    .line 1802
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    goto :goto_2

    .line 1807
    :cond_6
    const-string v3, "setDataProfilesAsNeeded: ignore the empty data profile list"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1809
    :goto_2
    return-void
.end method

.method protected blacklist setInitialAttachApn()V
    .locals 33

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 1371
    .local v1, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->needManualSelectAPN(Landroid/telephony/data/ApnSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1372
    const-string v2, "need manual select APN, setInitialAttachApn return"

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1373
    return-void

    .line 1376
    :cond_0
    const/4 v2, 0x0

    .line 1377
    .local v2, "iaApnSetting":Landroid/telephony/data/ApnSetting;
    const/4 v3, 0x0

    .line 1378
    .local v3, "defaultApnSetting":Landroid/telephony/data/ApnSetting;
    const/4 v4, 0x0

    .line 1380
    .local v4, "firstNonEmergencyApnSetting":Landroid/telephony/data/ApnSetting;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInitialApn: E mPreferredApn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1382
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    const/16 v6, 0x100

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5, v6}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1383
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    goto/16 :goto_1

    .line 1384
    :cond_1
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1386
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/data/ApnSetting;

    .line 1387
    .local v7, "apn":Landroid/telephony/data/ApnSetting;
    if-nez v4, :cond_2

    .line 1388
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->isEmergencyApn()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1389
    move-object v4, v7

    .line 1390
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInitialApn: firstNonEmergencyApnSetting="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1393
    :cond_2
    invoke-virtual {v7, v6}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInitialApn: iaApnSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1396
    move-object v2, v7

    .line 1397
    goto :goto_1

    .line 1398
    :cond_3
    if-nez v3, :cond_4

    const/16 v8, 0x11

    .line 1399
    invoke-virtual {v7, v8}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInitialApn: defaultApnSetting="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1402
    move-object v3, v7

    .line 1404
    .end local v7    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_4
    goto :goto_0

    .line 1407
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->allowInitialAttachForOperator()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1409
    const-string v5, "Abort Initial attach"

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1410
    return-void

    .line 1419
    :cond_6
    const/4 v5, 0x0

    .line 1420
    .local v5, "initialAttachApnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v2, :cond_7

    .line 1421
    const-string v6, "setInitialAttachApn: using iaApnSetting"

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1422
    move-object v5, v2

    goto :goto_2

    .line 1423
    :cond_7
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v6, :cond_8

    .line 1424
    const-string v6, "setInitialAttachApn: using mPreferredApn"

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1425
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    goto :goto_2

    .line 1426
    :cond_8
    if-eqz v3, :cond_9

    .line 1427
    const-string v6, "setInitialAttachApn: using defaultApnSetting"

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1428
    move-object v5, v3

    goto :goto_2

    .line 1429
    :cond_9
    if-eqz v4, :cond_a

    .line 1430
    const-string v6, "setInitialAttachApn: using firstNonEmergencyApnSetting"

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1431
    move-object v5, v4

    .line 1434
    :cond_a
    :goto_2
    const/4 v6, 0x0

    if-nez v5, :cond_b

    .line 1435
    const-string v7, "setInitialAttachApn: X There in no available apn"

    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1436
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1438
    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x100

    const/16 v21, 0x2

    const/16 v22, 0x2

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v15, ""

    const-string v17, ""

    const-string v18, ""

    const-string v32, ""

    invoke-static/range {v8 .. v32}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v7

    .line 1444
    .local v7, "emptyApnSetting":Landroid/telephony/data/ApnSetting;
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, v8, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v8, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1444
    invoke-static {v7, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1446
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v10

    .line 1444
    invoke-virtual {v8, v9, v10, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    .line 1448
    .end local v7    # "emptyApnSetting":Landroid/telephony/data/ApnSetting;
    goto :goto_3

    .line 1450
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1452
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, v7, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1452
    invoke-static {v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v8

    iget-object v9, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1454
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v9

    .line 1452
    invoke-virtual {v7, v8, v9, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    .line 1457
    :cond_c
    :goto_3
    return-void
.end method

.method public blacklist setMobileDataUsageSum(JJJJ)V
    .locals 24
    .param p1, "txBytes"    # J
    .param p3, "txPkts"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPkts"    # J

    .line 4507
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4508
    .local v1, "currentTime":J
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v10

    .line 4509
    .local v10, "isRoaming":I
    const-string v3, "default"

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 4510
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 4513
    .local v5, "ifacename":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkStats;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v2, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v14, v4

    .line 4514
    .local v14, "mobileDataUsage":Landroid/net/NetworkStats;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    invoke-virtual {v14, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 4515
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v4, v15

    const/16 v6, -0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v12, p5

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .end local v14    # "mobileDataUsage":Landroid/net/NetworkStats;
    .local v22, "mobileDataUsage":Landroid/net/NetworkStats;
    move-wide/from16 v14, p7

    move-wide/from16 v16, p1

    move-wide/from16 v18, p3

    invoke-direct/range {v4 .. v21}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    .end local v22    # "mobileDataUsage":Landroid/net/NetworkStats;
    .local v4, "mobileDataUsage":Landroid/net/NetworkStats;
    invoke-virtual {v4, v6}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 4520
    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 4521
    return-void
.end method

.method protected blacklist setPreferredApn(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 1962
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCanSetPreferApn:Z

    if-eqz v0, :cond_0

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredApn: insert pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1965
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 1966
    return-void
.end method

.method public blacklist setupDataForCpaChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 4634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]setupDataForCpaChange() reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4635
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 4636
    return-void
.end method

.method protected blacklist setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .line 1007
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    const-string v1, "setupDataOnAllConnectableApns: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1009
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-nez v0, :cond_2

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1011
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1012
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v4, ":[state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v4, ",enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1017
    const-string v4, "] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    .line 1019
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1022
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1023
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasMdAutoSetupImsCapability()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1024
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupDataOnAllConnectableApns: Ignore ims request for apntype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1027
    goto :goto_1

    .line 1030
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1031
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1032
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1033
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 1034
    .local v2, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1035
    const-string v3, "carrierConfigLoaded"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1036
    const-string v3, "2GVoiceCallEnded"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1037
    const-string v3, "nwTypeChanged"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1038
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1039
    const-string v3, "set permanentFailed as false for default/dun apn"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cancelReconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1046
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_5
    invoke-virtual {p0, v1, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1047
    .end local v1    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto/16 :goto_1

    .line 1048
    :cond_6
    return-void
.end method

.method protected blacklist setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .line 1053
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupDataOnConnectableApn: apnContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1055
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_1

    .line 1056
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_3

    .line 1057
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    if-ne p3, v0, :cond_2

    .line 1058
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1060
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    .line 1065
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1067
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1068
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 1085
    :cond_4
    const-string v0, "No need to trysetupdata as higher priority apncontext exists"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1071
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v2, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 1072
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->oplusWlanAssistantBlockTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 1074
    :cond_6
    const-string v2, "isConnectable() call trySetupData"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1077
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 1078
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    .line 1079
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    goto :goto_2

    .line 1082
    :cond_7
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    .line 1090
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v2, :cond_9

    .line 1091
    const-string v0, "dataSetupSscMode3"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1092
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSC mode3 call trySetupData for APN type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    .line 1098
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1099
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_a

    .line 1100
    const-string v0, "apnChanged"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1101
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCanSetPreferApn:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_a

    .line 1102
    const-string v0, "setupDataOnConnectableApns: PREFERRED APN is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 1104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_a

    .line 1105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setPreferredApn(I)V

    .line 1106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1111
    :cond_a
    return-void
.end method

.method public blacklist setupPdnByType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 4110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupPdnByType: sendMessage: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4111
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x42003

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4112
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldAutoAttach()Z
    .locals 3

    .line 2277
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    .line 2278
    .local v0, "phoneSwitcher":Lcom/android/internal/telephony/PhoneSwitcher;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2279
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2280
    const-string v1, "shouldAutoAttach: prefer data sim should not auto attach"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2281
    const/4 v1, 0x0

    return v1

    .line 2283
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->shouldAutoAttach()Z

    move-result v1

    return v1
.end method

.method protected blacklist shouldCleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)Z
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "disableMeteredOnly"    # Z
    .param p3, "singlePdn"    # Z

    .line 1340
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 1344
    .local v1, "apnSetting":Landroid/telephony/data/ApnSetting;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    return v2

    .line 1347
    :cond_1
    if-nez p2, :cond_2

    return v2

    .line 1350
    :cond_2
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1352
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    .line 1353
    .local v3, "isRoaming":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v4

    xor-int/2addr v4, v2

    .line 1354
    .local v4, "isDataRoamingDisabled":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 1355
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v6

    .line 1354
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v5

    xor-int/2addr v5, v2

    .line 1358
    .local v5, "isDataDisabled":Z
    if-nez v5, :cond_5

    .line 1360
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_4

    if-nez v4, :cond_5

    .line 1361
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRoamingTypeAllowed()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    move v0, v2

    .line 1358
    :cond_6
    return v0

    .line 1350
    .end local v3    # "isRoaming":Z
    .end local v4    # "isDataRoamingDisabled":Z
    .end local v5    # "isDataDisabled":Z
    :cond_7
    :goto_0
    return v0
.end method

.method protected blacklist sortApnContextByPriority()V
    .locals 7

    .line 644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const-string v0, "sortApnContextByPriority: isDataCapable == false.  No Apn Contexts loaded"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 646
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 651
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 652
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 655
    .end local v1    # "carrierConfig":Landroid/os/PersistableBundle;
    :cond_1
    const/4 v1, 0x0

    .line 658
    .restart local v1    # "carrierConfig":Landroid/os/PersistableBundle;
    :goto_0
    const-string v2, "sortApnContextByPriority: E"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 660
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;-><init>(Landroid/os/PersistableBundle;)V

    .line 661
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->getTypes()Ljava/util/Collection;

    move-result-object v2

    .line 662
    .local v2, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/dataconnection/ApnConfigType;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    .line 663
    .local v4, "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 664
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 665
    .local v5, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getPriority()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setPriority(I)V

    .line 667
    .end local v4    # "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    goto :goto_1

    .line 670
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 672
    .local v3, "prioritySortedApnContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 673
    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    .line 674
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logSortedApnContexts()V

    .line 675
    return-void
.end method

.method protected blacklist startDataStallAlarm(Z)V
    .locals 1
    .param p1, "suspectedStall"    # Z

    .line 2468
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkSkipDataStallAlarm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    const-string v0, "onDataStallAlarm: switch data-stall off, skip it!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2471
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 2473
    :goto_0
    return-void
.end method

.method public blacklist tearDownPdnByType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 4102
    const v0, 0x4220d

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4103
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearDownPdnByType: sendMessage: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4105
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4106
    const/4 v1, 0x1

    return v1
.end method

.method protected blacklist trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 13
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "requestType"    # I

    .line 1118
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 1119
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->needManualSelectAPN(Ljava/lang/String;Landroid/telephony/data/ApnSetting;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "need manual select APN, trySetupData return false"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1121
    return v2

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1127
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1128
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1130
    const-string v1, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1131
    return v3

    .line 1134
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 1137
    .local v1, "dataConnectionReasons":Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;ILcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1139
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedExt(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->isMmsBlock(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 1142
    .local v3, "isDataAllowed":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1143
    .local v4, "isEmergencyApn":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasMdAutoSetupImsCapability()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1144
    if-eqz v4, :cond_4

    .line 1145
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    check-cast v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->getActiveDcCount()I

    move-result v6

    .line 1146
    .local v6, "defaultBearerCount":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultBearerCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mDedicatedBearerCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1148
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDedicatedBearerCount:I

    add-int/2addr v7, v6

    const/4 v8, 0x7

    if-lt v7, v8, :cond_4

    .line 1149
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->teardownDataByEmergencyPolicy()V

    .line 1150
    return v2

    .line 1156
    .end local v6    # "defaultBearerCount":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trySetupData for APN type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requestType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1159
    .local v6, "logStr":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1161
    if-eqz v3, :cond_c

    .line 1162
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v7, v8, :cond_5

    .line 1163
    const-string v7, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    .line 1164
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1166
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1168
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v7

    .line 1169
    .local v7, "radioTech":I
    if-nez v7, :cond_6

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    .line 1170
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_6

    .line 1171
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getVoiceRat()I

    move-result v7

    .line 1173
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "service state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1174
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v8

    .line 1175
    invoke-virtual {v8}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v8

    .line 1174
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 1176
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_b

    .line 1178
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1179
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add mEmergencyApn: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to mAllApnSettings"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addEmergencyApnSetting()V

    .line 1185
    :cond_7
    nop

    .line 1186
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1187
    .local v5, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1188
    const/4 v8, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v9

    goto :goto_1

    :cond_8
    move-object v9, v8

    .line 1189
    .local v9, "apn":Landroid/telephony/data/ApnSetting;
    :goto_1
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    .line 1190
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v8

    :cond_9
    const/16 v12, 0x1b

    .line 1189
    invoke-virtual {v10, v11, v8, v12}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1192
    const-string v8, "trySetupData: X No APN found retValue=false"

    .line 1193
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkFakeDataConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1200
    const-string v10, "waitingApns is empty"

    invoke-virtual {p0, p1, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnTrySetupDataError(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Ljava/lang/String;)Z

    .line 1202
    return v2

    .line 1204
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_a
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySetupData: Create from mAllApnSettings : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1207
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1206
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1212
    .end local v5    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :cond_b
    invoke-virtual {p0, p1, v7, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;II)Z

    move-result v2

    .line 1215
    .local v2, "retValue":Z
    const-string v5, " call setupData"

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)Z

    .line 1218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySetupData: X retValue="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1219
    return v2

    .line 1223
    .end local v2    # "retValue":Z
    .end local v7    # "radioTech":I
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    const-string v7, "roamingOn"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "default"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1224
    const-string v5, "Notify data disconnect reason to UI side"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1225
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1229
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1231
    .local v5, "str":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySetupData failed. apnContext = [type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", apnEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mDependencyMet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1231
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDataEnabled() = false. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v7, v8, :cond_10

    .line 1244
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_DATA_RETRY_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1246
    const-string v7, " Keep retrying."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1249
    :cond_f
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1250
    const-string v7, " Stop retrying."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_10
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1258
    const-string v7, " stop retry"

    invoke-virtual {p0, p1, v1, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnTrySetupDataError(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Ljava/lang/String;)Z

    .line 1261
    return v2
.end method

.method public blacklist trySetupDataOnEvent(III)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "cid"    # I
    .param p3, "lifetime"    # I

    .line 4130
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4131
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4132
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 4133
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4134
    return-void
.end method

.method protected blacklist unregisterForAllEvents()V
    .locals 2

    .line 577
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForAllEvents: mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V

    .line 584
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForMdDataRetryCountReset(Landroid/os/Handler;)V

    .line 586
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPlmnData(Landroid/os/Handler;)V

    .line 588
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForResetAttachApn(Landroid/os/Handler;)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDataAllowed(Landroid/os/Handler;)V

    .line 598
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPcoDataAfterAttached(Landroid/os/Handler;)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDedicatedBearerActivated(Landroid/os/Handler;)V

    .line 602
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDedicatedBearerModified(Landroid/os/Handler;)V

    .line 603
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDedicatedBearerDeactivationed(Landroid/os/Handler;)V

    .line 606
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForMobileDataUsage(Landroid/os/Handler;)V

    .line 607
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNwLimitState(Landroid/os/Handler;)V

    .line 608
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkReject(Landroid/os/Handler;)V

    .line 610
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForModemReset(Landroid/os/Handler;)V

    .line 613
    return-void
.end method

.method public blacklist unregisterServiceStateTrackerEvents()V
    .locals 1

    .line 435
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterServiceStateTrackerEvents()V

    .line 438
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 439
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->unregisterForDataRoamingTypeChange(Landroid/os/Handler;)V

    .line 440
    return-void
.end method

.method public blacklist updateApnListForCpaConnection(Ljava/lang/String;Lmediatek/telephony/data/MtkApnSetting;)I
    .locals 7
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "apn"    # Lmediatek/telephony/data/MtkApnSetting;

    .line 4581
    const/4 v0, 0x0

    .line 4583
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]updateApnListForCpa: E mAllApnSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4585
    const-string v1, "NAVI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "[CpaDct]updateApnListForCpa: X mAllApnSettings="

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 4588
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4589
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 4590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]updateApnListForCpa: to MD mAllApnSettings="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4592
    invoke-virtual {p2}, Lmediatek/telephony/data/MtkApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 4594
    .local v1, "apnTypeBitmask":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/data/ApnSetting;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4595
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v4

    .line 4596
    .local v4, "tempTypeBitmask":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CpaDct]tempTypeBitmask()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4597
    and-int v5, v1, v4

    if-lez v5, :cond_0

    .line 4598
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4600
    .end local v4    # "tempTypeBitmask":I
    :cond_0
    goto :goto_0

    .line 4602
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/data/ApnSetting;>;"
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4608
    const/4 v0, 0x1

    .line 4609
    .end local v1    # "apnTypeBitmask":I
    goto :goto_1

    :cond_2
    const-string v1, "DEFAULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4611
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createAllApnList()V

    .line 4612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 4617
    const/4 v0, 0x1

    goto :goto_1

    .line 4619
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]paramter error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4621
    :goto_1
    return v0
.end method
