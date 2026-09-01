.class public Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;,
        Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;,
        Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkCellInfoResult;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field protected static final blacklist EVENT_CS_NETWORK_STATE_CHANGED:I = 0x64

.field protected static final blacklist EVENT_FEMTO_CELL_INFO:I = 0x66

.field protected static final blacklist EVENT_ICC_REFRESH:I = 0x6a

.field protected static final blacklist EVENT_IMEI_LOCK:I = 0x6b

.field protected static final blacklist EVENT_INVALID_SIM_INFO:I = 0x65

.field protected static final blacklist EVENT_MODULATION_INFO:I = 0x69

.field private static final blacklist EVENT_MTK_GET_CELL_INFO_LIST:I = 0x1

.field protected static final blacklist EVENT_NETWORK_EVENT:I = 0x68

.field protected static final blacklist EVENT_PS_NETWORK_STATE_CHANGED:I = 0x67

.field protected static final blacklist EVENT_RECHECK_NRM_STATUS:I = 0x7b

.field protected static final blacklist EVENT_RESTART_TURBO:I = 0x7a

.field protected static final blacklist EVENT_RIL_READY:I = 0x78

.field protected static final blacklist EVENT_SIM_OPL_LOADED:I = 0x77

.field protected static final blacklist EVENT_UPDATE_PLMN:I = 0x79

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MTKSST"

.field private static final blacklist MTK_LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x3e8L

.field protected static final blacklist PROP_IWLAN_STATE:Ljava/lang/String; = "persist.vendor.radio.wfc_state"

.field protected static final blacklist PROP_MTK_DATA_TYPE:Ljava/lang/String; = "persist.vendor.radio.mtk_data_type"

.field public static final blacklist REJECT_NOTIFICATION:I = 0x37a

.field private static final blacklist VDBG:Z = true

.field private static final blacklist mCheckNrmPeriod:J = 0x3e8L


# instance fields
.field public blacklist hasPendingPollState:Z

.field private blacklist isCsInvalidCard:Z

.field private blacklist mCsgId:Ljava/lang/String;

.field private blacklist mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mEnableERI:Z

.field private blacklist mEriTriggeredPollState:Z

.field private blacklist mEverIVSR:Z

.field private blacklist mFemtoAct:Ljava/lang/String;

.field private blacklist mFemtoPlmn:Ljava/lang/String;

.field private blacklist mFemtocellDomain:I

.field private blacklist mForceBroadcastServiceState:Z

.field private blacklist mHhbName:Ljava/lang/String;

.field private blacklist mIsFemtocell:I

.field private blacklist mIsImeiLock:Z

.field private blacklist mLastCellInfoListLock:Ljava/lang/Object;

.field private blacklist mLastPSRegisteredPLMN:Ljava/lang/String;

.field private blacklist mLastPhoneGetNitz:I

.field private blacklist mLastRegisteredPLMN:Ljava/lang/String;

.field private blacklist mLocatedPlmn:Ljava/lang/String;

.field private blacklist mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mMtkVoiceCapable:Z

.field private blacklist mNetworkExsit:Z

.field private blacklist mNewPSCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mNotification:Landroid/app/Notification;

.field private blacklist mNotificationBuilder:Landroid/app/Notification$Builder;

.field private blacklist mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

.field private blacklist mPsRegState:I

.field private blacklist mPsRegStateRaw:I

.field private blacklist mSavedGuessTimeZone:Ljava/lang/String;

.field private blacklist mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

.field private blacklist mtkHandler:Landroid/os/Handler;

.field private blacklist mtkHandlerThread:Landroid/os/HandlerThread;

.field public blacklist nm:Lcom/mediatek/internal/telephony/NrMap;

.field public blacklist once_pollState_done:Z

.field private blacklist oosFlag:I

.field private blacklist turboSS:Lmediatek/telephony/MtkServiceState;

.field private blacklist turboSig:Landroid/telephony/SignalStrength;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    .line 189
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 191
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    .line 193
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 218
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoListLock:Ljava/lang/Object;

    .line 226
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsImeiLock:Z

    .line 227
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 228
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegState:I

    .line 229
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 231
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 233
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    .line 234
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    .line 235
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    .line 236
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    .line 238
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 240
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 242
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEverIVSR:Z

    .line 243
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isCsInvalidCard:Z

    .line 244
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkVoiceCapable:Z

    .line 246
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhoneGetNitz:I

    .line 249
    const/16 v4, 0xf

    new-array v4, v4, [[Ljava/lang/String;

    const-string v5, "au"

    const-string v6, "Australia/Sydney"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "br"

    const-string v6, "America/Sao_Paulo"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "ca"

    const-string v5, "America/Toronto"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string v2, "cl"

    const-string v5, "America/Santiago"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const-string v2, "es"

    const-string v5, "Europe/Madrid"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    const-string v2, "fm"

    const-string v5, "Pacific/Ponape"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const-string v2, "gl"

    const-string v5, "America/Godthab"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v4, v5

    const-string v2, "kz"

    const-string v5, "Asia/Almaty"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    const-string v2, "mn"

    const-string v5, "Asia/Ulaanbaatar"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v4, v5

    const-string v2, "mx"

    const-string v5, "America/Mexico_City"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v4, v5

    const-string v2, "pf"

    const-string v5, "Pacific/Tahiti"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    aput-object v2, v4, v5

    const-string v2, "pt"

    const-string v5, "Europe/Lisbon"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb

    aput-object v2, v4, v5

    const-string v2, "us"

    const-string v5, "America/New_York"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    aput-object v2, v4, v5

    const-string v2, "ec"

    const-string v5, "America/Guayaquil"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    aput-object v2, v4, v5

    const-string v2, "cn"

    const-string v5, "Asia/Shanghai"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xe

    aput-object v2, v4, v5

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    .line 274
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSavedGuessTimeZone:Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    .line 279
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    .line 282
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    .line 284
    new-instance v2, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v2}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 285
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;

    .line 291
    iput v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->oosFlag:I

    .line 294
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    .line 300
    new-instance v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 714
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MtkHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandlerThread:Landroid/os/HandlerThread;

    .line 715
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 717
    new-instance v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    .line 720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 721
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 733
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 734
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 737
    const-string v3, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 739
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 740
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 742
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 743
    const-string v3, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 746
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 747
    const-string v3, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 758
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 759
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 760
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 761
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeServiceStateTrackerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    goto :goto_0

    .line 762
    :catch_0
    move-exception v3

    .line 763
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "mServiceStateTrackerExt init fail"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x64

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x67

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    invoke-interface {v3, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 772
    new-instance v1, Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {v1, p1, p2}, Lcom/mediatek/internal/telephony/NrMap;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    .line 773
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/CellIdentity;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$1900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/CellIdentity;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic blacklist access$2100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    return-object v0
.end method

.method static synthetic blacklist access$2202(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Lmediatek/telephony/MtkServiceState;)Lmediatek/telephony/MtkServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Lmediatek/telephony/MtkServiceState;

    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    return-object p1
.end method

.method static synthetic blacklist access$2300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # I

    .line 180
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$2600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # I

    .line 180
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    return-object v0
.end method

.method static synthetic blacklist access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic blacklist access$2802(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic blacklist access$2900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    return v0
.end method

.method static synthetic blacklist access$3000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$3100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$3200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic blacklist access$3300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$3400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic blacklist access$3502(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSpnUpdatePending:Z

    return p1
.end method

.method static synthetic blacklist access$3600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$3700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic blacklist access$3800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$3900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$4000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$402(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic blacklist access$4100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic blacklist access$4200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic blacklist access$4300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->broadcastLocatedPlmnChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$702(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$802(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method private blacklist broadcastLocatedPlmnChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "old_Plmn"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;

    .line 3437
    const-string v0, "updateLocatedPlmn: countryCodeForMcc error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocatedPlmn(),previous plmn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,update to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3438
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3439
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3440
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3442
    :cond_0
    const-string v2, "android.telephony.extra.PLMN"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3444
    const-string v2, ""

    const-string v3, "iso"

    if-eqz p2, :cond_1

    .line 3447
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3448
    .local v4, "mcc":I
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3461
    goto :goto_0

    .line 3457
    .end local v4    # "mcc":I
    :catch_0
    move-exception v4

    .line 3458
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3459
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3461
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3452
    :catch_1
    move-exception v4

    .line 3453
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3461
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_0

    .line 3449
    :catch_2
    move-exception v4

    .line 3450
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3451
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3461
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 3463
    :cond_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3467
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->broadcastMccChange(Ljava/lang/String;)V

    .line 3469
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3470
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3472
    return-void
.end method

.method private blacklist calculateDeviceRatMode(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 3362
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3364
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isSupportRatBalancing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3365
    const-string v0, "networkType is controlled by RAT Blancing, no need to set network type"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    const/4 v0, -0x1

    return v0

    .line 3371
    :cond_0
    goto :goto_0

    .line 3369
    :catch_0
    move-exception v0

    .line 3370
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3374
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3375
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    .line 3374
    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    .line 3378
    .local v0, "networkType":I
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IOplusNetworkManager;->DEFAULT:Lcom/android/internal/telephony/IOplusNetworkManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IOplusNetworkManager;

    .line 3385
    .local v1, "manager":Lcom/android/internal/telephony/IOplusNetworkManager;
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/IOplusNetworkManager;->changeFastRecovRAT(I)I

    move-result v0

    .line 3387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateDeviceRatMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3388
    return v0
.end method

.method private blacklist getImsEccOnly()Z
    .locals 2

    .line 4746
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4747
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 4748
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    return v1

    .line 4750
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final blacklist getImsServiceState()I
    .locals 2

    .line 4208
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4209
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 4210
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    return v1

    .line 4212
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3983
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3984
    const-string v0, "[isAllowRecoveryOnIvsr] isInCall()=true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3987
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3988
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3989
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3990
    const/4 v1, 0x0

    return v1

    .line 3992
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string v0, "isAllowRecoveryOnIvsr() return true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3993
    const/4 v0, 0x1

    return v0
.end method

.method private static final blacklist isChinaTelecomMvno(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "mvnoOperName"    # Ljava/lang/String;

    .line 4657
    const/4 v0, 0x0

    .line 4658
    .local v0, "isChinaTelecomMvno":Z
    const-string v1, ""

    .line 4660
    .local v1, "ctName":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 4661
    .local v2, "simCarrierName":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4662
    const/4 v0, 0x1

    goto :goto_0

    .line 4663
    :cond_0
    const-string v4, "20404"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "45403"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4664
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4665
    const/4 v0, 0x1

    .line 4667
    :cond_2
    :goto_0
    return v0
.end method

.method private final blacklist isConcurrentVoiceAndDataAllowedForIwlan()Z
    .locals 2

    .line 3311
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3312
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 3313
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsServiceState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3314
    const/4 v0, 0x1

    return v0

    .line 3316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final blacklist isConcurrentVoiceAndDataAllowedForVolte()Z
    .locals 1

    .line 4198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4199
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4200
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsServiceState()I

    move-result v0

    if-nez v0, :cond_0

    .line 4201
    const/4 v0, 0x1

    return v0

    .line 4203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static final blacklist lookupOperatorName(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z

    .line 4620
    move-object v0, p2

    .line 4621
    .local v0, "defaultName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4624
    .local v1, "operName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4625
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_0

    .line 4626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupOperatorName getPhone null subid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MTKSST"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    return-object v0

    .line 4631
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4634
    invoke-static {p0, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isChinaTelecomMvno(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 4637
    .local v3, "isChinaTelecomMvno":Z
    if-eqz v1, :cond_1

    if-eqz v3, :cond_2

    .line 4638
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v4

    invoke-virtual {v4, p2, p3, p0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByNumeric(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4643
    :cond_2
    if-nez v1, :cond_3

    move-object v4, v0

    goto :goto_0

    :cond_3
    move-object v4, v1

    :goto_0
    return-object v4
.end method

.method private final blacklist mergeEmergencyOnlyCdmaIms(Z)Z
    .locals 2
    .param p1, "baseEmergencyOnly"    # Z

    .line 4216
    if-eqz p1, :cond_0

    .line 4217
    return p1

    .line 4220
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 4221
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4223
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 4224
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    return v1

    .line 4228
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return p1
.end method

.method private blacklist onFemtoCellInfoResult(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3729
    const/4 v0, 0x0

    .line 3731
    .local v0, "isCsgCell":I
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_e

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3734
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 3736
    .local v1, "info":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_f

    .line 3737
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3738
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    .line 3739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: mFemtocellDomain set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3742
    :cond_1
    const/4 v3, 0x3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 3743
    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    .line 3744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: mFemtoPlmn set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3747
    :cond_2
    const/4 v3, 0x4

    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 3748
    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    .line 3749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: mFemtoAct set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3752
    :cond_3
    const/4 v3, 0x5

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 3753
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 3755
    :cond_4
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    .line 3756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: domain= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isCsgCell= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3758
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 3759
    const/4 v5, 0x6

    aget-object v6, v1, v5

    if-eqz v6, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 3760
    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 3761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFemtoCellInfo: mCsgId set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3764
    :cond_5
    const/16 v5, 0x8

    aget-object v6, v1, v5

    if-eqz v6, :cond_6

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 3765
    new-instance v3, Ljava/lang/String;

    aget-object v6, v1, v5

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 3766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFemtoCellInfo: mHhbName set from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3768
    :cond_6
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 3769
    const-string v3, "onFemtoCellInfo: mHhbName is not available ,set to null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3772
    :cond_7
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 3773
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 3774
    const-string v3, "onFemtoCellInfo: csgId and hnbName are cleared"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3776
    :goto_0
    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    aget-object v3, v1, v4

    if-eqz v3, :cond_9

    aget-object v3, v1, v4

    .line 3777
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    const/16 v3, 0x9

    aget-object v5, v1, v3

    if-eqz v5, :cond_9

    aget-object v2, v1, v2

    .line 3778
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 3779
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3780
    .local v2, "state":I
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3782
    .local v3, "cause":I
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v5, v2, v3}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needIgnoreFemtocellUpdate(II)Z

    move-result v5

    if-ne v5, v4, :cond_8

    .line 3784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needIgnoreFemtocellUpdate due to state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",cause= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3787
    return-void

    .line 3791
    :cond_8
    goto :goto_1

    .line 3789
    :catch_0
    move-exception v5

    .line 3790
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3793
    .end local v2    # "state":I
    .end local v3    # "cause":I
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3794
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3796
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ne v3, v4, :cond_a

    .line 3797
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3800
    :cond_a
    const-string v3, "android.telephony.extra.SHOW_SPN"

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3801
    const-string v3, "android.telephony.extra.SPN"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3802
    const-string v3, "android.telephony.extra.SHOW_PLMN"

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3803
    const-string v3, "android.telephony.extra.PLMN"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3805
    const-string v3, "hnbName"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3806
    const-string v3, "csgId"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3807
    const-string v3, "domain"

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3809
    const-string v3, "femtocell"

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3811
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3813
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    .line 3814
    .local v6, "phoneId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 3815
    .local v3, "plmn":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v7, " - "

    if-nez v5, :cond_c

    :try_start_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v5, :cond_c

    .line 3817
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v5}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needToShowCsgId()Z

    move-result v5

    if-ne v5, v4, :cond_b

    .line 3818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3819
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v5

    goto :goto_2

    .line 3821
    :catch_1
    move-exception v5

    .line 3822
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3823
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :goto_2
    goto :goto_3

    .line 3824
    :cond_c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 3825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3828
    :cond_d
    :goto_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    iget-object v10, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    .line 3830
    .local v5, "setResult":Z
    if-nez v5, :cond_f

    .line 3831
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSpnUpdatePending:Z

    goto :goto_5

    .line 3732
    .end local v1    # "info":[Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v5    # "setResult":Z
    .end local v6    # "phoneId":I
    :cond_e
    :goto_4
    const-string v1, "onFemtoCellInfo exception"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3839
    .end local v0    # "isCsgCell":I
    :cond_f
    :goto_5
    goto :goto_6

    .line 3837
    :catch_2
    move-exception v0

    .line 3838
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MTKSST"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private blacklist onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3848
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 3849
    .local v0, "InvalidSimInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 3850
    .local v2, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3851
    .local v4, "cs_invalid":I
    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3852
    .local v6, "ps_invalid":I
    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3853
    .local v7, "cause":I
    const/4 v8, -0x1

    .line 3856
    .local v8, "testMode":I
    const-string v9, "vendor.gsm.gcf.testmode"

    invoke-static {v9, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3860
    .end local v8    # "testMode":I
    .local v1, "testMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInvalidSimInfoReceived testMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cs_invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ps_invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " plmn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mEverIVSR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEverIVSR:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3865
    if-eqz v1, :cond_0

    .line 3866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidSimInfo received during test mode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3867
    return-void

    .line 3870
    :cond_0
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v8}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isNeedDisableIVSR()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3871
    const-string v3, "Disable IVSR"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3872
    return-void

    .line 3877
    :cond_1
    if-ne v4, v3, :cond_2

    .line 3878
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isCsInvalidCard:Z

    .line 3886
    :cond_2
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkVoiceCapable:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 3887
    if-ne v4, v3, :cond_3

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3888
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3889
    const-string v8, "InvalidSimInfo reset SIM due to CS invalid"

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3890
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setEverIVSR(Z)V

    .line 3891
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3892
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3893
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, v5, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->setSimPower(ILandroid/os/Message;)V

    .line 3894
    return-void

    .line 3900
    :cond_3
    if-ne v6, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3901
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3905
    const-string v8, "InvalidSimInfo reset SIM due to PS invalid "

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3906
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setEverIVSR(Z)V

    .line 3907
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3908
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3909
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, v5, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->setSimPower(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3910
    return-void

    .line 3943
    .end local v0    # "InvalidSimInfo":[Ljava/lang/String;
    .end local v1    # "testMode":I
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v4    # "cs_invalid":I
    .end local v6    # "ps_invalid":I
    .end local v7    # "cause":I
    :cond_4
    goto :goto_0

    .line 3941
    :catch_0
    move-exception v0

    .line 3942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MTKSST"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist onModulationInfoReceived(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3965
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3970
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3971
    .local v0, "info":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 3972
    .local v1, "modulation":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onModulationInfoReceived] modulation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3974
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.ACTION_NOTIFY_MODULATION_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3975
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3976
    const-string v3, "modulation_info"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3978
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 3966
    .end local v0    # "info":[I
    .end local v1    # "modulation":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const-string v0, "onModulationInfoReceived exception"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3980
    :goto_1
    return-void
.end method

.method private blacklist onNetworkEventReceived(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3948
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3953
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 3954
    .local v0, "nwEventType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNetworkEventReceived] event_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3956
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.ACTION_NETWORK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3957
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3958
    add-int/lit8 v2, v0, 0x1

    const-string v3, "eventType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3960
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 3949
    .end local v0    # "nwEventType":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const-string v0, "onNetworkEventReceived exception"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3962
    :goto_1
    return-void
.end method

.method private blacklist onNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2358
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2362
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 2363
    .local v0, "info":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 2364
    const/4 v1, -0x1

    .line 2365
    .local v1, "state":I
    const/4 v4, -0x1

    .line 2366
    .local v4, "lac":I
    const-wide/16 v5, -0x1

    .line 2367
    .local v5, "cid":J
    const/4 v7, -0x1

    .line 2368
    .local v7, "Act":I
    const/4 v8, -0x1

    .line 2372
    .local v8, "cause":I
    array-length v9, v0

    if-lez v9, :cond_8

    .line 2374
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 2376
    aget-object v2, v0, v3

    const/16 v9, 0x10

    if-eqz v2, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2377
    aget-object v2, v0, v3

    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    move v4, v2

    .line 2380
    :cond_1
    const/4 v2, 0x2

    aget-object v10, v0, v2

    if-eqz v10, :cond_4

    aget-object v10, v0, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 2382
    aget-object v10, v0, v2

    const-string v11, "FFFFFFFF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    aget-object v10, v0, v2

    const-string v11, "ffffffff"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2383
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid cid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2384
    const-string v10, "0000ffff"

    aput-object v10, v0, v2

    .line 2386
    :cond_3
    aget-object v2, v0, v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    move-wide v5, v9

    .line 2389
    :cond_4
    const/4 v2, 0x3

    aget-object v9, v0, v2

    if-eqz v9, :cond_5

    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 2390
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    .line 2393
    :cond_5
    const/4 v2, 0x4

    aget-object v9, v0, v2

    if-eqz v9, :cond_6

    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 2394
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v8, v2

    .line 2397
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNetworkStateChangeResult state:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Act:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cause:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2402
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v2, v8}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needRejectCauseNotification(I)Z

    move-result v2

    if-ne v2, v3, :cond_7

    .line 2403
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRejectCauseNotification(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2405
    :catch_0
    move-exception v2

    .line 2406
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2407
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :goto_0
    goto :goto_1

    .line 2410
    :cond_8
    const-string v2, "onNetworkStateChangeResult length zero"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2412
    .end local v1    # "state":I
    .end local v4    # "lac":I
    .end local v5    # "cid":J
    .end local v7    # "Act":I
    .end local v8    # "cause":I
    :goto_1
    goto :goto_2

    .line 2414
    :cond_9
    array-length v1, v0

    const/4 v4, 0x5

    if-le v1, v4, :cond_b

    .line 2415
    aget-object v1, v0, v4

    if-eqz v1, :cond_c

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 2416
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    goto :goto_2

    .line 2420
    :cond_b
    const-string v1, "onCdmaNetworkExistStateChanged Network existence not reported"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2428
    .end local v0    # "info":[Ljava/lang/String;
    :cond_c
    :goto_2
    goto :goto_4

    .line 2359
    :cond_d
    :goto_3
    const-string v0, "onNetworkStateChangeResult exception"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2360
    return-void

    .line 2426
    :catch_1
    move-exception v0

    .line 2427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MTKSST"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private blacklist onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 31
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2438
    .local v2, "operator_plmn":Ljava/lang/String;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_11

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 2441
    :cond_0
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2442
    .local v3, "info":[I
    array-length v4, v3

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v4, v6, :cond_2

    .line 2445
    aget v4, v3, v9

    iput v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 2447
    aget v4, v3, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2448
    if-eqz v2, :cond_1

    .line 2449
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 2450
    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2452
    :cond_1
    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2454
    :cond_2
    array-length v4, v3

    const/4 v10, 0x7

    if-ne v4, v10, :cond_10

    .line 2465
    aget v4, v3, v9

    const/4 v10, 0x4

    if-ne v4, v10, :cond_3

    .line 2468
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    goto/16 :goto_8

    .line 2469
    :cond_3
    aget v4, v3, v9

    if-eq v4, v8, :cond_4

    .line 2471
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 2472
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_8

    .line 2474
    :cond_4
    const/4 v4, 0x0

    .line 2475
    .local v4, "isUsingCarrierAggregation":Z
    const/4 v7, 0x0

    .line 2476
    .local v7, "isCs":Z
    new-instance v11, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v11}, Lmediatek/telephony/MtkServiceState;-><init>()V

    .line 2477
    .local v11, "fakeSS":Lmediatek/telephony/MtkServiceState;
    aget v12, v3, v8

    .line 2478
    invoke-static {v12}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v12

    .line 2479
    .local v12, "networkType":I
    aget v13, v3, v8

    const/4 v14, 0x3

    if-eq v13, v14, :cond_5

    aget v13, v3, v8

    const/16 v14, 0x10

    if-ne v13, v14, :cond_6

    .line 2481
    :cond_5
    const/4 v7, 0x1

    .line 2483
    :cond_6
    const/16 v13, 0x13

    if-ne v12, v13, :cond_7

    .line 2484
    const/4 v4, 0x1

    .line 2485
    const/16 v12, 0xd

    .line 2488
    :cond_7
    new-instance v27, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 2491
    if-eqz v7, :cond_8

    aget v13, v3, v9

    move/from16 v16, v13

    goto :goto_0

    :cond_8
    move/from16 v16, v9

    .line 2492
    :goto_0
    if-eqz v7, :cond_9

    move/from16 v17, v12

    goto :goto_1

    :cond_9
    move/from16 v17, v9

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v22, ""

    move-object/from16 v13, v27

    invoke-direct/range {v13 .. v26}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    move-object/from16 v15, v27

    .line 2502
    .local v15, "networkVoiceRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v14

    .line 2503
    .local v14, "voiceRegistrationState":I
    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lmediatek/telephony/MtkServiceState;->setVoiceRegState(I)V

    .line 2504
    invoke-virtual {v11, v15}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2506
    new-instance v29, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v16, 0x2

    const/16 v17, 0x1

    .line 2510
    if-nez v7, :cond_a

    aget v13, v3, v9

    move/from16 v18, v13

    goto :goto_2

    :cond_a
    move/from16 v18, v9

    .line 2511
    :goto_2
    if-nez v7, :cond_b

    move/from16 v19, v12

    goto :goto_3

    :cond_b
    move/from16 v19, v9

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 2518
    aget v10, v3, v10

    if-ne v10, v8, :cond_c

    move v10, v8

    goto :goto_4

    :cond_c
    move v10, v9

    .line 2519
    :goto_4
    aget v5, v3, v5

    const/4 v13, 0x2

    if-ne v5, v13, :cond_d

    move/from16 v25, v8

    goto :goto_5

    :cond_d
    move/from16 v25, v9

    .line 2520
    :goto_5
    aget v5, v3, v6

    if-ne v5, v8, :cond_e

    move/from16 v26, v8

    goto :goto_6

    :cond_e
    move/from16 v26, v9

    :goto_6
    new-instance v5, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v5, v8, v8}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    const-string v6, ""

    move-object/from16 v13, v29

    move v8, v14

    .end local v14    # "voiceRegistrationState":I
    .local v8, "voiceRegistrationState":I
    move/from16 v14, v16

    move-object/from16 v30, v15

    .end local v15    # "networkVoiceRegState":Landroid/telephony/NetworkRegistrationInfo;
    .local v30, "networkVoiceRegState":Landroid/telephony/NetworkRegistrationInfo;
    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v6

    move/from16 v23, v24

    move/from16 v24, v10

    move-object/from16 v27, v5

    move/from16 v28, v4

    invoke-direct/range {v13 .. v28}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    move-object/from16 v5, v29

    .line 2524
    .local v5, "networkDataRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v6

    .line 2525
    .local v6, "dataRegistrationState":I
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v10

    .line 2526
    .local v10, "serviceState":I
    invoke-virtual {v11, v10}, Lmediatek/telephony/MtkServiceState;->setDataRegState(I)V

    .line 2527
    invoke-virtual {v11, v5}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2528
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "broadcast fakeSS:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2529
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v13, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v13, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 2530
    invoke-virtual {v11}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v13

    .line 2531
    .local v13, "display_type":I
    if-nez v13, :cond_f

    invoke-virtual {v11}, Lmediatek/telephony/MtkServiceState;->getVoiceNetworkType()I

    move-result v13

    .line 2532
    :cond_f
    new-instance v14, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v14, v13, v9}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    move-object v9, v14

    .line 2535
    .local v9, "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "broadcast fakeSS: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2536
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v14, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v14, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 2537
    .end local v4    # "isUsingCarrierAggregation":Z
    .end local v5    # "networkDataRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v6    # "dataRegistrationState":I
    .end local v7    # "isCs":Z
    .end local v8    # "voiceRegistrationState":I
    .end local v9    # "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    .end local v10    # "serviceState":I
    .end local v11    # "fakeSS":Lmediatek/telephony/MtkServiceState;
    .end local v12    # "networkType":I
    .end local v13    # "display_type":I
    .end local v30    # "networkVoiceRegState":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_8

    .line 2539
    :cond_10
    const-string v4, "onPsNetworkStateChangeResult wrong size"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_8

    .line 2439
    .end local v3    # "info":[I
    :cond_11
    :goto_7
    const-string v3, "onPsNetworkStateChangeResult exception"

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2542
    :goto_8
    return-void
.end method

.method private blacklist setEverIVSR(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 3998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEverIVSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3999
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEverIVSR:Z

    .line 4002
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4003
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.IVSR_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4004
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4005
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4007
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4008
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4011
    :cond_0
    const-string v0, "broadcast ACTION_IVSR_NOTIFY intent"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4013
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4015
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private blacklist setNullState()V
    .locals 1

    .line 4019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isCsInvalidCard:Z

    .line 4020
    return-void
.end method

.method private blacklist setRejectCauseNotification(I)V
    .locals 7
    .param p1, "cause"    # I

    .line 4239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRejectCauseNotification: create notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4242
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 4243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 4244
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 4245
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4246
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v2, "alert"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 4248
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4249
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 4250
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4249
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4252
    const-string v2, ""

    .line 4253
    .local v2, "details":Ljava/lang/CharSequence;
    const v3, 0x8050067

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4254
    .local v3, "title":Ljava/lang/CharSequence;
    const/16 v4, 0x37a

    .line 4256
    .local v4, "notificationId":I
    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x5

    if-eq p1, v5, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_1

    const/16 v5, 0xd

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 4270
    :cond_0
    const v5, 0x8050075

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4271
    goto :goto_0

    .line 4267
    :cond_1
    const v5, 0x8050071

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4268
    goto :goto_0

    .line 4264
    :cond_2
    const v5, 0x8050070

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4265
    goto :goto_0

    .line 4261
    :cond_3
    const v5, 0x8050069

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4262
    goto :goto_0

    .line 4258
    :cond_4
    const v5, 0x8050068

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4259
    nop

    .line 4276
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRejectCauseNotification: put notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4277
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4278
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4280
    nop

    .line 4281
    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 4283
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4284
    invoke-virtual {v5, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4285
    return-void
.end method

.method private blacklist updateLocatedPlmn(Ljava/lang/String;)V
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .line 3475
    const/4 v0, 0x0

    .line 3476
    .local v0, "subT":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 3478
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3480
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 3481
    .local v1, "old_plmn":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v2

    .line 3487
    .end local v1    # "old_plmn":Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 3489
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3490
    :cond_4
    return-void
.end method

.method private blacklist updatePLMN(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "showPlmn"    # Z
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "showSpn"    # Z
    .param p4, "spn"    # Ljava/lang/String;

    .line 412
    new-instance v6, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 413
    .local v0, "mtkplmn":Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const/16 v2, 0x79

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method

.method private blacklist updateSsOperatorName(Landroid/telephony/ServiceState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "strOperatorLong"    # Ljava/lang/String;
    .param p3, "strOperatorShort"    # Ljava/lang/String;
    .param p4, "operatorNumeric"    # Ljava/lang/String;

    .line 3494
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 3498
    .local v3, "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3499
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 3500
    .local v5, "ps_cell":Landroid/telephony/CellIdentity;
    invoke-virtual {v5, v1}, Landroid/telephony/CellIdentity;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3501
    invoke-virtual {v5, v2}, Landroid/telephony/CellIdentity;->setOperatorAlphaShort(Ljava/lang/String;)V

    .line 3502
    new-instance v22, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v7, 0x2

    .line 3506
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v9

    .line 3507
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v10

    .line 3508
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v11

    .line 3509
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v12

    .line 3510
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v13

    .line 3512
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v15

    .line 3513
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v6

    iget v14, v6, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 3514
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 3515
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 3516
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 3517
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/DataSpecificRegistrationInfo;->getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;

    move-result-object v20

    .line 3518
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/DataSpecificRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v21

    move/from16 v17, v6

    move-object/from16 v6, v22

    move/from16 v19, v8

    const/4 v8, 0x1

    move/from16 v16, v14

    move-object v14, v5

    move/from16 v18, v4

    invoke-direct/range {v6 .. v21}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    move-object/from16 v4, v22

    .line 3519
    .local v4, "new_nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    .line 3522
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 3524
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 3526
    .end local v4    # "new_nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .end local v5    # "ps_cell":Landroid/telephony/CellIdentity;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 3529
    .local v4, "nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3530
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 3531
    .local v5, "cs_cell":Landroid/telephony/CellIdentity;
    invoke-virtual {v5, v1}, Landroid/telephony/CellIdentity;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3532
    invoke-virtual {v5, v2}, Landroid/telephony/CellIdentity;->setOperatorAlphaShort(Ljava/lang/String;)V

    .line 3533
    new-instance v20, Landroid/telephony/NetworkRegistrationInfo;

    .line 3536
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v9

    .line 3537
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v10

    .line 3538
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v11

    .line 3539
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v12

    .line 3540
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v13

    .line 3542
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v15

    .line 3543
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v6

    iget-boolean v14, v6, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 3544
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v6

    iget v6, v6, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 3545
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v8

    iget v8, v8, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 3546
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v7

    iget v7, v7, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    move/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v19, v7

    const/4 v7, 0x1

    move/from16 v21, v8

    const/4 v8, 0x1

    move/from16 v16, v14

    move-object v14, v5

    move/from16 v17, v18

    move/from16 v18, v21

    invoke-direct/range {v6 .. v19}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    .line 3549
    .local v6, "new_nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 3551
    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 3553
    .end local v5    # "cs_cell":Landroid/telephony/CellIdentity;
    .end local v6    # "new_nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    :cond_1
    return-void
.end method

.method private blacklist updateTurboPLMN()V
    .locals 2

    .line 407
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updatePLMN(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 408
    return-void
.end method


# virtual methods
.method protected final blacklist IsInternationalRoamingException(Ljava/lang/String;)Z
    .locals 9
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 4023
    const-string v0, "carrier_international_roaming_exception_list_strings"

    .line 4026
    .local v0, "carrierConfig":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4027
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 4028
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    const-string v3, "MTKSST"

    if-nez v1, :cond_0

    .line 4029
    const-string v4, "Carrier config service is not available"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    return v2

    .line 4033
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 4034
    .local v4, "b":Landroid/os/PersistableBundle;
    if-nez v4, :cond_1

    .line 4035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get the config. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    return v2

    .line 4039
    :cond_1
    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4040
    .local v5, "operatorRoamingException":[Ljava/lang/String;
    if-nez v5, :cond_2

    .line 4041
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not available. subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4042
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4041
    invoke-static {v3, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    return v2

    .line 4046
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    .line 4047
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4049
    .local v6, "internationalRoamingSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", international roaming exceptions are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4051
    invoke-virtual {v6}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", operatorNumeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4049
    invoke-static {v3, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in list."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    const/4 v2, 0x1

    return v2

    .line 4061
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not in list."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    return v2
.end method

.method protected blacklist currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 4730
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4731
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4732
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 4733
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4735
    .local v1, "operatorNumeric":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4738
    .local v2, "equalsMcc":Z
    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4739
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 4741
    goto :goto_0

    .line 4740
    :catch_0
    move-exception v3

    .line 4742
    :goto_0
    return v2
.end method

.method public blacklist dispose()V
    .locals 2

    .line 965
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 967
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForCsNetworkStateChanged(Landroid/os/Handler;)V

    .line 968
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPsNetworkStateChanged(Landroid/os/Handler;)V

    .line 969
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 970
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 972
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetInvalidSimInfo(Landroid/os/Handler;)V

    .line 973
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkEvent(Landroid/os/Handler;)V

    .line 974
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForModulation(Landroid/os/Handler;)V

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isImeiLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIMEILock(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :cond_0
    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "No isImeiLocked"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 984
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getFemtoAct()Ljava/lang/String;
    .locals 1

    .line 3720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFemtoCsgId()Ljava/lang/String;
    .locals 1

    .line 3710
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFemtoPlmn()Ljava/lang/String;
    .locals 1

    .line 3715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLac()I
    .locals 1

    .line 4817
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLacFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v0

    return v0
.end method

.method public blacklist getLacFromCellIdentity(Landroid/telephony/CellIdentity;)I
    .locals 3
    .param p1, "id"    # Landroid/telephony/CellIdentity;

    .line 4802
    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4803
    :cond_0
    const/4 v0, -0x1

    .line 4804
    .local v0, "lac":I
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4807
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result v0

    goto :goto_0

    .line 4806
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v0

    goto :goto_0

    .line 4808
    :cond_3
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v0

    goto :goto_0

    .line 4805
    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v0

    .line 4811
    :goto_0
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    .line 4813
    :cond_5
    return v0
.end method

.method public blacklist getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .line 3432
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getOperatorNameFromEri()Ljava/lang/String;
    .locals 8

    .line 4387
    const/4 v0, 0x0

    .line 4388
    .local v0, "eriText":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    const v2, 0x1040743

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    if-ne v1, v3, :cond_b

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v1, :cond_b

    .line 4392
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 4393
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 4397
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4398
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 4401
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4403
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4404
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 4406
    .local v1, "simMccMnc":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 4407
    const-string v5, "310120"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4408
    const-string v5, "310009"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4409
    const-string v5, "311490"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4410
    const-string v5, "311870"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4411
    :cond_2
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    goto :goto_0

    .line 4413
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    .line 4417
    :goto_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 4418
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v4

    .line 4419
    .local v5, "hasBrandOverride":Z
    :goto_1
    if-nez v5, :cond_9

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v6

    if-ne v6, v3, :cond_9

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 4420
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4421
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4422
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_5
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    if-eqz v6, :cond_9

    .line 4429
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 4431
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_7

    .line 4435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4436
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 4437
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4438
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4439
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    const/16 v6, 0xa0

    if-eq v2, v6, :cond_9

    .line 4440
    const-string v2, "Append ERI text to PLMN String"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4444
    :cond_7
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 4445
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 4446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4449
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4451
    :cond_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v6

    if-eqz v6, :cond_9

    .line 4454
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4455
    invoke-virtual {v6, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4459
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v6, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4460
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4461
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4465
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 4466
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v2

    .line 4469
    .local v2, "showSpn":Z
    if-eqz v2, :cond_a

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v6}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_a

    move v4, v3

    goto :goto_3

    .line 4470
    :catch_0
    move-exception v4

    .line 4471
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4

    .line 4469
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :goto_3
    move v2, v4

    .line 4472
    nop

    .line 4474
    :goto_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v4

    .line 4476
    .local v4, "iconIndex":I
    if-eqz v2, :cond_b

    if-ne v4, v3, :cond_b

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4477
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v3

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_b

    .line 4479
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 4483
    .end local v1    # "simMccMnc":Ljava/lang/String;
    .end local v2    # "showSpn":Z
    .end local v4    # "iconIndex":I
    .end local v5    # "hasBrandOverride":Z
    :cond_b
    :goto_5
    return-object v0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .locals 7

    .line 4889
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 4890
    .local v0, "operatorBrandOverride":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceProviderName operatorBrandOverride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4892
    return-object v0

    .line 4895
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 4896
    .local v1, "carrierName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 4898
    .local v2, "config":Landroid/os/PersistableBundle;
    const-string v3, "carrier_name_override_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4899
    const-string v3, "carrier_name_string"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4900
    .local v3, "override_name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceProviderName carrierName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4901
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "n/a"

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " override_name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4903
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4900
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4906
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    return-object v4

    .line 4909
    .end local v3    # "override_name":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 993
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x10

    const/4 v4, 0x0

    if-eq v0, v2, :cond_18

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_16

    const/16 v2, 0x35

    if-eq v0, v2, :cond_15

    const/16 v2, 0x37

    if-eq v0, v2, :cond_f

    const/16 v2, 0x77

    if-eq v0, v2, :cond_a

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_9

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_6

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_6

    const/16 v2, 0x31

    if-eq v0, v2, :cond_4

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1c

    packed-switch v0, :pswitch_data_0

    .line 1232
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 1052
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1053
    const-string v0, "handle EVENT_IMEI_LOCK GSM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1054
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsImeiLock:Z

    goto/16 :goto_9

    .line 1058
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1059
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1060
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1e

    .line 1061
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1062
    .local v1, "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v1, :cond_0

    .line 1063
    const-string v2, "IccRefreshResponse is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1064
    goto/16 :goto_9

    .line 1066
    :cond_0
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSST EVENT_ICC_REFRESH IccRefreshResponse ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_1
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1072
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1073
    const-string v2, "Reset mLastRegisteredPLMN/mLastPSRegisteredPLMNfor ICC refresh"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1075
    goto :goto_0

    .line 1078
    :cond_2
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v3, 0x6f07

    if-ne v2, v3, :cond_3

    .line 1079
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1080
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1081
    const-string v2, "Reset flag of IVSR for IMSI update"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1089
    .end local v1    # "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_3
    :goto_0
    goto/16 :goto_9

    .line 1046
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1047
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1048
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onModulationInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 1040
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1041
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1042
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onNetworkEventReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 1016
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1017
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 1018
    goto/16 :goto_9

    .line 1100
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1101
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onFemtoCellInfoResult(Landroid/os/AsyncResult;)V

    .line 1102
    goto/16 :goto_9

    .line 1093
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1094
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1095
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 1036
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1037
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 1038
    goto/16 :goto_9

    .line 1139
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1142
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1141
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1143
    .local v0, "subIds":[I
    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    .line 1144
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 1148
    .end local v0    # "subIds":[I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1149
    goto/16 :goto_9

    .line 1215
    :cond_6
    const/4 v0, 0x0

    .line 1216
    .local v0, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 1217
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1220
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 1221
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    goto :goto_1

    .line 1222
    :cond_7
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_8

    .line 1223
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1227
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1229
    .end local v0    # "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    goto/16 :goto_9

    .line 995
    :cond_9
    const-string v0, "EVENT_RECHECK_NRM_STATUS trigger pollState"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    .line 997
    goto/16 :goto_9

    .line 1152
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1153
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 1154
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1155
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x65

    if-ne v2, v5, :cond_d

    .line 1156
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1157
    const-string v2, "EVENT_SIM_OPL_LOADED: EVENT_OPL"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1158
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v2, :cond_b

    .line 1159
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v4}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    goto :goto_2

    .line 1161
    :cond_b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v2, v4, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    .line 1163
    :goto_2
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    if-eqz v2, :cond_d

    .line 1164
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    goto :goto_3

    .line 1167
    :cond_c
    const-string v2, "EVENT_SIM_OPL_LOADED should not be here"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1170
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_d
    :goto_3
    goto/16 :goto_9

    .line 1171
    :cond_e
    const-string v1, "EVENT_SIM_OPL_LOADED obj is null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1173
    goto/16 :goto_9

    .line 1190
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1191
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    .line 1192
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 1193
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v2

    .line 1194
    .local v2, "connected":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v4, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getCellularRegState()I

    move-result v4

    if-nez v4, :cond_10

    goto :goto_4

    :cond_10
    move v1, v3

    .line 1196
    .local v1, "isMdInService":Z
    :goto_4
    if-eqz v2, :cond_12

    if-nez v1, :cond_11

    goto :goto_5

    .line 1210
    :cond_11
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1211
    goto/16 :goto_9

    .line 1197
    :cond_12
    :goto_5
    if-nez v2, :cond_13

    .line 1198
    const-string v3, "Skip PHYSICAL_CHANNEL_CONFIG because service is not ready"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1200
    :cond_13
    const-string v3, "Skip PHYSICAL_CHANNEL_CONFIG because md is not in service"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1204
    :goto_6
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_14

    .line 1205
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 1206
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1208
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :cond_14
    return-void

    .line 1176
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "isMdInService":Z
    .end local v2    # "connected":Z
    :cond_15
    const-string v0, "EVENT_IMS_SERVICE_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1182
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_9

    .line 1022
    :cond_16
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1025
    const-string v0, "Receive EVENT_RUIM_READY"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    goto :goto_7

    .line 1028
    :cond_17
    const-string v0, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1032
    :goto_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1033
    goto/16 :goto_9

    .line 999
    :cond_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_19

    .line 1001
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    goto :goto_8

    .line 1003
    :cond_19
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0, v4, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    .line 1006
    :cond_1a
    :goto_8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1009
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    if-eqz v0, :cond_1e

    .line 1010
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    goto :goto_9

    .line 1123
    :cond_1b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhoneGetNitz:I

    .line 1125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1127
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1128
    .local v2, "nitzString":Ljava/lang/String;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1130
    .local v3, "nitzReceiveTime":J
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1134
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1135
    goto :goto_9

    .line 1106
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "nitzString":Ljava/lang/String;
    .end local v3    # "nitzReceiveTime":J
    :cond_1c
    const-string v0, "handle EVENT_RADIO_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1108
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 1109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1112
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1117
    :cond_1d
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 1119
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    .line 1120
    nop

    .line 1235
    :cond_1e
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x64
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

.method protected blacklist handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 24
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1635
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    if-eq v0, v3, :cond_0

    return-void

    .line 1637
    :cond_0
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Ljava/lang/IllegalStateException;

    if-eqz v6, :cond_1

    .line 1640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePollStateResult exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1642
    :cond_1
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_2

    .line 1643
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1646
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v6, :cond_6

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelPollState()V

    .line 1650
    iget-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v6, :cond_3

    .line 1651
    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 1653
    const-string v3, "handlePollStateResult trigger pending pollState()"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1654
    :cond_3
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v6

    if-eq v6, v5, :cond_5

    .line 1656
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 1657
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    goto :goto_0

    .line 1659
    :cond_4
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1661
    :goto_0
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewPSCellIdentity:Landroid/telephony/CellIdentity;

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1663
    iput v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 1666
    const-string v3, "Mlog: pollStateDone to notify RADIO_NOT_AVAILABLE"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1669
    :cond_5
    :goto_1
    return-void

    .line 1672
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v6, :cond_7

    .line 1673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1676
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_7
    goto :goto_2

    .line 1677
    :cond_8
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    goto :goto_2

    .line 1678
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1679
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1682
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v0, v4

    sub-int/2addr v6, v5

    aput v6, v0, v4

    .line 1684
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v0, v0, v4

    if-nez v0, :cond_26

    .line 1686
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->keepCellularDataServiceState()V

    .line 1688
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1689
    const/4 v6, 0x0

    .line 1690
    .local v6, "mIwlanState":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1691
    invoke-virtual {v0, v3, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 1694
    .local v7, "wwanPsNri":Landroid/telephony/NetworkRegistrationInfo;
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1695
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v8, "persist.vendor.radio.wfc_state"

    const-string v9, "0"

    .line 1694
    invoke-static {v0, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    .line 1696
    if-lez v6, :cond_9

    if-eqz v7, :cond_9

    .line 1697
    const-string v0, "isInLegacyMode and IWLAN is actived, overwrite (PS, WWAN)"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1699
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v12, 0x12

    .line 1704
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v13

    .line 1705
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v14

    .line 1706
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v15

    .line 1707
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v16

    .line 1708
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v17

    .line 1709
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v8

    iget v8, v8, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 1710
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 1711
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 1712
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 1713
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/DataSpecificRegistrationInfo;->getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;

    move-result-object v22

    .line 1714
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/DataSpecificRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v23

    move/from16 v18, v8

    move-object v8, v0

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v8 .. v23}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    .line 1715
    .local v0, "nri_wwan":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1717
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 1722
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v13

    .line 1723
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v14

    .line 1724
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v15

    .line 1725
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v16

    .line 1726
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v17

    .line 1727
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    iget v4, v4, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 1728
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 1729
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 1730
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v12

    iget-boolean v12, v12, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 1731
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/DataSpecificRegistrationInfo;->getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;

    move-result-object v22

    .line 1732
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/DataSpecificRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v23

    move/from16 v20, v8

    move-object v8, v3

    move/from16 v21, v12

    const/16 v12, 0x12

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v8 .. v23}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    .line 1733
    .local v3, "nri_wlan":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1736
    .end local v0    # "nri_wwan":Landroid/telephony/NetworkRegistrationInfo;
    .end local v3    # "nri_wlan":Landroid/telephony/NetworkRegistrationInfo;
    :cond_9
    goto :goto_3

    .line 1735
    :catch_1
    move-exception v0

    .line 1740
    .end local v6    # "mIwlanState":I
    .end local v7    # "wwanPsNri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_a
    :goto_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->combinePsRegistrationStates(Landroid/telephony/ServiceState;)V

    .line 1741
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOperatorNameForServiceState(Landroid/telephony/ServiceState;)V

    .line 1743
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1747
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1748
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v0, 0x1

    .line 1749
    .local v0, "in_service":Z
    :goto_5
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1750
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1751
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_d

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v3, Lmediatek/telephony/MtkServiceState;

    .line 1753
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    .line 1755
    .local v3, "radioOffwithIwlan":Z
    :goto_6
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1756
    .local v4, "oper":Ljava/lang/String;
    if-nez v0, :cond_f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    const/4 v5, 0x1

    if-ne v0, v5, :cond_11

    .line 1757
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    if-nez v3, :cond_11

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v5, :cond_11

    .line 1760
    const-string v5, "Temporary service state, need restart PollState"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1761
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelPollState()V

    .line 1763
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 1764
    return-void

    .line 1766
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateRoamingState()V

    .line 1767
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RIL;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1769
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsEccOnly()Z

    move-result v5

    .line 1770
    .local v5, "isImsEccOnly":Z
    if-nez v0, :cond_12

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    .line 1771
    iput-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1775
    .end local v5    # "isImsEccOnly":Z
    :cond_12
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1776
    .end local v0    # "in_service":Z
    .end local v3    # "radioOffwithIwlan":Z
    .end local v4    # "oper":Ljava/lang/String;
    goto/16 :goto_b

    .line 1777
    :cond_13
    const/4 v0, 0x0

    .line 1778
    .local v0, "namMatch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isHomeSid(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1779
    const/4 v0, 0x1

    .line 1783
    :cond_14
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v3, :cond_15

    .line 1784
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1785
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1784
    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v3

    .line 1786
    .local v3, "isRoamingBetweenOperators":Z
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eq v3, v4, :cond_15

    .line 1787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingBetweenOperators="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". Override CDMA voice roaming to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1789
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1799
    .end local v3    # "isRoamingBetweenOperators":Z
    :cond_15
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v3

    .line 1800
    .local v3, "dataRat":I
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1801
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1802
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x1

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    .line 1803
    .local v4, "isVoiceInService":Z
    :goto_7
    if-eqz v4, :cond_18

    .line 1804
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    .line 1805
    .local v5, "isVoiceRoaming":Z
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eq v6, v5, :cond_17

    .line 1806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1808
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1810
    .end local v5    # "isVoiceRoaming":Z
    :cond_17
    goto :goto_8

    .line 1816
    :cond_18
    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result v5

    .line 1817
    .local v5, "isRoamIndForHomeSystem":Z
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    .line 1818
    .local v6, "dataRoamingState":Z
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    const-string v8, "isRoamIndForHomeSystem="

    if-ne v7, v5, :cond_19

    .line 1819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", override data roaming to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1821
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    xor-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1829
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 1830
    .local v7, "config":Landroid/os/PersistableBundle;
    const-string v9, "cdma_enhanced_roaming_indicator_for_home_network_int_array"

    invoke-virtual {v7, v9}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 1832
    .local v9, "homeRoamIndicators":[I
    if-nez v6, :cond_1a

    if-nez v5, :cond_1a

    if-eqz v9, :cond_1a

    array-length v10, v9

    if-nez v10, :cond_1a

    .line 1835
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", override data roaming to false"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1837
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1844
    .end local v4    # "isVoiceInService":Z
    .end local v5    # "isRoamIndForHomeSystem":Z
    .end local v6    # "dataRoamingState":Z
    .end local v7    # "config":Landroid/os/PersistableBundle;
    .end local v9    # "homeRoamIndicators":[I
    :cond_1a
    :goto_8
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    if-nez v4, :cond_1c

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1845
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    .line 1846
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-ne v4, v5, :cond_1b

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1847
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-ne v4, v5, :cond_1b

    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    if-eqz v4, :cond_1b

    .line 1849
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1851
    :cond_1b
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mergeEmergencyOnlyCdmaIms(Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1853
    :cond_1c
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1857
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 1858
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1859
    const/4 v4, 0x1

    .line 1860
    .local v4, "isPrlLoaded":Z
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1861
    const/4 v4, 0x0

    .line 1863
    :cond_1d
    if-eqz v4, :cond_24

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_9

    .line 1867
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isSidsAllZeros()Z

    move-result v5

    if-nez v5, :cond_25

    .line 1868
    if-nez v0, :cond_1f

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_1f

    .line 1870
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_a

    .line 1871
    :cond_1f
    if-eqz v0, :cond_21

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_21

    .line 1873
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1874
    const-string v5, "Turn off roaming indicator as voice is LTE or NR"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1875
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_a

    .line 1877
    :cond_20
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_a

    .line 1879
    :cond_21
    if-nez v0, :cond_22

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_22

    .line 1881
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_a

    .line 1884
    :cond_22
    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    const/4 v6, 0x2

    if-gt v5, v6, :cond_23

    .line 1885
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_a

    .line 1888
    :cond_23
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_a

    .line 1865
    :cond_24
    :goto_9
    const-string v5, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 1866
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1893
    :cond_25
    :goto_a
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    .line 1894
    .local v5, "roamingIndicator":I
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1896
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 1903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". voiceRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1904
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ". dataRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1905
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isPrlLoaded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ". namMatch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mIsInPrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mRoamingIndicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mDefaultRoamingIndicator= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", set mEmergencyOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mNetworkExsit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1903
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1914
    .end local v0    # "namMatch":Z
    .end local v3    # "dataRat":I
    .end local v4    # "isPrlLoaded":Z
    .end local v5    # "roamingIndicator":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 1917
    :cond_26
    return-void
.end method

.method protected blacklist handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 19
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1240
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, ""

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v2, v4, :cond_19

    const-string v10, "0"

    const/4 v11, 0x0

    if-eq v2, v6, :cond_f

    const/4 v12, 0x6

    if-eq v2, v12, :cond_e

    const/4 v12, 0x7

    if-eq v2, v12, :cond_2

    const/16 v0, 0xe

    if-eq v2, v0, :cond_0

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResultMessage: Unexpected RIL response received: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1524
    :cond_0
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1525
    .local v0, "ints":[I
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget v5, v0, v7

    if-ne v5, v8, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 1526
    aget v4, v0, v7

    if-ne v4, v8, :cond_22

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->shouldForceAutoNetworkSelect()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1532
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1533
    const-string v4, " Forcing Automatic Network Selection, manual selection is not allowed"

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1444
    .end local v0    # "ints":[I
    :cond_2
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1445
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 1447
    .local v0, "opNames":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v4, v0

    if-lt v4, v5, :cond_4

    .line 1448
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLongRaw(Ljava/lang/String;)V

    .line 1449
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaShortRaw(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    .line 1452
    .local v4, "brandOverride":Ljava/lang/String;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForBrandOverride(Ljava/lang/String;)V

    .line 1453
    if-eqz v4, :cond_3

    .line 1454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1455
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v6, v0, v9

    invoke-virtual {v5, v4, v4, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1457
    :cond_3
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v6, v0, v7

    aget-object v7, v0, v8

    aget-object v8, v0, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    .end local v0    # "opNames":[Ljava/lang/String;
    .end local v4    # "brandOverride":Ljava/lang/String;
    :cond_4
    :goto_1
    goto/16 :goto_9

    .line 1461
    :cond_5
    iget-object v13, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    .line 1463
    .local v13, "opNames":[Ljava/lang/String;
    if-eqz v13, :cond_d

    array-length v14, v13

    if-lt v14, v5, :cond_d

    .line 1466
    aget-object v5, v13, v9

    if-eqz v5, :cond_6

    aget-object v5, v13, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_6

    aget-object v5, v13, v9

    .line 1467
    const-string v6, "00000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v13, v9

    .line 1469
    const-string v6, "N/AN/A"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1470
    :cond_6
    const-string v5, "ro.cdma.home.operator.numeric"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v9

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v13, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1481
    :cond_7
    aget-object v0, v13, v9

    .line 1482
    .local v0, "numeric":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1483
    .local v5, "plusCode":Z
    if-eqz v0, :cond_9

    const-string v6, "2134"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1484
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v12, :cond_9

    .line 1485
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    invoke-interface {v6, v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1486
    .local v6, "tempStr":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1487
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v9

    .line 1488
    move-object v0, v6

    .line 1489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_POLL_STATE_OPERATOR_CDMA: checkMccBySidLtmOff: numeric ="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", plmn ="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v13, v9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1492
    :cond_8
    const/4 v5, 0x1

    .line 1495
    .end local v6    # "tempStr":Ljava/lang/String;
    :cond_9
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v4, :cond_b

    .line 1498
    if-eqz v5, :cond_a

    .line 1499
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1500
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    aget-object v10, v13, v9

    .line 1499
    invoke-static {v4, v6, v10, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->lookupOperatorName(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v8

    .line 1502
    :cond_a
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v6, v13, v8

    aget-object v7, v13, v9

    invoke-virtual {v4, v11, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1505
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    .line 1506
    .restart local v4    # "brandOverride":Ljava/lang/String;
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForBrandOverride(Ljava/lang/String;)V

    .line 1507
    if-eqz v4, :cond_c

    .line 1509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_POLL_STATE_OPERATOR_CDMA: use brand="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1511
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v7, v13, v9

    invoke-virtual {v6, v4, v4, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1513
    :cond_c
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v7, v13, v7

    aget-object v8, v13, v8

    aget-object v9, v13, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    .end local v0    # "numeric":Ljava/lang/String;
    .end local v4    # "brandOverride":Ljava/lang/String;
    .end local v5    # "plusCode":Z
    :goto_2
    goto :goto_3

    .line 1517
    :cond_d
    const-string v0, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1520
    .end local v13    # "opNames":[Ljava/lang/String;
    :goto_3
    goto/16 :goto_9

    .line 1325
    :cond_e
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/NetworkRegistrationInfo;

    .line 1326
    .local v0, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePollStateResultMessage: PS IWLAN. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1330
    goto/16 :goto_9

    .line 1333
    .end local v0    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    :cond_f
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/NetworkRegistrationInfo;

    .line 1334
    .local v4, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1335
    nop

    .line 1336
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v7

    .line 1337
    .local v7, "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationInfo;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v9

    .line 1338
    .local v9, "registrationState":I
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v12

    .line 1339
    .local v12, "serviceState":I
    nop

    .line 1340
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    .line 1339
    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v13

    .line 1341
    .local v13, "newDataRat":I
    const/4 v0, 0x0

    .line 1344
    .local v0, "nrHasChanged":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: PS cellular. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1350
    if-ne v12, v8, :cond_10

    .line 1351
    iput-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1352
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v11, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 1354
    :cond_10
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v8, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v8

    or-int/2addr v8, v0

    .line 1356
    .end local v0    # "nrHasChanged":Z
    .local v8, "nrHasChanged":Z
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v11

    invoke-virtual {v1, v0, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 1358
    if-eqz v8, :cond_11

    .line 1359
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1360
    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1359
    invoke-virtual {v0, v11, v14}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 1364
    :cond_11
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0, v9}, Lmediatek/telephony/MtkServiceState;->setRilDataRegState(I)V

    .line 1368
    const/4 v11, 0x0

    .line 1370
    .local v11, "mtk_data_type":I
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1371
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v14, "persist.vendor.radio.mtk_data_type"

    .line 1370
    invoke-static {v0, v14, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v0

    .line 1374
    goto :goto_4

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "INVALID PROP_MTK_DATA_TYPE"

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1376
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0, v11}, Lmediatek/telephony/MtkServiceState;->setProprietaryDataRadioTechnology(I)V

    .line 1378
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1379
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v0

    iput v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewReasonDataDenied:I

    .line 1380
    iget v0, v7, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewMaxDataCalls:I

    .line 1381
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmDataRoaming:Z

    .line 1384
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmDataRoaming:Z

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    goto/16 :goto_5

    .line 1385
    :cond_12
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const-string v10, " dataRadioTechnology="

    if-eqz v0, :cond_13

    .line 1387
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v0

    .line 1388
    .local v0, "isDataRoaming":Z
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlPollStateResultMessage: cdma dataServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " regState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1397
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v0}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 1398
    .end local v0    # "isDataRoaming":Z
    goto :goto_5

    .line 1406
    :cond_13
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 1407
    .local v0, "oldDataRAT":I
    if-nez v0, :cond_14

    if-nez v13, :cond_16

    .line 1409
    :cond_14
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1410
    invoke-static {v13}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v14

    if-nez v14, :cond_16

    .line 1411
    :cond_15
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1412
    invoke-static {v13}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1413
    :cond_16
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v14, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1416
    :cond_17
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1417
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v5, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v5, v6}, Lmediatek/telephony/MtkServiceState;->setRilDataRegState(I)V

    .line 1422
    :cond_18
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v5

    .line 1423
    .local v5, "isDataRoaming":Z
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1426
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 1429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handlPollStateResultMessage: CdmaLteSST dataServiceState="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " registrationState="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1436
    .end local v0    # "oldDataRAT":I
    .end local v5    # "isDataRoaming":Z
    :goto_5
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewPSCellIdentity:Landroid/telephony/CellIdentity;

    .line 1438
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1439
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLteEarfcn(Landroid/telephony/CellIdentity;)I

    move-result v5

    .line 1438
    invoke-virtual {v1, v0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V

    .line 1440
    goto/16 :goto_9

    .line 1242
    .end local v4    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v7    # "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationInfo;
    .end local v8    # "nrHasChanged":Z
    .end local v9    # "registrationState":I
    .end local v11    # "mtk_data_type":I
    .end local v12    # "serviceState":I
    .end local v13    # "newDataRat":I
    :cond_19
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/NetworkRegistrationInfo;

    .line 1243
    .restart local v4    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    nop

    .line 1244
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v10

    .line 1246
    .local v10, "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationInfo;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v11

    .line 1247
    .local v11, "registrationState":I
    iget-boolean v12, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 1248
    .local v12, "cssIndicator":I
    nop

    .line 1249
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v13

    .line 1248
    invoke-static {v13}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v13

    .line 1251
    .local v13, "newVoiceRat":I
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1254
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->updateVoiceRegState(I)V

    .line 1256
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v12}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 1257
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1258
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 1261
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v14, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v14, v11}, Lmediatek/telephony/MtkServiceState;->setRilVoiceRegState(I)V

    .line 1265
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v14

    .line 1266
    .local v14, "reasonForDenial":I
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v15

    iput-boolean v15, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1267
    iget-object v15, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1268
    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmVoiceRoaming:Z

    .line 1269
    iput v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewRejectCode:I

    goto/16 :goto_9

    .line 1271
    :cond_1a
    iget v15, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 1274
    .local v15, "roamingIndicator":I
    iget v7, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 1277
    .local v7, "systemIsInPrl":I
    iget v5, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 1279
    .local v5, "defaultRoamingIndicator":I
    iput v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationState:I

    .line 1283
    nop

    .line 1284
    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 1285
    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result v17

    if-nez v17, :cond_1b

    move/from16 v17, v8

    goto :goto_6

    :cond_1b
    const/16 v17, 0x0

    :goto_6
    move/from16 v18, v17

    .line 1286
    .local v18, "cdmaRoaming":Z
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v9, v18

    .end local v18    # "cdmaRoaming":Z
    .local v9, "cdmaRoaming":Z
    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1288
    if-eqz v9, :cond_1c

    .line 1289
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v8, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v8, v6}, Lmediatek/telephony/MtkServiceState;->setRilVoiceRegState(I)V

    .line 1293
    :cond_1c
    iput v15, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    .line 1294
    if-nez v7, :cond_1d

    const/4 v6, 0x0

    goto :goto_7

    :cond_1d
    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    .line 1295
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 1297
    const/4 v6, 0x0

    .line 1298
    .local v6, "systemId":I
    const/4 v8, 0x0

    .line 1299
    .local v8, "networkId":I
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v16

    .line 1300
    .local v16, "cellIdentity":Landroid/telephony/CellIdentity;
    if-eqz v16, :cond_1e

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 1301
    move-object/from16 v2, v16

    check-cast v2, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v6

    .line 1302
    move-object/from16 v2, v16

    check-cast v2, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v8

    .line 1304
    :cond_1e
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v6, v8}, Landroid/telephony/ServiceState;->setCdmaSystemAndNetworkId(II)V

    .line 1306
    if-nez v14, :cond_1f

    .line 1307
    const-string v0, "General"

    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_8

    .line 1308
    :cond_1f
    const/4 v2, 0x1

    if-ne v14, v2, :cond_20

    .line 1309
    const-string v0, "Authentication Failure"

    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_8

    .line 1311
    :cond_20
    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 1314
    :goto_8
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration denied, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1322
    .end local v5    # "defaultRoamingIndicator":I
    .end local v6    # "systemId":I
    .end local v7    # "systemIsInPrl":I
    .end local v8    # "networkId":I
    .end local v9    # "cdmaRoaming":Z
    .end local v15    # "roamingIndicator":I
    .end local v16    # "cellIdentity":Landroid/telephony/CellIdentity;
    :cond_21
    nop

    .line 1542
    .end local v4    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v10    # "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationInfo;
    .end local v11    # "registrationState":I
    .end local v12    # "cssIndicator":I
    .end local v13    # "newVoiceRat":I
    .end local v14    # "reasonForDenial":I
    :cond_22
    :goto_9
    return-void
.end method

.method protected blacklist hangupAllImsCall()V
    .locals 2

    .line 4761
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4762
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 4763
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v1, :cond_1

    .line 4764
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 4765
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 4766
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 4767
    const-string v1, "hangupAndPowerOff: hangup VoLTE call."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4769
    :cond_1
    return-void
.end method

.method protected blacklist hangupAndPowerOff()V
    .locals 3

    .line 3694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3695
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 3696
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 3697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 3701
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hangupAllImsCall()V

    .line 3703
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 3705
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x36

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3706
    return-void
.end method

.method public blacklist isConcurrentVoiceAndDataAllowed()Z
    .locals 4

    .line 3322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3324
    return v1

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3327
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isConcurrentVoiceAndDataAllowedForVolte()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3328
    return v1

    .line 3332
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isConcurrentVoiceAndDataAllowedForIwlan()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3333
    return v1

    .line 3335
    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    return v0

    .line 3336
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3340
    return v2

    .line 3346
    :cond_4
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3347
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_5

    .line 3348
    return v1

    .line 3353
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isConcurrentVoiceAndDataAllowedForVolte()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3354
    return v1

    .line 3357
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_0
    return v1
.end method

.method protected blacklist isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 2
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 4289
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 4290
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 4291
    const-string v1, "isOperatorConsideredNonRoaming true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4293
    :cond_0
    return v0
.end method

.method protected blacklist isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 4298
    const/4 v0, 0x0

    .line 4299
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4300
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 4301
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 4302
    .local v1, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 4304
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4305
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "404"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "405"

    if-nez v5, :cond_0

    .line 4306
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4307
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4308
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4309
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4310
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4312
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 4314
    :goto_0
    if-eqz v0, :cond_3

    .line 4315
    const-string v3, "isOperatorConsideredRoaming true"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4317
    :cond_3
    return v0
.end method

.method public blacklist isVowifiRegistered(I)Z
    .locals 3
    .param p1, "slot"    # I

    .line 4932
    const/4 v0, 0x0

    .line 4933
    .local v0, "isVowifi":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.ims.type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "volte"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vowifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 4934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVowifiRegistered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4935
    return v0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "] "

    const-string v2, "MTKSST"

    if-eqz v0, :cond_0

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2327
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaLteSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :goto_0
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "] "

    const-string v2, "MTKSST"

    if-eqz v0, :cond_0

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2338
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaLteSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :goto_0
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "] "

    const-string v2, "MTKSST"

    if-eqz v0, :cond_0

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2348
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaLteSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :goto_0
    return-void
.end method

.method protected blacklist mtkPowerOffNonDdsPhone()Z
    .locals 4

    .line 4573
    nop

    .line 4574
    const-string v0, "persist.radio.airplane_mode_on"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4573
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4575
    .local v0, "isAirplaneModeOn":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->areAllDataDisconnected()Z

    move-result v1

    .line 4577
    .local v1, "allDataDisconnected":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerOffRadioSafely: apm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", allDataDisconnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4579
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", shutdown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4580
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4577
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4582
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4583
    const-string v3, "Non-dds data disconnected, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4584
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hangupAndPowerOff()V

    .line 4585
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4586
    const/4 v2, 0x1

    return v2

    .line 4588
    :cond_0
    return v2
.end method

.method protected blacklist mtkReplaceDdsIfUnset(I)I
    .locals 2
    .param p1, "dds"    # I

    .line 4559
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 4561
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 4560
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 4562
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 4563
    const-string v1, "powerOffRadioSafely: replace dds with main protocol sub "

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4564
    const/4 v1, 0x0

    aget p1, v0, v1

    .line 4567
    .end local v0    # "subIds":[I
    :cond_0
    return p1
.end method

.method protected blacklist mtkReplaceDisconnectTimer()I
    .locals 1

    .line 4605
    const/16 v0, 0x1388

    return v0
.end method

.method public blacklist notifyDataConnection()V
    .locals 2

    .line 4924
    const-string v0, "ServiceStateTracker notifyDataConnection"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4925
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 4926
    return-void
.end method

.method protected blacklist notifySpnDisplayUpdate(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)V
    .locals 7
    .param p1, "data"    # Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    .line 4824
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    .line 4826
    .local v0, "subId":I
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubId:I

    if-ne v1, v0, :cond_0

    .line 4827
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    if-ne v1, v2, :cond_0

    .line 4828
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    if-ne v1, v2, :cond_0

    .line 4829
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4830
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4831
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4833
    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4836
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4837
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 4838
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 4839
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 4840
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 4841
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    .line 4842
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4833
    const-string v2, "updateSpnDisplay: changed sending intent, rule=%d, showPlmn=\'%b\', plmn=\'%s\', showSpn=\'%b\', spn=\'%s\', dataSpn=\'%s\', subId=\'%d\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4844
    .local v1, "log":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4846
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4847
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v4

    const-string v5, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4848
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.SPN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4849
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.DATA_SPN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4850
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v4

    const-string v5, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4851
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.PLMN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4853
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    const-string v5, "hnbName"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4854
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    const-string v5, "csgId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4855
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    const-string v5, "domain"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4857
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    const-string v5, "femtocell"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4860
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 4861
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4863
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4864
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4871
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updatePLMN(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 4874
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubId:I

    .line 4875
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    .line 4876
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    .line 4877
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 4878
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 4879
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 4880
    return-void
.end method

.method protected blacklist onCarrierConfigChanged()V
    .locals 3

    .line 4773
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 4774
    .local v0, "config":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierConfigChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4777
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 4778
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorNameFromEri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForEri(Ljava/lang/String;)V

    .line 4781
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    .line 4784
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLteEarfcnLists(Landroid/os/PersistableBundle;)V

    .line 4785
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateReportingCriteria(Landroid/os/PersistableBundle;)V

    .line 4786
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOperatorNamePattern(Landroid/os/PersistableBundle;)V

    .line 4787
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 4793
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSpnDisplay()V

    .line 4798
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 4799
    return-void
.end method

.method protected blacklist onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4674
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_SIGNAL_SMOOTH:Z

    if-eqz v0, :cond_0

    .line 4675
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->onSignalStrengthResultExt(Landroid/os/AsyncResult;Landroid/telephony/SignalStrength;)Z

    move-result v0

    return v0

    .line 4678
    :cond_0
    const-string v0, ""

    .line 4679
    .local v0, "mlog":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4680
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkRsrpOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 4679
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4681
    .local v1, "mtkRsrpOnly":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v3, :cond_2

    .line 4682
    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRsrpThreshold()[I

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 4683
    .local v3, "mtkLteRsrpThreshold":[I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v4, :cond_3

    .line 4684
    invoke-interface {v4}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRssnrThreshold()[I

    move-result-object v2

    goto :goto_2

    :cond_3
    nop

    .line 4686
    .local v2, "mtkLteRssnrThreshold":[I
    :goto_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, ", raw:"

    if-eqz v4, :cond_4

    .line 4687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old:{level:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4688
    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4694
    :cond_4
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 4695
    new-instance v4, Lmediatek/telephony/MtkSignalStrength;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4696
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/SignalStrength;

    invoke-direct {v4, v6, v7}, Lmediatek/telephony/MtkSignalStrength;-><init>(ILandroid/telephony/SignalStrength;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4698
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 4699
    .local v4, "config":Landroid/os/PersistableBundle;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4, v7}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 4702
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    check-cast v6, Lmediatek/telephony/MtkSignalStrength;

    .line 4703
    .local v6, "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    invoke-virtual {v6, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkRsrpOnly(Z)V

    .line 4704
    invoke-virtual {v6, v3}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRsrpThreshold([I)V

    .line 4705
    invoke-virtual {v6, v2}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRssnrThreshold([I)V

    .line 4706
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4, v7}, Lmediatek/telephony/MtkSignalStrength;->updateMtkLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 4709
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->updateSignalStrengthLevel(Landroid/telephony/SignalStrength;)V

    .line 4711
    .end local v4    # "config":Landroid/os/PersistableBundle;
    .end local v6    # "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    goto :goto_3

    .line 4712
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4713
    new-instance v4, Lmediatek/telephony/MtkSignalStrength;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-direct {v4, v6}, Lmediatek/telephony/MtkSignalStrength;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4716
    :goto_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_6

    .line 4717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new:{level:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4718
    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4720
    :cond_6
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrengthUpdatedTime:J

    .line 4724
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    move-result v4

    .line 4725
    .local v4, "ssChanged":Z
    return v4
.end method

.method protected blacklist onUpdateIccAvailability()V
    .locals 4

    .line 4322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 4323
    return-void

    .line 4326
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 4328
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4329
    :cond_1
    if-eqz v0, :cond_4

    .line 4330
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    .line 4331
    .local v1, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    if-eqz v2, :cond_3

    .line 4333
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_0

    .line 4335
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 4337
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mergeEmergencyOnlyCdmaIms(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 4338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDMA]onUpdateIccAvailability, appstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetworkExsit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mEmergencyOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4344
    .end local v1    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_a

    .line 4347
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 4348
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromUsim(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto :goto_1

    .line 4349
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_6

    .line 4350
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromRuim(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    .line 4353
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_8

    .line 4354
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4355
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 4356
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_7

    .line 4357
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 4358
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4359
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 4362
    :cond_7
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4363
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4365
    :cond_8
    if-eqz v0, :cond_a

    .line 4366
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 4367
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4368
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4369
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4370
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x11

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4371
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_a

    .line 4372
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4373
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x77

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    .line 4375
    :cond_9
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_a

    .line 4376
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x1a

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4377
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_a

    .line 4378
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x1b

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4383
    :cond_a
    :goto_2
    return-void
.end method

.method protected blacklist pollStateDone()V
    .locals 58

    .line 2661
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    .line 2663
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v2, Lmediatek/telephony/MtkServiceState;

    .line 2664
    .local v2, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v3, Lmediatek/telephony/MtkServiceState;

    .line 2668
    .local v3, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->pollStateDoneExt(Landroid/telephony/ServiceState;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 2670
    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v1, :cond_0

    .line 2671
    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 2672
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 2674
    :cond_0
    return-void

    .line 2677
    :cond_1
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 2681
    .local v4, "nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v6

    .line 2685
    .local v6, "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 2686
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v10

    invoke-virtual {v0, v8, v10, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    goto :goto_0

    .line 2687
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2688
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v10

    invoke-virtual {v0, v8, v10, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    goto :goto_0

    .line 2690
    :cond_3
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v8, v9, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    .line 2693
    :goto_0
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateRoamingState()V

    .line 2697
    :cond_4
    sget-boolean v8, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v8, :cond_5

    .line 2698
    const-string v8, "telephony.test.forceRoaming"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2699
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2701
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2702
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->processIwlanRegistrationInfo()V

    .line 2710
    new-instance v8, Lmediatek/telephony/MtkServiceState;

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v10, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v8, v10}, Lmediatek/telephony/MtkServiceState;-><init>(Lmediatek/telephony/MtkServiceState;)V

    .line 2711
    .local v8, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2715
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Poll ServiceState done: oldSS=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2717
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Poll ServiceState done: newSS=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "] oldMaxDataCalls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mNewMaxDataCalls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " oldReasonDataDenied="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mNewReasonDataDenied="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isImsEccOnly= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsEccOnly()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2717
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2725
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2726
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2727
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_6

    move v10, v1

    goto :goto_1

    :cond_6
    move v10, v5

    .line 2729
    .local v10, "hasRegistered":Z
    :goto_1
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2730
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2731
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-eqz v11, :cond_7

    move v11, v1

    goto :goto_2

    :cond_7
    move v11, v5

    .line 2733
    .local v11, "hasDeregistered":Z
    :goto_2
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2734
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_8

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2735
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-ne v12, v13, :cond_8

    move v12, v1

    goto :goto_3

    :cond_8
    move v12, v5

    .line 2737
    .local v12, "hasAirplaneModeOnChanged":Z
    :goto_3
    new-instance v14, Landroid/util/SparseBooleanArray;

    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2738
    invoke-virtual {v15}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v15

    array-length v15, v15

    invoke-direct {v14, v15}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2739
    .local v14, "hasDataAttached":Landroid/util/SparseBooleanArray;
    new-instance v15, Landroid/util/SparseBooleanArray;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2740
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v9

    array-length v9, v9

    invoke-direct {v15, v9}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v9, v15

    .line 2741
    .local v9, "hasDataDetached":Landroid/util/SparseBooleanArray;
    new-instance v15, Landroid/util/SparseBooleanArray;

    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2742
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v13

    array-length v13, v13

    invoke-direct {v15, v13}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v13, v15

    .line 2743
    .local v13, "hasRilDataRadioTechnologyChanged":Landroid/util/SparseBooleanArray;
    new-instance v15, Landroid/util/SparseBooleanArray;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2744
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v15, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v15

    .line 2745
    .local v1, "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    const/4 v15, 0x0

    .line 2746
    .local v15, "anyDataRegChanged":Z
    const/16 v19, 0x0

    .line 2747
    .local v19, "anyDataRatChanged":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v5

    array-length v7, v5

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .local v22, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    :goto_4
    move-object/from16 v23, v4

    .end local v4    # "nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    .local v23, "nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    if-ge v2, v7, :cond_18

    aget v4, v5, v2

    .line 2748
    .local v4, "transport":I
    move-object/from16 v25, v5

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v6

    const/4 v6, 0x2

    .end local v6    # "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .local v26, "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v5, v6, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    .line 2750
    .local v5, "oldNrs":Landroid/telephony/NetworkRegistrationInfo;
    move/from16 v27, v7

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v6, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 2758
    .local v7, "newNrs":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    if-eqz v7, :cond_a

    .line 2759
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    .line 2760
    .local v6, "changed":Z
    :goto_5
    invoke-virtual {v14, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2761
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v28

    if-eqz v28, :cond_c

    if-eqz v7, :cond_b

    .line 2762
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v28

    if-nez v28, :cond_c

    :cond_b
    const/16 v28, 0x1

    goto :goto_6

    :cond_c
    const/16 v28, 0x0

    :goto_6
    move/from16 v6, v28

    .line 2763
    invoke-virtual {v9, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2764
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v28

    goto :goto_7

    .line 2765
    :cond_d
    const/16 v28, 0x0

    :goto_7
    move/from16 v29, v28

    .line 2766
    .local v29, "oldRAT":I
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v28

    goto :goto_8

    .line 2767
    :cond_e
    const/16 v28, 0x0

    :goto_8
    move/from16 v30, v28

    .line 2768
    .local v30, "newRAT":I
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v28

    if-eqz v28, :cond_f

    .line 2769
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/DataSpecificRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v28

    goto :goto_9

    :cond_f
    const/16 v28, 0x0

    :goto_9
    move/from16 v31, v28

    .line 2770
    .local v31, "isOldCA":Z
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v28

    if-eqz v28, :cond_10

    .line 2771
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/DataSpecificRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v28

    goto :goto_a

    :cond_10
    const/16 v28, 0x0

    :goto_a
    move/from16 v32, v28

    .line 2772
    .local v32, "isNewCA":Z
    move/from16 v28, v6

    move/from16 v6, v29

    move/from16 v29, v15

    move/from16 v15, v30

    .end local v30    # "newRAT":I
    .local v6, "oldRAT":I
    .local v15, "newRAT":I
    .local v28, "changed":Z
    .local v29, "anyDataRegChanged":Z
    if-ne v6, v15, :cond_12

    move/from16 v30, v12

    move/from16 v12, v31

    move-object/from16 v31, v9

    move/from16 v9, v32

    .end local v32    # "isNewCA":Z
    .local v9, "isNewCA":Z
    .local v12, "isOldCA":Z
    .local v30, "hasAirplaneModeOnChanged":Z
    .local v31, "hasDataDetached":Landroid/util/SparseBooleanArray;
    if-eq v12, v9, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v32, v9

    const/4 v9, 0x0

    goto :goto_c

    .end local v30    # "hasAirplaneModeOnChanged":Z
    .local v9, "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v12, "hasAirplaneModeOnChanged":Z
    .local v31, "isOldCA":Z
    .restart local v32    # "isNewCA":Z
    :cond_12
    move/from16 v30, v12

    move/from16 v12, v31

    move-object/from16 v31, v9

    move/from16 v9, v32

    .end local v32    # "isNewCA":Z
    .local v9, "isNewCA":Z
    .local v12, "isOldCA":Z
    .restart local v30    # "hasAirplaneModeOnChanged":Z
    .local v31, "hasDataDetached":Landroid/util/SparseBooleanArray;
    :goto_b
    move/from16 v32, v9

    const/4 v9, 0x1

    .end local v9    # "isNewCA":Z
    .restart local v32    # "isNewCA":Z
    :goto_c
    invoke-virtual {v13, v4, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2773
    if-eq v6, v15, :cond_13

    .line 2774
    const/4 v9, 0x1

    move/from16 v19, v9

    .line 2776
    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v9

    goto :goto_d

    .line 2777
    :cond_14
    const/4 v9, 0x4

    :goto_d
    nop

    .line 2778
    .local v9, "oldRegState":I
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v24

    goto :goto_e

    .line 2779
    :cond_15
    const/16 v24, 0x4

    :goto_e
    move/from16 v33, v24

    .line 2780
    .local v33, "newRegState":I
    move-object/from16 v34, v5

    move/from16 v5, v33

    .end local v33    # "newRegState":I
    .local v5, "newRegState":I
    .local v34, "oldNrs":Landroid/telephony/NetworkRegistrationInfo;
    move/from16 v33, v6

    if-eq v9, v5, :cond_16

    const/4 v6, 0x1

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    .end local v6    # "oldRAT":I
    .local v33, "oldRAT":I
    :goto_f
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2781
    if-eq v9, v5, :cond_17

    .line 2782
    const/4 v6, 0x1

    move v15, v6

    .end local v29    # "anyDataRegChanged":Z
    .local v6, "anyDataRegChanged":Z
    goto :goto_10

    .line 2781
    .end local v6    # "anyDataRegChanged":Z
    .restart local v29    # "anyDataRegChanged":Z
    :cond_17
    move/from16 v15, v29

    .line 2747
    .end local v4    # "transport":I
    .end local v5    # "newRegState":I
    .end local v7    # "newNrs":Landroid/telephony/NetworkRegistrationInfo;
    .end local v9    # "oldRegState":I
    .end local v12    # "isOldCA":Z
    .end local v28    # "changed":Z
    .end local v29    # "anyDataRegChanged":Z
    .end local v32    # "isNewCA":Z
    .end local v33    # "oldRAT":I
    .end local v34    # "oldNrs":Landroid/telephony/NetworkRegistrationInfo;
    .local v15, "anyDataRegChanged":Z
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move/from16 v7, v27

    move/from16 v12, v30

    move-object/from16 v9, v31

    goto/16 :goto_4

    .line 2788
    .end local v26    # "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .end local v30    # "hasAirplaneModeOnChanged":Z
    .end local v31    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v6, "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .local v9, "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v12, "hasAirplaneModeOnChanged":Z
    :cond_18
    move-object/from16 v26, v6

    move-object/from16 v31, v9

    move/from16 v30, v12

    move/from16 v29, v15

    .end local v6    # "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .end local v9    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .end local v12    # "hasAirplaneModeOnChanged":Z
    .end local v15    # "anyDataRegChanged":Z
    .restart local v26    # "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .restart local v29    # "anyDataRegChanged":Z
    .restart local v30    # "hasAirplaneModeOnChanged":Z
    .restart local v31    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    if-nez v19, :cond_19

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2789
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    if-eq v2, v4, :cond_19

    const/4 v2, 0x1

    goto :goto_11

    :cond_19
    const/4 v2, 0x0

    .line 2791
    .local v2, "hasDataTransportPreferenceChanged":Z
    :goto_11
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2792
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eq v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    .line 2794
    .local v4, "hasVoiceRegStateChanged":Z
    :goto_12
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2795
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v6

    if-eq v5, v6, :cond_1b

    const/4 v5, 0x1

    goto :goto_13

    :cond_1b
    const/4 v5, 0x0

    .line 2796
    .local v5, "hasNrFrequencyRangeChanged":Z
    :goto_13
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v6

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v7

    if-eq v6, v7, :cond_1c

    const/4 v6, 0x1

    goto :goto_14

    :cond_1c
    const/4 v6, 0x0

    .line 2797
    .local v6, "hasNrStateChanged":Z
    :goto_14
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPrioritizedCellIdentities(Landroid/telephony/ServiceState;)Ljava/util/List;

    move-result-object v7

    .line 2798
    .local v7, "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 2799
    const/4 v9, 0x0

    goto :goto_15

    :cond_1d
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Landroid/telephony/CellIdentity;

    .line 2800
    .local v9, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    :goto_15
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v12, :cond_1e

    .line 2801
    if-eqz v9, :cond_1f

    goto :goto_16

    :cond_1e
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v12, v9}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v12

    if-nez v12, :cond_1f

    :goto_16
    const/4 v12, 0x1

    goto :goto_17

    :cond_1f
    const/4 v12, 0x0

    .line 2806
    .local v12, "hasLocationChanged":Z
    :goto_17
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v15

    if-nez v15, :cond_20

    const/4 v15, 0x1

    goto :goto_18

    :cond_20
    const/4 v15, 0x0

    .line 2809
    .local v15, "isDataInService":Z
    :goto_18
    if-eqz v15, :cond_21

    .line 2811
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    .line 2818
    :cond_21
    move/from16 v16, v15

    .end local v15    # "isDataInService":Z
    .local v16, "isDataInService":Z
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2819
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v15

    move-object/from16 v25, v7

    .end local v7    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    .local v25, "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v7

    if-eq v15, v7, :cond_22

    const/4 v7, 0x1

    goto :goto_19

    :cond_22
    const/4 v7, 0x0

    .line 2823
    .local v7, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_19
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v15}, Lmediatek/telephony/MtkServiceState;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    iget-boolean v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    if-eqz v15, :cond_23

    goto :goto_1a

    :cond_23
    const/4 v15, 0x0

    goto :goto_1b

    :cond_24
    :goto_1a
    const/4 v15, 0x1

    .line 2825
    .local v15, "hasChanged":Z
    :goto_1b
    move-object/from16 v27, v9

    .end local v9    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .local v27, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v9

    if-nez v9, :cond_25

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v9

    if-eqz v9, :cond_25

    const/4 v9, 0x1

    goto :goto_1c

    :cond_25
    const/4 v9, 0x0

    .line 2827
    .local v9, "hasVoiceRoamingOn":Z
    :goto_1c
    move/from16 v28, v4

    .end local v4    # "hasVoiceRegStateChanged":Z
    .local v28, "hasVoiceRegStateChanged":Z
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_1d

    :cond_26
    const/4 v4, 0x0

    .line 2831
    .local v4, "hasVoiceRoamingOff":Z
    :goto_1d
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v32

    if-nez v32, :cond_27

    .line 2832
    move/from16 v32, v6

    const/4 v6, 0x0

    goto :goto_1e

    .line 2833
    :cond_27
    move/from16 v32, v6

    .end local v6    # "hasNrStateChanged":Z
    .local v32, "hasNrStateChanged":Z
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v6, 0x1

    goto :goto_1e

    :cond_28
    const/4 v6, 0x0

    :goto_1e
    nop

    .line 2837
    .local v6, "hasDataRoamingOn":Z
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v33

    if-nez v33, :cond_29

    .line 2838
    move-object/from16 v33, v3

    .end local v3    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v33, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    goto :goto_1f

    .line 2839
    .end local v33    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v3    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    :cond_29
    move-object/from16 v33, v3

    .end local v3    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v33    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_1f

    :cond_2a
    const/4 v3, 0x0

    :goto_1f
    nop

    .line 2841
    .local v3, "hasDataRoamingOff":Z
    move/from16 v34, v5

    .end local v5    # "hasNrFrequencyRangeChanged":Z
    .local v34, "hasNrFrequencyRangeChanged":Z
    iget v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRejectCode:I

    move/from16 v35, v12

    .end local v12    # "hasLocationChanged":Z
    .local v35, "hasLocationChanged":Z
    iget v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewRejectCode:I

    if-eq v5, v12, :cond_2b

    const/4 v5, 0x1

    goto :goto_20

    :cond_2b
    const/4 v5, 0x0

    .line 2843
    .local v5, "hasRejectCauseChanged":Z
    :goto_20
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v12

    move/from16 v36, v5

    .end local v5    # "hasRejectCauseChanged":Z
    .local v36, "hasRejectCauseChanged":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v5

    if-eq v12, v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_21

    :cond_2c
    const/4 v5, 0x0

    .line 2845
    .local v5, "hasCssIndicatorChanged":Z
    :goto_21
    const/4 v12, 0x0

    .line 2846
    .local v12, "has4gHandoff":Z
    const/16 v37, 0x0

    .line 2847
    .local v37, "hasMultiApnSupport":Z
    const/16 v38, 0x0

    .line 2848
    .local v38, "hasLostMultiApnSupport":Z
    move/from16 v39, v12

    .end local v12    # "has4gHandoff":Z
    .local v39, "has4gHandoff":Z
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v12

    if-eqz v12, :cond_33

    .line 2849
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v12

    .line 2850
    .local v12, "wwanDataRat":I
    move/from16 v40, v5

    .end local v5    # "hasCssIndicatorChanged":Z
    .local v40, "hasCssIndicatorChanged":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v5

    .line 2851
    .local v5, "newWwanDataRat":I
    move/from16 v41, v3

    .end local v3    # "hasDataRoamingOff":Z
    .local v41, "hasDataRoamingOff":Z
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v3

    move/from16 v42, v6

    .end local v6    # "hasDataRoamingOn":Z
    .local v42, "hasDataRoamingOn":Z
    const/16 v6, 0xd

    if-nez v3, :cond_2f

    .line 2852
    invoke-static {v12}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eq v5, v6, :cond_2e

    :cond_2d
    if-ne v12, v6, :cond_2f

    .line 2855
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2e
    const/4 v3, 0x1

    goto :goto_22

    :cond_2f
    const/4 v3, 0x0

    .line 2856
    .end local v39    # "has4gHandoff":Z
    .local v3, "has4gHandoff":Z
    :goto_22
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v39

    if-nez v39, :cond_30

    if-ne v5, v6, :cond_31

    .line 2858
    :cond_30
    invoke-static {v12}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v39

    if-nez v39, :cond_31

    if-eq v12, v6, :cond_31

    const/4 v6, 0x1

    goto :goto_23

    :cond_31
    const/4 v6, 0x0

    :goto_23
    move/from16 v37, v6

    .line 2860
    const/4 v6, 0x4

    if-lt v5, v6, :cond_32

    const/16 v6, 0x8

    if-gt v5, v6, :cond_32

    const/4 v6, 0x1

    goto :goto_24

    :cond_32
    const/4 v6, 0x0

    :goto_24
    move/from16 v38, v6

    move v12, v3

    move/from16 v3, v37

    move/from16 v5, v38

    goto :goto_25

    .line 2848
    .end local v12    # "wwanDataRat":I
    .end local v40    # "hasCssIndicatorChanged":Z
    .end local v41    # "hasDataRoamingOff":Z
    .end local v42    # "hasDataRoamingOn":Z
    .local v3, "hasDataRoamingOff":Z
    .local v5, "hasCssIndicatorChanged":Z
    .restart local v6    # "hasDataRoamingOn":Z
    .restart local v39    # "has4gHandoff":Z
    :cond_33
    move/from16 v41, v3

    move/from16 v40, v5

    move/from16 v42, v6

    .end local v3    # "hasDataRoamingOff":Z
    .end local v5    # "hasCssIndicatorChanged":Z
    .end local v6    # "hasDataRoamingOn":Z
    .restart local v40    # "hasCssIndicatorChanged":Z
    .restart local v41    # "hasDataRoamingOff":Z
    .restart local v42    # "hasDataRoamingOn":Z
    move/from16 v3, v37

    move/from16 v5, v38

    move/from16 v12, v39

    .line 2865
    .end local v37    # "hasMultiApnSupport":Z
    .end local v38    # "hasLostMultiApnSupport":Z
    .end local v39    # "has4gHandoff":Z
    .local v3, "hasMultiApnSupport":Z
    .local v5, "hasLostMultiApnSupport":Z
    .local v12, "has4gHandoff":Z
    :goto_25
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2866
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2867
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v6

    move/from16 v37, v5

    .end local v5    # "hasLostMultiApnSupport":Z
    .local v37, "hasLostMultiApnSupport":Z
    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getVoiceRoamingType()I

    move-result v5

    if-eq v6, v5, :cond_35

    const/4 v5, 0x1

    goto :goto_26

    .line 2866
    .end local v37    # "hasLostMultiApnSupport":Z
    .restart local v5    # "hasLostMultiApnSupport":Z
    :cond_34
    move/from16 v37, v5

    .line 2867
    .end local v5    # "hasLostMultiApnSupport":Z
    .restart local v37    # "hasLostMultiApnSupport":Z
    :cond_35
    const/4 v5, 0x0

    .line 2869
    .local v5, "hasVoiceRoamingTypeChange":Z
    :goto_26
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2870
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2871
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v6

    move/from16 v38, v5

    .end local v5    # "hasVoiceRoamingTypeChange":Z
    .local v38, "hasVoiceRoamingTypeChange":Z
    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getDataRoamingType()I

    move-result v5

    if-eq v6, v5, :cond_37

    const/4 v5, 0x1

    goto :goto_27

    .line 2870
    .end local v38    # "hasVoiceRoamingTypeChange":Z
    .restart local v5    # "hasVoiceRoamingTypeChange":Z
    :cond_36
    move/from16 v38, v5

    .line 2871
    .end local v5    # "hasVoiceRoamingTypeChange":Z
    .restart local v38    # "hasVoiceRoamingTypeChange":Z
    :cond_37
    const/4 v5, 0x0

    .line 2873
    .local v5, "hasDataRoamingTypeChange":Z
    :goto_27
    const/4 v6, 0x0

    .line 2874
    .local v6, "hasPlmnChange":Z
    move/from16 v39, v6

    .end local v6    # "hasPlmnChange":Z
    .local v39, "hasPlmnChange":Z
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_38

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3c

    :cond_38
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2876
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_39

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3b

    :cond_39
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2878
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3a

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3b

    :cond_3a
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2880
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2881
    :cond_3b
    const/4 v6, 0x1

    .end local v39    # "hasPlmnChange":Z
    .restart local v6    # "hasPlmnChange":Z
    goto :goto_28

    .line 2885
    .end local v6    # "hasPlmnChange":Z
    .restart local v39    # "hasPlmnChange":Z
    :cond_3c
    move/from16 v6, v39

    .end local v39    # "hasPlmnChange":Z
    .restart local v6    # "hasPlmnChange":Z
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v8

    .end local v8    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v39, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    const-string v8, "pollStateDone: hasRegistered = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasDeregistered = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasDataAttached = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hasDataDetached = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v31

    .end local v31    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v8, "hasDataDetached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v8    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v31    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    const-string v8, " hasDataRegStateChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hasRilVoiceRadioTechnologyChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasRilDataRadioTechnologyChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hasDataTransportPreferenceChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasVoiceRoamingOn = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasVoiceRoamingOff = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasDataRoamingOn ="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v42

    .end local v42    # "hasDataRoamingOn":Z
    .local v8, "hasDataRoamingOn":Z
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v42, v15

    .end local v15    # "hasChanged":Z
    .local v42, "hasChanged":Z
    const-string v15, " hasDataRoamingOff = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v41

    .end local v41    # "hasDataRoamingOff":Z
    .local v15, "hasDataRoamingOff":Z
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v15    # "hasDataRoamingOff":Z
    .restart local v41    # "hasDataRoamingOff":Z
    const-string v15, " hasLocationChanged = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v35

    .end local v35    # "hasLocationChanged":Z
    .local v15, "hasLocationChanged":Z
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v35, v8

    .end local v8    # "hasDataRoamingOn":Z
    .local v35, "hasDataRoamingOn":Z
    const-string v8, " has4gHandoff = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasMultiApnSupport = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasLostMultiApnSupport = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v37

    .end local v37    # "hasLostMultiApnSupport":Z
    .local v8, "hasLostMultiApnSupport":Z
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v37, v3

    .end local v3    # "hasMultiApnSupport":Z
    .local v37, "hasMultiApnSupport":Z
    const-string v3, " hasCssIndicatorChanged = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v40

    .end local v40    # "hasCssIndicatorChanged":Z
    .local v3, "hasCssIndicatorChanged":Z
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v40, v8

    .end local v8    # "hasLostMultiApnSupport":Z
    .local v40, "hasLostMultiApnSupport":Z
    const-string v8, " hasNrFrequencyRangeChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v34

    .end local v34    # "hasNrFrequencyRangeChanged":Z
    .local v8, "hasNrFrequencyRangeChanged":Z
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v8    # "hasNrFrequencyRangeChanged":Z
    .restart local v34    # "hasNrFrequencyRangeChanged":Z
    const-string v8, " hasNrStateChanged = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v32

    .end local v32    # "hasNrStateChanged":Z
    .local v8, "hasNrStateChanged":Z
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v32, v4

    .end local v4    # "hasVoiceRoamingOff":Z
    .local v32, "hasVoiceRoamingOff":Z
    const-string v4, " hasVoiceRoamingTypeChange = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v38

    .end local v38    # "hasVoiceRoamingTypeChange":Z
    .local v4, "hasVoiceRoamingTypeChange":Z
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v4    # "hasVoiceRoamingTypeChange":Z
    .restart local v38    # "hasVoiceRoamingTypeChange":Z
    const-string v4, " hasDataRoamingTypeChange = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasAirplaneModeOnlChanged = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v30

    .end local v30    # "hasAirplaneModeOnChanged":Z
    .local v4, "hasAirplaneModeOnChanged":Z
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v4    # "hasAirplaneModeOnChanged":Z
    .restart local v30    # "hasAirplaneModeOnChanged":Z
    const-string v4, " hasPlmnChange = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2913
    if-nez v28, :cond_3e

    if-eqz v29, :cond_3d

    goto :goto_29

    :cond_3d
    move/from16 v43, v5

    move/from16 v24, v9

    goto :goto_2b

    .line 2914
    :cond_3e
    :goto_29
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0xc3c2

    goto :goto_2a

    .line 2915
    :cond_3f
    const v0, 0xc3c4

    :goto_2a
    move/from16 v43, v5

    const/4 v5, 0x4

    .end local v5    # "hasDataRoamingTypeChange":Z
    .local v43, "hasDataRoamingTypeChange":Z
    new-array v5, v5, [Ljava/lang/Object;

    move/from16 v24, v9

    .end local v9    # "hasVoiceRoamingOn":Z
    .local v24, "hasVoiceRoamingOn":Z
    iget-object v9, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2916
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v20, 0x0

    aput-object v9, v5, v20

    iget-object v9, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x1

    aput-object v9, v5, v18

    iget-object v9, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2917
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v21, 0x2

    aput-object v9, v5, v21

    iget-object v9, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x3

    aput-object v9, v5, v17

    .line 2914
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2922
    :goto_2b
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v9, v27

    .end local v27    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .local v9, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    invoke-interface {v0, v5, v9, v15}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->isRegionLockedState(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;Z)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2923
    const-string v0, "has region locked"

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2924
    return-void

    .line 2929
    :cond_40
    const/4 v0, 0x0

    .line 2930
    .local v0, "newOosFlag":I
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    move/from16 v27, v0

    const/4 v0, 0x1

    .end local v0    # "newOosFlag":I
    .local v27, "newOosFlag":I
    if-ne v5, v0, :cond_41

    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2931
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2932
    const/4 v0, 0x1

    .end local v27    # "newOosFlag":I
    .restart local v0    # "newOosFlag":I
    goto :goto_2c

    .line 2934
    .end local v0    # "newOosFlag":I
    .restart local v27    # "newOosFlag":I
    :cond_41
    move/from16 v0, v27

    .end local v27    # "newOosFlag":I
    .restart local v0    # "newOosFlag":I
    :goto_2c
    iget v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->oosFlag:I

    if-eq v0, v5, :cond_43

    .line 2935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v15

    .end local v15    # "hasLocationChanged":Z
    .local v27, "hasLocationChanged":Z
    const-string v15, "gsm.oppo.oos"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x1

    if-ne v0, v15, :cond_42

    const-string v15, "1"

    goto :goto_2d

    :cond_42
    const-string v15, "0"

    :goto_2d
    invoke-static {v5, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    iput v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->oosFlag:I

    .line 2937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "newOosFlag "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2e

    .line 2934
    .end local v27    # "hasLocationChanged":Z
    .restart local v15    # "hasLocationChanged":Z
    :cond_43
    move/from16 v27, v15

    .line 2941
    .end local v15    # "hasLocationChanged":Z
    .restart local v27    # "hasLocationChanged":Z
    :goto_2e
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2945
    if-eqz v7, :cond_44

    .line 2946
    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v5

    .line 2951
    .local v5, "cid":I
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x0

    aput-object v17, v15, v20

    move/from16 v17, v0

    .end local v0    # "newOosFlag":I
    .local v17, "newOosFlag":I
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2952
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v18, 0x1

    aput-object v0, v15, v18

    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2953
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v21, 0x2

    aput-object v0, v15, v21

    .line 2951
    const v0, 0xc3cb

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RAT switched "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2957
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v15

    .line 2956
    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " -> "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2960
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v15

    .line 2959
    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " at cell "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2955
    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 2945
    .end local v5    # "cid":I
    .end local v17    # "newOosFlag":I
    .restart local v0    # "newOosFlag":I
    :cond_44
    move/from16 v17, v0

    .line 2964
    .end local v0    # "newOosFlag":I
    .restart local v17    # "newOosFlag":I
    :goto_2f
    if-eqz v3, :cond_45

    .line 2965
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyAllActiveDataConnections()V

    .line 2968
    :cond_45
    iget v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewReasonDataDenied:I

    iput v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReasonDataDenied:I

    .line 2969
    iget v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewMaxDataCalls:I

    iput v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMaxDataCalls:I

    .line 2970
    iget v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewRejectCode:I

    iput v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRejectCode:I

    goto :goto_30

    .line 2941
    .end local v17    # "newOosFlag":I
    .restart local v0    # "newOosFlag":I
    :cond_46
    move/from16 v17, v0

    .line 2973
    .end local v0    # "newOosFlag":I
    .restart local v17    # "newOosFlag":I
    :goto_30
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2976
    .local v0, "oldMergedSS":Landroid/telephony/ServiceState;
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 2980
    .local v5, "oldRilDataRadioTechnology":I
    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2981
    .local v15, "tss":Landroid/telephony/ServiceState;
    move/from16 v21, v3

    .end local v3    # "hasCssIndicatorChanged":Z
    .local v21, "hasCssIndicatorChanged":Z
    iget-object v3, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v3, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2982
    iput-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2989
    iget-object v3, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v3, Lmediatek/telephony/MtkServiceState;

    .line 2990
    .end local v22    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .local v3, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    move-object/from16 v22, v15

    .end local v15    # "tss":Landroid/telephony/ServiceState;
    .local v22, "tss":Landroid/telephony/ServiceState;
    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v15, Lmediatek/telephony/MtkServiceState;

    .line 2991
    .end local v33    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v15, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iput-object v9, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 2993
    if-eqz v7, :cond_47

    .line 2994
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updatePhoneObject()V

    .line 2997
    :cond_47
    move-object/from16 v33, v9

    .end local v9    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .local v33, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    iget-object v9, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2998
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v44, v15

    .end local v15    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v44, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    const-string v15, "phone"

    invoke-virtual {v9, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 3000
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v19, :cond_49

    .line 3001
    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v15

    move-object/from16 v45, v14

    .end local v14    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .local v45, "hasDataAttached":Landroid/util/SparseBooleanArray;
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    invoke-virtual {v9, v15, v14}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 3011
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 3012
    const/16 v14, 0xe

    if-eq v5, v14, :cond_48

    iget-object v15, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3013
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v15

    if-ne v15, v14, :cond_4a

    .line 3014
    :cond_48
    const-string v14, "[CDMALTE]pollStateDone: update signal for RAT switch between diff group"

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3015
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_31

    .line 3000
    .end local v45    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v14    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_49
    move-object/from16 v45, v14

    .line 3021
    .end local v14    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v45    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_4a
    :goto_31
    if-eqz v10, :cond_4b

    .line 3022
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v14}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3023
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v14}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkAvailable()V

    .line 3025
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3028
    :cond_4b
    if-eqz v11, :cond_4c

    .line 3029
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v14}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3030
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v14}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3033
    :cond_4c
    if-eqz v36, :cond_4d

    .line 3034
    const/16 v14, 0x7d1

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setNotification(I)V

    .line 3039
    :cond_4d
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v14

    if-eqz v14, :cond_4e

    .line 3040
    iget-boolean v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    if-eqz v14, :cond_4e

    .line 3041
    const/4 v15, 0x1

    .line 3042
    .end local v42    # "hasChanged":Z
    .local v15, "hasChanged":Z
    const/4 v14, 0x0

    iput-boolean v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    goto :goto_32

    .line 3049
    .end local v15    # "hasChanged":Z
    .restart local v42    # "hasChanged":Z
    :cond_4e
    move/from16 v15, v42

    .end local v42    # "hasChanged":Z
    .restart local v15    # "hasChanged":Z
    :goto_32
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v14}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getNeedNotifyStatus()Z

    move-result v14

    if-eqz v14, :cond_4f

    .line 3050
    const/4 v15, 0x1

    .line 3051
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    move/from16 v42, v5

    const/4 v5, 0x0

    .end local v5    # "oldRilDataRadioTechnology":I
    .local v42, "oldRilDataRadioTechnology":I
    invoke-interface {v14, v5}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->setNeedNotifyStatus(Z)V

    goto :goto_33

    .line 3049
    .end local v42    # "oldRilDataRadioTechnology":I
    .restart local v5    # "oldRilDataRadioTechnology":I
    :cond_4f
    move/from16 v42, v5

    .line 3055
    .end local v5    # "oldRilDataRadioTechnology":I
    .restart local v42    # "oldRilDataRadioTechnology":I
    :goto_33
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v5

    .line 3056
    .local v5, "eriText":Ljava/lang/String;
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriText:Ljava/lang/String;

    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    const/16 v18, 0x1

    xor-int/lit8 v14, v14, 0x1

    .line 3057
    .local v14, "hasEriChanged":Z
    iput-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriText:Ljava/lang/String;

    .line 3061
    if-nez v15, :cond_50

    move-object/from16 v46, v5

    .end local v5    # "eriText":Ljava/lang/String;
    .local v46, "eriText":Ljava/lang/String;
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_51

    if-eqz v14, :cond_51

    goto :goto_34

    .end local v46    # "eriText":Ljava/lang/String;
    .restart local v5    # "eriText":Ljava/lang/String;
    :cond_50
    move-object/from16 v46, v5

    .line 3062
    .end local v5    # "eriText":Ljava/lang/String;
    .restart local v46    # "eriText":Ljava/lang/String;
    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSpnDisplay()V

    .line 3065
    :cond_51
    if-eqz v15, :cond_5d

    .line 3067
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    .line 3069
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    move/from16 v47, v14

    .end local v14    # "hasEriChanged":Z
    .local v47, "hasEriChanged":Z
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v5, v14}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3071
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 3073
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v14

    if-nez v14, :cond_52

    .line 3075
    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_52

    .line 3076
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v14

    .line 3077
    .local v14, "sid":I
    invoke-virtual {v4, v5, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3081
    .end local v14    # "sid":I
    :cond_52
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v14

    invoke-virtual {v9, v14, v5}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3088
    move-object v14, v5

    .line 3089
    .local v14, "localeOperator":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_54

    .line 3090
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :goto_35
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_54

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/telephony/CellIdentity;

    .line 3091
    .local v49, "cid":Landroid/telephony/CellIdentity;
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50

    if-nez v50, :cond_53

    .line 3092
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v14

    .line 3093
    goto :goto_36

    .line 3095
    .end local v49    # "cid":Landroid/telephony/CellIdentity;
    :cond_53
    goto :goto_35

    .line 3098
    :cond_54
    :goto_36
    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_55

    .line 3099
    move-object/from16 v48, v5

    .end local v5    # "operatorNumeric":Ljava/lang/String;
    .local v48, "operatorNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v49, v2

    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .local v49, "hasDataTransportPreferenceChanged":Z
    const-string v2, "localeOperator "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3103
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    goto :goto_37

    .line 3105
    .end local v48    # "operatorNumeric":Ljava/lang/String;
    .end local v49    # "hasDataTransportPreferenceChanged":Z
    .restart local v2    # "hasDataTransportPreferenceChanged":Z
    .restart local v5    # "operatorNumeric":Ljava/lang/String;
    :cond_55
    move/from16 v49, v2

    move-object/from16 v48, v5

    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .end local v5    # "operatorNumeric":Ljava/lang/String;
    .restart local v48    # "operatorNumeric":Ljava/lang/String;
    .restart local v49    # "hasDataTransportPreferenceChanged":Z
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_56

    .line 3106
    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 3108
    :cond_56
    if-eqz v6, :cond_57

    .line 3109
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    .line 3113
    :cond_57
    :goto_37
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    .line 3114
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_58

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    goto :goto_39

    .line 3115
    :cond_58
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-nez v5, :cond_5a

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_59

    goto :goto_38

    :cond_59
    const/4 v5, 0x0

    goto :goto_39

    :cond_5a
    :goto_38
    const/4 v5, 0x1

    .line 3113
    :goto_39
    invoke-virtual {v9, v2, v5}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 3117
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 3119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting ServiceState : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3128
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->isNotNotifyMergeServiceOperator(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 3129
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_3a

    .line 3130
    :cond_5b
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 3131
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3136
    :cond_5c
    :goto_3a
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v50, v2

    check-cast v50, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3137
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v51

    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getCellularDataRegState()I

    move-result v52

    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3138
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v53

    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getCellularDataRoamingType()I

    move-result v54

    .line 3139
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRegState()I

    move-result v55

    .line 3140
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getRilCellularDataRegState()I

    move-result v56

    const/16 v57, 0x0

    .line 3136
    invoke-virtual/range {v50 .. v57}, Lcom/mediatek/internal/telephony/MtkRIL;->setServiceStateToModem(IIIIIILandroid/os/Message;)V

    .line 3148
    .end local v14    # "localeOperator":Ljava/lang/String;
    .end local v48    # "operatorNumeric":Ljava/lang/String;
    move-object/from16 v2, v39

    goto :goto_3b

    .line 3150
    .end local v47    # "hasEriChanged":Z
    .end local v49    # "hasDataTransportPreferenceChanged":Z
    .restart local v2    # "hasDataTransportPreferenceChanged":Z
    .local v14, "hasEriChanged":Z
    :cond_5d
    move/from16 v49, v2

    move/from16 v47, v14

    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .end local v14    # "hasEriChanged":Z
    .restart local v47    # "hasEriChanged":Z
    .restart local v49    # "hasDataTransportPreferenceChanged":Z
    move-object/from16 v2, v39

    .end local v39    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v2, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iput-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3153
    :goto_3b
    if-nez v15, :cond_5f

    if-eqz v8, :cond_5e

    goto :goto_3c

    :cond_5e
    move-object/from16 v39, v0

    goto :goto_3d

    .line 3154
    :cond_5f
    :goto_3c
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v5

    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v14

    move-object/from16 v39, v0

    .end local v0    # "oldMergedSS":Landroid/telephony/ServiceState;
    .local v39, "oldMergedSS":Landroid/telephony/ServiceState;
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v14, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 3157
    :goto_3d
    const/4 v0, 0x0

    .line 3158
    .local v0, "shouldLogAttachedChange":Z
    const/4 v5, 0x0

    .line 3160
    .local v5, "shouldLogRatChange":Z
    if-nez v10, :cond_60

    if-eqz v11, :cond_61

    .line 3161
    :cond_60
    const/4 v0, 0x1

    .line 3164
    :cond_61
    if-eqz v12, :cond_62

    .line 3165
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    move/from16 v48, v0

    const/4 v0, 0x1

    .end local v0    # "shouldLogAttachedChange":Z
    .local v48, "shouldLogAttachedChange":Z
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/RegistrantList;

    .line 3166
    invoke-virtual {v14}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3167
    const/4 v0, 0x1

    .line 3169
    .end local v48    # "shouldLogAttachedChange":Z
    .restart local v0    # "shouldLogAttachedChange":Z
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    goto :goto_3e

    .line 3164
    :cond_62
    move/from16 v48, v0

    .line 3172
    :goto_3e
    if-eqz v7, :cond_63

    .line 3173
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logRatChange()V

    .line 3174
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    .line 3177
    :cond_63
    iget-object v14, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v14

    move/from16 v48, v0

    .end local v0    # "shouldLogAttachedChange":Z
    .restart local v48    # "shouldLogAttachedChange":Z
    array-length v0, v14

    move-object/from16 v50, v2

    const/4 v2, 0x0

    .end local v2    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v50, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    :goto_3f
    if-ge v2, v0, :cond_6b

    move/from16 v51, v0

    aget v0, v14, v2

    .line 3178
    .local v0, "transport":I
    invoke-virtual {v13, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v52

    if-eqz v52, :cond_64

    .line 3179
    const/4 v5, 0x1

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    .line 3182
    :cond_64
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v52

    if-nez v52, :cond_66

    .line 3183
    invoke-virtual {v13, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v52

    if-nez v52, :cond_66

    if-eqz v49, :cond_65

    goto :goto_40

    :cond_65
    move-object/from16 v52, v1

    goto :goto_41

    .line 3187
    :cond_66
    :goto_40
    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    .line 3188
    move-object/from16 v52, v1

    .end local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .local v52, "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyAllActiveDataConnections()V

    .line 3191
    :goto_41
    move-object/from16 v1, v45

    .end local v45    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .local v1, "hasDataAttached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v45

    if-eqz v45, :cond_67

    .line 3192
    const/16 v48, 0x1

    .line 3193
    move-object/from16 v45, v1

    .end local v1    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v45    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 3194
    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_42

    .line 3191
    .end local v45    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v1    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_67
    move-object/from16 v45, v1

    .line 3197
    .end local v1    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v45    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_68
    :goto_42
    move-object/from16 v1, v31

    .end local v31    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v1, "hasDataDetached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v31

    if-eqz v31, :cond_6a

    .line 3198
    const/16 v31, 0x1

    .line 3199
    .end local v48    # "shouldLogAttachedChange":Z
    .local v31, "shouldLogAttachedChange":Z
    move-object/from16 v53, v1

    .end local v1    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v53, "hasDataDetached":Landroid/util/SparseBooleanArray;
    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 3200
    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3177
    .end local v0    # "transport":I
    :cond_69
    move/from16 v48, v31

    goto :goto_43

    .line 3197
    .end local v31    # "shouldLogAttachedChange":Z
    .end local v53    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v0    # "transport":I
    .restart local v1    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v48    # "shouldLogAttachedChange":Z
    :cond_6a
    move-object/from16 v53, v1

    .line 3177
    .end local v0    # "transport":I
    .end local v1    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v53    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    :goto_43
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v31, v53

    goto :goto_3f

    .line 3205
    .end local v52    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v53    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v1, "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .local v31, "hasDataDetached":Landroid/util/SparseBooleanArray;
    :cond_6b
    move-object/from16 v52, v1

    move-object/from16 v53, v31

    .end local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v31    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v52    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v53    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    if-eqz v48, :cond_6c

    .line 3206
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logAttachChange()V

    .line 3209
    :cond_6c
    if-eqz v5, :cond_6d

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logRatChange()V

    .line 3213
    :cond_6d
    if-nez v28, :cond_6e

    if-eqz v7, :cond_6f

    .line 3214
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    .line 3217
    :cond_6f
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iput v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegState:I

    .line 3219
    if-nez v24, :cond_70

    if-nez v32, :cond_70

    if-nez v35, :cond_70

    if-eqz v41, :cond_71

    .line 3220
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logRoamingChange()V

    .line 3223
    :cond_71
    if-eqz v24, :cond_72

    .line 3224
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3227
    :cond_72
    if-eqz v32, :cond_73

    .line 3228
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3231
    :cond_73
    if-eqz v35, :cond_74

    .line 3232
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3235
    :cond_74
    if-eqz v41, :cond_75

    .line 3236
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3240
    :cond_75
    if-eqz v43, :cond_76

    .line 3244
    const-string v0, "notify roaming type change."

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3246
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3251
    :cond_76
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->setNetworkRoamingTypeForPhone(II)V

    .line 3255
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getCellularRegState()I

    move-result v0

    if-nez v0, :cond_78

    .line 3256
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v0, :cond_77

    .line 3257
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 3258
    :cond_77
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    .line 3263
    :cond_78
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 3264
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPendingDataCallFlag()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 3265
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 3266
    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->processPendingSetupData(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V

    .line 3269
    :cond_79
    if-eqz v27, :cond_7a

    .line 3270
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged(Landroid/telephony/CellIdentity;)V

    .line 3272
    :cond_7a
    if-eqz v8, :cond_7b

    .line 3273
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3275
    :cond_7b
    if-eqz v34, :cond_7c

    .line 3276
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3279
    :cond_7c
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3280
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 3281
    iget-boolean v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v0, :cond_7d

    iget-boolean v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v0, :cond_7d

    .line 3282
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3284
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3285
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0xea60

    .line 3284
    const-string v2, "gprs_register_check_period_ms"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3288
    .local v0, "check_period":I
    const/16 v1, 0x16

    invoke-virtual {v4, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v14, v3

    .end local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .local v14, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    int-to-long v2, v0

    invoke-virtual {v4, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3290
    .end local v0    # "check_period":I
    const/4 v0, 0x0

    goto :goto_44

    .line 3281
    .end local v14    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .restart local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    :cond_7d
    move-object v14, v3

    .end local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .restart local v14    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    const/4 v0, 0x0

    goto :goto_44

    .line 3292
    .end local v14    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .restart local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    :cond_7e
    move-object v14, v3

    .end local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .restart local v14    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_44

    .line 3279
    .end local v14    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .restart local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    :cond_7f
    move-object v14, v3

    const/4 v0, 0x0

    .line 3296
    .end local v3    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .restart local v14    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    :goto_44
    iget-boolean v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v1, :cond_80

    .line 3297
    iput-boolean v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 3298
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 3301
    :cond_80
    iget-object v0, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3303
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 3304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PollStateDone with signal notification, level ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3305
    :cond_81
    return-void
.end method

.method protected blacklist pollStateInternal(Z)V
    .locals 8
    .param p1, "modemTriggered"    # Z

    .line 2546
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    .line 2547
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 2548
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v0

    .line 2550
    .local v0, "connected":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2551
    .local v2, "support_ap_iwlan":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pollState: modemTriggered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mPollingContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v6, v4

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", RadioState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2553
    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", support_ap_iwlan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2551
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2557
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2558
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    if-eq v5, v3, :cond_4

    .line 2560
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v5, v5, v4

    add-int/lit8 v6, v2, 0x4

    if-eq v5, v6, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2561
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v5, v5, v4

    add-int/lit8 v6, v2, 0x3

    if-ne v5, v6, :cond_4

    .line 2562
    :cond_3
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 2563
    return-void

    .line 2567
    :cond_4
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2568
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aput v4, v5, v4

    .line 2570
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_5

    goto :goto_2

    .line 2572
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2573
    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewPSCellIdentity:Landroid/telephony/CellIdentity;

    .line 2574
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2575
    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 2576
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 2578
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2579
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 2583
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 2584
    goto/16 :goto_3

    .line 2587
    :cond_7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2588
    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewPSCellIdentity:Landroid/telephony/CellIdentity;

    .line 2589
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2590
    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 2591
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v5}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 2597
    if-nez p1, :cond_9

    const/16 v5, 0x12

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2598
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 2600
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2601
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 2605
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 2606
    goto/16 :goto_3

    .line 2610
    :cond_9
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->cleanMccProperties(I)V

    .line 2615
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2617
    if-nez v0, :cond_a

    .line 2618
    const-string v1, "Skip pollState due to disconnection of service"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2620
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateTurboPLMN()V

    .line 2622
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2623
    return-void

    .line 2628
    :cond_a
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2629
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2631
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2632
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2634
    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2633
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2637
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2638
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2640
    const/4 v7, 0x4

    invoke-virtual {p0, v7, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2639
    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2642
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 2643
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2644
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2646
    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2645
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2650
    :cond_b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2651
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v5, v3, v4

    add-int/2addr v5, v1

    aput v5, v3, v4

    .line 2652
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 2657
    :cond_c
    :goto_3
    return-void
.end method

.method protected blacklist refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V
    .locals 9
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "cellLoc"    # Landroid/telephony/CellLocation;
    .param p3, "fromPollState"    # Z

    .line 3562
    const-string v0, ""

    .line 3563
    .local v0, "strOperatorLong":Ljava/lang/String;
    const-string v1, ""

    .line 3564
    .local v1, "strOperatorShort":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3565
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3566
    .local v2, "brandOverride":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSpn: use brandOverride"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3568
    move-object v0, v2

    .line 3569
    move-object v1, v2

    goto :goto_2

    .line 3571
    :cond_1
    const/4 v4, -0x1

    .line 3572
    .local v4, "lac":I
    instance-of v5, p2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_2

    .line 3574
    move-object v5, p2

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    goto :goto_1

    .line 3575
    :cond_2
    instance-of v5, p2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 3579
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3580
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    .line 3581
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3579
    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 3582
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3583
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    .line 3584
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 3582
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 3587
    .end local v4    # "lac":I
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3588
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3589
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    .line 3592
    if-eqz p3, :cond_4

    .line 3593
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSsOperatorName(Landroid/telephony/ServiceState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3596
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSpn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fromPollState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mForceBroadcastServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3600
    return-void
.end method

.method public blacklist registerForDataRoamingTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 955
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 956
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 957
    return-void
.end method

.method public blacklist setDeviceRatMode(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 3395
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3396
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->calculateDeviceRatMode(I)I

    move-result v0

    .line 3397
    .local v0, "networkType":I
    if-ltz v0, :cond_0

    .line 3398
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 3400
    .end local v0    # "networkType":I
    :cond_0
    goto :goto_0

    .line 3401
    :cond_1
    const-string v0, "Invalid subId, skip setDeviceRatMode!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3403
    :goto_0
    return-void
.end method

.method protected blacklist setOperatorIdd(Ljava/lang/String;)V
    .locals 5
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 4491
    const-string v0, "setOperatorIdd: idd error"

    const-string v1, ""

    .line 4493
    .local v1, "idd":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 4494
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4493
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 4504
    :goto_0
    goto :goto_1

    .line 4501
    :catch_0
    move-exception v2

    .line 4502
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4497
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4498
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_0

    .line 4495
    :catch_2
    move-exception v2

    .line 4496
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 4506
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4507
    invoke-static {v1}, Landroid/internal/telephony/sysprop/TelephonyProperties;->operator_idp_string(Ljava/lang/String;)V

    goto :goto_2

    .line 4510
    :cond_0
    const-string v0, "+"

    invoke-static {v0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->operator_idp_string(Ljava/lang/String;)V

    .line 4512
    :goto_2
    return-void
.end method

.method protected blacklist setPowerStateToDesired(ZZZ)V
    .locals 9
    .param p1, "forEmergencyCall"    # Z
    .param p2, "isSelectedPhoneForEmergencyCall"    # Z
    .param p3, "forceApply"    # Z

    .line 3606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3608
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerOffDelayNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioDisabledByCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3612
    .local v0, "tmpLog":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3613
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3616
    .end local v0    # "tmpLog":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "alarm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    .line 3617
    const-string v0, "mAlarmSwitch == true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3618
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3619
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 3620
    .local v3, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3621
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAlarmSwitch:Z

    .line 3625
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-nez v0, :cond_9

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3626
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_9

    .line 3628
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3629
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDeviceRatMode(I)V

    .line 3631
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 3634
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_8

    .line 3635
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getEccRadioOnStatus()Z

    move-result v0

    .line 3636
    .local v0, "currEccRadioOnStatus":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEccSelectedPhone()Z

    move-result v1

    .line 3637
    .local v1, "currEccSelectedPhone":Z
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 3638
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    goto :goto_3

    .line 3640
    :cond_3
    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    .line 3641
    const-string v4, "reset all phone radio ecc adjusts to false"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3642
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 3643
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v7, :cond_4

    instance-of v8, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v8, :cond_4

    .line 3644
    move-object v8, v7

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v8, v2, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    .line 3642
    .end local v7    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3647
    :cond_5
    if-eq v0, p1, :cond_8

    .line 3648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjust forEcc, preEcc ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    const-string v4, "t"

    const-string v5, "f"

    if-eqz v0, :cond_6

    move-object v6, v4

    goto :goto_1

    :cond_6
    move-object v6, v5

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3648
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3651
    move p1, v0

    .line 3652
    move p2, v1

    .line 3656
    .end local v0    # "currEccRadioOnStatus":Z
    .end local v1    # "currEccSelectedPhone":Z
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v3, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZZZLandroid/os/Message;)V

    goto :goto_4

    .line 3657
    :cond_9
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-eqz v0, :cond_d

    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 3660
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v0, :cond_c

    .line 3661
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAlarmSwitch:Z

    if-nez v0, :cond_b

    .line 3662
    const-string v0, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3664
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 3666
    .local v1, "am":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3667
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v0, v2, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 3669
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAlarmSwitch:Z

    .line 3670
    const-string v2, "Alarm setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3671
    const/4 v2, 0x2

    .line 3672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 3671
    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3673
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 3674
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->powerOffRadioSafely()V

    goto :goto_4

    .line 3677
    :cond_c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->powerOffRadioSafely()V

    .line 3686
    :cond_d
    :goto_4
    return-void
.end method

.method public blacklist setRadioPower(ZZZZ)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "forEmergencyCall"    # Z
    .param p3, "isSelectedPhoneForEmergencyCall"    # Z
    .param p4, "forceApply"    # Z

    .line 4534
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    .line 4535
    .local v0, "radioState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPower power:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDesiredPowerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forEmergencyCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSelectedPhoneForEmergencyCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceApply:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", radioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4542
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    if-ne v1, v2, :cond_0

    if-eq v0, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    if-nez p4, :cond_2

    .line 4546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPower mDesiredPowerState is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Do nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4547
    return-void

    .line 4549
    :cond_2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    .line 4550
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setPowerStateToDesired(ZZZ)V

    .line 4551
    if-ne p2, v2, :cond_3

    .line 4552
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->forceRefreshSimState(ZI)V

    .line 4554
    :cond_3
    return-void
.end method

.method public blacklist setRadioPowerFromCarrier(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 4521
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 4524
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 4525
    return-void
.end method

.method protected blacklist setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .line 4071
    nop

    .line 4072
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4073
    .local v0, "isVoiceInService":Z
    :goto_0
    const/4 v3, 0x0

    .line 4074
    .local v3, "isInternationalRoaming":Z
    const-string v4, " is in operator defined international roaming list"

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v0, :cond_8

    .line 4075
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4076
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4078
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4079
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 4082
    :cond_1
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4087
    :goto_1
    nop

    .line 4088
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 4087
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->IsInternationalRoamingException(Ljava/lang/String;)Z

    move-result v3

    .line 4090
    if-eqz v3, :cond_8

    .line 4091
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4093
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_5

    .line 4098
    :cond_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 4101
    .local v7, "intRoamingIndicators":[I
    if-eqz v7, :cond_5

    array-length v8, v7

    if-lez v8, :cond_5

    .line 4103
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4104
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v8

    .line 4105
    .local v8, "curRoamingIndicator":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v7

    if-ge v9, v10, :cond_4

    .line 4106
    aget v10, v7, v9

    if-ne v8, v10, :cond_3

    .line 4107
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4109
    goto :goto_3

    .line 4105
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4112
    .end local v8    # "curRoamingIndicator":I
    .end local v9    # "i":I
    :cond_4
    :goto_3
    goto :goto_4

    .line 4114
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4115
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_4

    .line 4118
    :cond_6
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4122
    .end local v7    # "intRoamingIndicators":[I
    :goto_4
    goto :goto_5

    .line 4124
    :cond_7
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4127
    :cond_8
    :goto_5
    nop

    .line 4128
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v7

    if-nez v7, :cond_9

    move v7, v2

    goto :goto_6

    :cond_9
    move v7, v1

    .line 4129
    .local v7, "isDataInService":Z
    :goto_6
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v8

    .line 4130
    .local v8, "dataRegType":I
    if-eqz v7, :cond_12

    .line 4131
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v9

    if-nez v9, :cond_a

    .line 4132
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto/16 :goto_8

    .line 4134
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4135
    invoke-static {v8}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4136
    if-eqz v0, :cond_b

    .line 4138
    nop

    .line 4139
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 4138
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_8

    .line 4146
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4147
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_7

    .line 4150
    :cond_c
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 4155
    :goto_7
    nop

    .line 4156
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4155
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->IsInternationalRoamingException(Ljava/lang/String;)Z

    move-result v3

    .line 4158
    if-eqz v3, :cond_12

    .line 4159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_8

    .line 4167
    :cond_d
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_8

    .line 4170
    :cond_e
    invoke-static {v8}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4171
    if-eqz v0, :cond_f

    .line 4173
    nop

    .line 4174
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 4173
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_8

    .line 4178
    :cond_f
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_8

    .line 4183
    :cond_10
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4184
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_8

    .line 4187
    :cond_11
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 4194
    :cond_12
    :goto_8
    return-void
.end method

.method public blacklist setSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 4915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignalStrength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4916
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 4917
    return-void
.end method

.method protected blacklist setSignalStrengthDefaultValues()V
    .locals 2

    .line 4755
    new-instance v0, Lmediatek/telephony/MtkSignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-direct {v0, v1}, Lmediatek/telephony/MtkSignalStrength;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrengthUpdatedTime:J

    .line 4757
    return-void
.end method

.method public blacklist unregisterForDataRoamingTypeChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 960
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 961
    return-void
.end method

.method public blacklist updatePhoneType()V
    .locals 9

    .line 779
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 795
    :cond_2
    nop

    .line 796
    const-string v0, "persist.vendor.mtk_hvolte_indicator"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 797
    .local v0, "skipDetachNotify":Z
    :goto_0
    if-nez v0, :cond_5

    .line 800
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_6

    aget v6, v3, v5

    .line 801
    .local v6, "transport":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_4

    .line 802
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v6}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 804
    .local v7, "nrs":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    .line 805
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 806
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v8}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 800
    .end local v6    # "transport":I
    .end local v7    # "nrs":Landroid/telephony/NetworkRegistrationInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 812
    :cond_5
    const-string v3, "hvolte register, skip notify detach registrants"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 816
    :cond_6
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    .line 818
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    goto :goto_2

    .line 825
    :cond_7
    const-string v3, "updatePhoneType, not reset mSS"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 820
    :cond_8
    :goto_2
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 821
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 822
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 828
    :goto_3
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoReqTime:J

    .line 830
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 831
    new-instance v4, Lmediatek/telephony/MtkSignalStrength;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-direct {v4, v5}, Lmediatek/telephony/MtkSignalStrength;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 832
    new-instance v4, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v4}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 833
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 834
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReportedGprsNoReg:Z

    .line 835
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 836
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMin:Ljava/lang/String;

    .line 837
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 838
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsMinInfoReady:Z

    .line 839
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 840
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 841
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 842
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewPSCellIdentity:Landroid/telephony/CellIdentity;

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrengthUpdatedTime:J

    .line 846
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelPollState()V

    .line 848
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    const-string v5, "No isImeiLocked"

    if-eqz v4, :cond_c

    .line 850
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v2, :cond_9

    .line 851
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 854
    :cond_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 855
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 856
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 859
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x65

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 860
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x6a

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 861
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x68

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNetworkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 862
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x69

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForModulation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 864
    const-string v2, "ro.vendor.mtk_femto_cell_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 865
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x66

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 869
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    .line 870
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isImeiLocked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 871
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x6b

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 872
    :catch_0
    move-exception v2

    .line 874
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 875
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :goto_4
    goto/16 :goto_7

    .line 879
    :cond_c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 880
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 882
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 885
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 886
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 887
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 890
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 891
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetInvalidSimInfo(Landroid/os/Handler;)V

    .line 892
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkEvent(Landroid/os/Handler;)V

    .line 893
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForModulation(Landroid/os/Handler;)V

    .line 896
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    .line 897
    invoke-interface {v4}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isImeiLocked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 898
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIMEILock(Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 902
    :cond_d
    goto :goto_5

    .line 899
    :catch_1
    move-exception v4

    .line 901
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 904
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 905
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v5, 0x10

    invoke-virtual {v4, p0, v5, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 908
    :cond_e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x27

    invoke-static {v4, v5, p0, v6, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 910
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 913
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x28

    invoke-interface {v2, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 914
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x25

    invoke-interface {v2, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 916
    new-instance v2, Lcom/android/internal/telephony/HbpcdUtils;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 918
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOtaspState()V

    .line 923
    :goto_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onUpdateIccAvailability()V

    .line 925
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    .line 930
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 931
    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 933
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logPhoneTypeChange()V

    .line 936
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    .line 938
    if-nez v0, :cond_10

    .line 940
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v2

    array-length v3, v2

    :goto_8
    if-ge v1, v3, :cond_10

    aget v4, v2, v1

    .line 941
    .local v4, "transport":I
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    .line 940
    .end local v4    # "transport":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 944
    :cond_10
    return-void
.end method

.method protected blacklist updateRoamingState()V
    .locals 7

    .line 1550
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1551
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const-string v2, "updateRoamingState: carrier config override set roaming:"

    const/4 v3, 0x1

    const-string v4, "updateRoamingState: carrier config override always on home network"

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    .line 1566
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmVoiceRoaming:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmDataRoaming:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :cond_1
    :goto_0
    move v1, v3

    .line 1568
    .local v1, "roaming":Z
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1569
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1570
    :cond_2
    const/4 v1, 0x0

    .line 1572
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1573
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1574
    const/4 v1, 0x0

    goto :goto_1

    .line 1575
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1577
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1576
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1578
    const/4 v1, 0x0

    goto :goto_1

    .line 1579
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1581
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1580
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1582
    const/4 v1, 0x1

    .line 1587
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->updateOperatorRoaming(Landroid/telephony/ServiceState;Ljava/lang/String;Z)Z

    move-result v1

    .line 1589
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 1590
    .local v2, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IOplusUiccManager;->isVsimEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1591
    const-string v3, "Vsim is Enabled, set roaming = false."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1592
    const/4 v1, 0x0

    .line 1597
    :cond_7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->checkCtMacauSimRoamingState(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1598
    const/4 v1, 0x1

    .line 1601
    :cond_8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1602
    .end local v1    # "roaming":Z
    .end local v2    # "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    goto/16 :goto_4

    .line 1603
    :cond_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, "systemId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1605
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingOff()V

    goto :goto_3

    .line 1607
    :cond_a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v4

    const-string v6, ", "

    if-nez v4, :cond_d

    .line 1608
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    .line 1612
    :cond_b
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1613
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1614
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1615
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1614
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingOn()V

    goto :goto_3

    .line 1609
    :cond_d
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState: carrier config override set non-roaming:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1610
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1609
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingOff()V

    .line 1621
    :cond_e
    :goto_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->checkCtMacauSimRoamingState(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1622
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingOn()V

    .line 1625
    :cond_f
    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_10

    .line 1626
    const-string v2, "telephony.test.forceRoaming"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1627
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1630
    .end local v1    # "systemId":Ljava/lang/String;
    :cond_10
    :goto_4
    return-void
.end method

.method protected blacklist updateSpnDisplayLegacy()V
    .locals 25

    .line 1921
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1922
    .local v0, "spn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1923
    .local v2, "dataSpn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1924
    .local v3, "showSpn":Z
    const/4 v4, 0x0

    .line 1925
    .local v4, "plmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1927
    .local v5, "showPlmn":Z
    const/4 v6, 0x0

    .line 1928
    .local v6, "wfcVoiceSpnFormat":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1929
    .local v7, "wfcDataSpnFormat":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1930
    .local v8, "wfcFlightSpnFormat":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v9

    .line 1931
    .local v9, "combinedRegState":I
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v9, :cond_6

    .line 1940
    const/4 v10, 0x0

    .line 1941
    .local v10, "voiceIdx":I
    const/4 v11, 0x0

    .line 1942
    .local v11, "dataIdx":I
    const/4 v12, -0x1

    .line 1943
    .local v12, "flightModeIdx":I
    const/4 v13, 0x0

    .line 1944
    .local v13, "useRootLocale":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v14

    .line 1945
    .local v14, "bundle":Landroid/os/PersistableBundle;
    const-string v15, "wfc_spn_format_idx_int"

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1946
    const-string v15, "wfc_data_spn_format_idx_int"

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1948
    const-string v15, "wfc_flight_mode_spn_format_idx_int"

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1950
    nop

    .line 1951
    const-string v15, "wfc_spn_use_root_locale"

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 1952
    iget-object v15, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "spn":Ljava/lang/String;
    .local v16, "spn":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1953
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    .line 1952
    invoke-static {v15, v0, v13}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x10700a9

    .line 1954
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1956
    .local v0, "wfcSpnFormats":[Ljava/lang/String;
    if-ltz v10, :cond_1

    array-length v15, v0

    if-lt v10, v15, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v2

    goto :goto_1

    .line 1957
    :cond_1
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "dataSpn":Ljava/lang/String;
    .local v17, "dataSpn":Ljava/lang/String;
    const-string v2, "updateSpnDisplay: KEY_WFC_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1958
    const/4 v10, 0x0

    .line 1960
    :goto_1
    if-ltz v11, :cond_2

    array-length v2, v0

    if-lt v11, v2, :cond_3

    .line 1961
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpnDisplay: KEY_WFC_DATA_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1963
    const/4 v11, 0x0

    .line 1965
    :cond_3
    if-ltz v12, :cond_4

    array-length v2, v0

    if-lt v12, v2, :cond_5

    .line 1968
    :cond_4
    move v12, v10

    .line 1971
    :cond_5
    aget-object v6, v0, v10

    .line 1972
    aget-object v7, v0, v11

    .line 1973
    aget-object v8, v0, v12

    goto :goto_2

    .line 1931
    .end local v10    # "voiceIdx":I
    .end local v11    # "dataIdx":I
    .end local v12    # "flightModeIdx":I
    .end local v13    # "useRootLocale":Z
    .end local v14    # "bundle":Landroid/os/PersistableBundle;
    .end local v16    # "spn":Ljava/lang/String;
    .end local v17    # "dataSpn":Ljava/lang/String;
    .local v0, "spn":Ljava/lang/String;
    .restart local v2    # "dataSpn":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 1977
    .end local v0    # "spn":Ljava/lang/String;
    .end local v2    # "dataSpn":Ljava/lang/String;
    .restart local v16    # "spn":Ljava/lang/String;
    .restart local v17    # "dataSpn":Ljava/lang/String;
    :goto_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v2, "\'"

    const-string v10, "oppo_lockscreen_carrier_default"

    const-string v11, ""

    const/4 v14, 0x1

    if-eqz v0, :cond_1d

    .line 1998
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v15

    .line 2001
    .local v15, "simNumeric":Ljava/lang/String;
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2002
    .local v13, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v12

    .line 2003
    .local v12, "rule":I
    const/4 v0, 0x0

    .line 2004
    .local v0, "noService":Z
    if-eq v9, v14, :cond_a

    const/4 v14, 0x2

    if-ne v9, v14, :cond_7

    goto :goto_4

    .line 2029
    :cond_7
    if-nez v9, :cond_9

    .line 2031
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v2

    .line 2034
    .end local v4    # "plmn":Ljava/lang/String;
    .local v2, "plmn":Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getPlmn()Ljava/lang/String;

    move-result-object v2

    .line 2036
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    and-int/lit8 v4, v12, 0x2

    if-ne v4, v14, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 2039
    .end local v5    # "showPlmn":Z
    .local v4, "showPlmn":Z
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: rawPlmn = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    move/from16 v22, v3

    move v3, v0

    goto/16 :goto_7

    .line 2042
    .end local v2    # "plmn":Ljava/lang/String;
    .local v4, "plmn":Ljava/lang/String;
    .restart local v5    # "showPlmn":Z
    :cond_9
    const/4 v2, 0x1

    .line 2049
    .end local v5    # "showPlmn":Z
    .local v2, "showPlmn":Z
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10, v11}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->getOemRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2051
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " plmn="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    move/from16 v22, v3

    move v3, v0

    move-object/from16 v24, v4

    move v4, v2

    move-object/from16 v2, v24

    goto :goto_7

    .line 2006
    .end local v2    # "showPlmn":Z
    .restart local v5    # "showPlmn":Z
    :cond_a
    :goto_4
    const/4 v5, 0x1

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->shouldForceDisplayNoService()Z

    move-result v14

    if-eqz v14, :cond_b

    iget-boolean v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSimReady:Z

    if-nez v14, :cond_b

    const/4 v14, 0x1

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    .line 2010
    .local v14, "forceDisplayNoService":Z
    :goto_5
    if-nez v14, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/Phone;->isEmergencyCallOnly()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 2012
    move/from16 v21, v0

    .end local v0    # "noService":Z
    .local v21, "noService":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v22, v3

    .end local v3    # "showSpn":Z
    .local v22, "showSpn":Z
    const v3, 0x10402eb

    .line 2013
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v3, v21

    .end local v4    # "plmn":Ljava/lang/String;
    .local v0, "plmn":Ljava/lang/String;
    goto :goto_6

    .line 2010
    .end local v21    # "noService":Z
    .end local v22    # "showSpn":Z
    .local v0, "noService":Z
    .restart local v3    # "showSpn":Z
    .restart local v4    # "plmn":Ljava/lang/String;
    :cond_c
    move/from16 v21, v0

    move/from16 v22, v3

    .line 2016
    .end local v0    # "noService":Z
    .end local v3    # "showSpn":Z
    .restart local v21    # "noService":Z
    .restart local v22    # "showSpn":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1040453

    .line 2017
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2019
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2020
    .end local v4    # "plmn":Ljava/lang/String;
    .local v0, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2025
    .end local v21    # "noService":Z
    .local v3, "noService":Z
    :goto_6
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10, v11}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->getOemRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2029
    .end local v14    # "forceDisplayNoService":Z
    move-object v2, v0

    move v4, v5

    .line 2093
    .end local v0    # "plmn":Ljava/lang/String;
    .end local v5    # "showPlmn":Z
    .local v2, "plmn":Ljava/lang/String;
    .local v4, "showPlmn":Z
    :goto_7
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsImeiLock:Z

    if-eqz v0, :cond_d

    .line 2094
    const-string v2, ""

    .line 2102
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .line 2106
    .end local v16    # "spn":Ljava/lang/String;
    .local v5, "spn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2107
    const-string v0, "PLMN and SPN both null, simNumeric"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2108
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v0, v15, v10}, Landroid/telephony/OplusTelephonyFunction;->oplusGetPlmnOverride(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v2

    .line 2111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isVowifiRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2112
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLac()I

    move-result v0

    goto :goto_8

    :cond_e
    const/4 v0, -0x1

    .line 2113
    .local v0, "tmplac":I
    :goto_8
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v11

    if-ltz v0, :cond_f

    move v14, v0

    goto :goto_9

    :cond_f
    const/4 v14, 0x0

    :goto_9
    move/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "tmplac":I
    .local v16, "tmplac":I
    invoke-virtual {v10, v11, v15, v0, v14}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 2117
    .end local v16    # "tmplac":I
    :cond_10
    move-object v10, v5

    .line 2118
    .end local v17    # "dataSpn":Ljava/lang/String;
    .local v10, "dataSpn":Ljava/lang/String;
    if-nez v3, :cond_11

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    and-int/lit8 v0, v12, 0x1

    const/4 v11, 0x1

    if-ne v0, v11, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    move v11, v0

    .line 2121
    .end local v22    # "showSpn":Z
    .local v11, "showSpn":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: rawSpn = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2123
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2124
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2129
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v14, 0x3

    if-ne v0, v14, :cond_12

    .line 2130
    move-object v6, v8

    .line 2133
    :cond_12
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2134
    .local v0, "originalSpn":Ljava/lang/String;
    move/from16 v21, v3

    const/4 v14, 0x1

    .end local v3    # "noService":Z
    .restart local v21    # "noService":Z
    new-array v3, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v3, v16

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2135
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v0, v3, v16

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2136
    .end local v10    # "dataSpn":Ljava/lang/String;
    .local v3, "dataSpn":Ljava/lang/String;
    const/4 v11, 0x1

    .line 2137
    const/4 v4, 0x0

    .line 2138
    .end local v0    # "originalSpn":Ljava/lang/String;
    move-object v10, v3

    goto :goto_c

    .line 2124
    .end local v21    # "noService":Z
    .local v3, "noService":Z
    .restart local v10    # "dataSpn":Ljava/lang/String;
    :cond_13
    move/from16 v21, v3

    .end local v3    # "noService":Z
    .restart local v21    # "noService":Z
    goto :goto_b

    .line 2123
    .end local v21    # "noService":Z
    .restart local v3    # "noService":Z
    :cond_14
    move/from16 v21, v3

    .line 2138
    .end local v3    # "noService":Z
    .restart local v21    # "noService":Z
    :goto_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2140
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2141
    .local v3, "originalPlmn":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v14, v0

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2142
    .end local v3    # "originalPlmn":Ljava/lang/String;
    :cond_15
    goto :goto_c

    :cond_16
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_17

    if-eqz v4, :cond_15

    .line 2143
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2145
    :cond_17
    const/4 v5, 0x0

    .line 2146
    const/4 v11, 0x0

    .line 2150
    :cond_18
    :goto_c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2151
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_19

    .line 2152
    const/4 v5, 0x0

    .line 2153
    const/4 v11, 0x0

    .line 2157
    :cond_19
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needSpnRuleShowPlmnOnly()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "origin showSpn:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " showPlmn:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " rule:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    const/4 v0, 0x0

    .line 2161
    .end local v11    # "showSpn":Z
    .local v0, "showSpn":Z
    const/4 v3, 0x1

    .line 2162
    .end local v4    # "showPlmn":Z
    .local v3, "showPlmn":Z
    const/4 v4, 0x2

    move v11, v0

    move v12, v4

    move v4, v3

    .line 2166
    .end local v0    # "showSpn":Z
    .end local v3    # "showPlmn":Z
    .restart local v4    # "showPlmn":Z
    .restart local v11    # "showSpn":Z
    :cond_1a
    goto :goto_d

    .line 2164
    :catch_0
    move-exception v0

    .line 2165
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2170
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_d
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_1b

    .line 2171
    const/4 v3, 0x3

    if-ne v12, v3, :cond_1b

    .line 2173
    const/4 v0, 0x0

    .line 2174
    .end local v11    # "showSpn":Z
    .local v0, "showSpn":Z
    const/4 v5, 0x0

    move v11, v0

    .line 2179
    .end local v0    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :cond_1b
    goto :goto_e

    .line 2177
    :catch_1
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2183
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_e
    if-nez v4, :cond_1c

    if-nez v11, :cond_1c

    .line 2184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2185
    const/4 v4, 0x1

    .line 2188
    .end local v12    # "rule":I
    .end local v13    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v15    # "simNumeric":Ljava/lang/String;
    .end local v21    # "noService":Z
    :cond_1c
    goto/16 :goto_18

    .line 2189
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v10    # "dataSpn":Ljava/lang/String;
    .end local v11    # "showSpn":Z
    .local v3, "showSpn":Z
    .local v4, "plmn":Ljava/lang/String;
    .local v5, "showPlmn":Z
    .local v16, "spn":Ljava/lang/String;
    .restart local v17    # "dataSpn":Ljava/lang/String;
    :cond_1d
    move/from16 v22, v3

    .end local v3    # "showSpn":Z
    .restart local v22    # "showSpn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorNameFromEri()Ljava/lang/String;

    move-result-object v3

    .line 2190
    .local v3, "eriText":Ljava/lang/String;
    if-eqz v3, :cond_1e

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v3}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 2193
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOperatorNameFromCarrierConfig()V

    .line 2200
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v12, v13, v14}, Landroid/telephony/OplusTelephonyFunction;->oplusGetPlmnOverride(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v4

    .line 2202
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSpnDisplay: cdma rawPlmn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2203
    const/4 v5, 0x0

    .line 2205
    if-eqz v4, :cond_1f

    const/16 v18, 0x1

    goto :goto_f

    :cond_1f
    const/16 v18, 0x0

    :goto_f
    move/from16 v5, v18

    .line 2207
    if-eqz v4, :cond_20

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 2208
    const/4 v4, 0x0

    .line 2212
    :cond_20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_21

    .line 2215
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 2216
    .local v12, "originalPlmn":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v12, v14, v18

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v12    # "originalPlmn":Ljava/lang/String;
    goto :goto_10

    .line 2212
    :cond_21
    const/16 v18, 0x0

    .line 2217
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_22

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSpnDisplay: overwriting plmn from "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to null as radio state is off"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2223
    const/4 v4, 0x0

    goto :goto_11

    .line 2217
    :cond_22
    :goto_10
    nop

    .line 2226
    :goto_11
    const/4 v0, 0x1

    if-eq v9, v0, :cond_24

    const/4 v12, 0x3

    if-ne v9, v12, :cond_23

    goto :goto_12

    :cond_23
    move-object v2, v4

    goto :goto_13

    .line 2229
    :cond_24
    :goto_12
    const/4 v5, 0x1

    .line 2238
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v11}, Lcom/android/internal/telephony/util/OemTelephonyUtils;->getOemRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2241
    .end local v4    # "plmn":Ljava/lang/String;
    .local v0, "plmn":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: radio is on but out of svc, set plmn=\'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    move-object v2, v0

    .line 2259
    .end local v0    # "plmn":Ljava/lang/String;
    .restart local v2    # "plmn":Ljava/lang/String;
    :goto_13
    const-string v4, ""

    .line 2260
    .end local v16    # "spn":Ljava/lang/String;
    .local v4, "spn":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2263
    .end local v22    # "showSpn":Z
    .local v10, "showSpn":Z
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2264
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 2265
    .local v0, "rule":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 2266
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_25

    and-int/lit8 v11, v0, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_25

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2269
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_25

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2270
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    if-nez v11, :cond_25

    const/4 v11, 0x1

    goto :goto_14

    :cond_25
    move/from16 v11, v18

    :goto_14
    move v10, v11

    .line 2271
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CDMA]updateSpnDisplay: rule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", spn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", showSpn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2277
    .end local v0    # "rule":I
    :cond_26
    if-eqz v2, :cond_27

    const/4 v13, 0x1

    goto :goto_15

    :cond_27
    move/from16 v13, v18

    :goto_15
    move v5, v13

    .line 2280
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2281
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v11, 0x3

    if-eq v0, v11, :cond_29

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2282
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_29

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2283
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2284
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_28

    goto :goto_16

    .line 2288
    :cond_28
    const/4 v0, 0x1

    .line 2289
    .end local v10    # "showSpn":Z
    .local v0, "showSpn":Z
    const/4 v5, 0x0

    move v11, v0

    goto :goto_17

    .line 2285
    .end local v0    # "showSpn":Z
    .restart local v10    # "showSpn":Z
    :cond_29
    :goto_16
    const/4 v0, 0x0

    .line 2286
    .end local v10    # "showSpn":Z
    .restart local v0    # "showSpn":Z
    const/4 v5, 0x1

    move v11, v0

    goto :goto_17

    .line 2280
    .end local v0    # "showSpn":Z
    .restart local v10    # "showSpn":Z
    :cond_2a
    move v11, v10

    .line 2295
    .end local v10    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :goto_17
    move-object/from16 v10, v17

    move/from16 v24, v5

    move-object v5, v4

    move/from16 v4, v24

    goto :goto_18

    .line 2293
    .end local v11    # "showSpn":Z
    .restart local v10    # "showSpn":Z
    :catch_2
    move-exception v0

    move v11, v10

    move/from16 v24, v5

    move-object v5, v4

    move/from16 v4, v24

    .line 2294
    .end local v10    # "showSpn":Z
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v4, "showPlmn":Z
    .local v5, "spn":Ljava/lang/String;
    .restart local v11    # "showSpn":Z
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object/from16 v10, v17

    .line 2299
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "eriText":Ljava/lang/String;
    .end local v17    # "dataSpn":Ljava/lang/String;
    .local v10, "dataSpn":Ljava/lang/String;
    :goto_18
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v4

    move/from16 v22, v11

    invoke-interface/range {v18 .. v23}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->updateSpnDisplayExt(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 2302
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getOemSpn()Ljava/lang/String;

    move-result-object v0

    .line 2303
    .end local v5    # "spn":Ljava/lang/String;
    .local v0, "spn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSpnDisplayLegacy:getOemSpn() spn= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2305
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getPlmnResult()Ljava/lang/String;

    move-result-object v2

    .line 2306
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getShowPlmnResult()Z

    move-result v3

    .line 2307
    .end local v4    # "showPlmn":Z
    .local v3, "showPlmn":Z
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getShowSpnResult()Z

    move-result v4

    .line 2310
    .end local v11    # "showSpn":Z
    .local v4, "showSpn":Z
    new-instance v5, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 2311
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v5

    .line 2312
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v5

    .line 2313
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v5

    .line 2314
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v5

    .line 2315
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v5

    .line 2316
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v5

    .line 2310
    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySpnDisplayUpdate(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)V

    .line 2317
    const-string v5, "updateSpnDisplayLegacy-"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2318
    return-void
.end method

.method public blacklist willLocatedPlmnChange()Z
    .locals 4

    .line 3412
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    .line 3413
    .local v0, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3414
    :cond_0
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getCellularRegState()I

    move-result v2

    if-nez v2, :cond_2

    .line 3415
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3417
    const/4 v1, 0x1

    return v1

    .line 3419
    :cond_1
    return v1

    .line 3422
    :cond_2
    return v1

    .line 3413
    :cond_3
    :goto_0
    return v1
.end method
