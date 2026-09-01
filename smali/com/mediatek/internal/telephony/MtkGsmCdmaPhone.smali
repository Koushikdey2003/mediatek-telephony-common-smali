.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;,
        Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;,
        Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field public static final blacklist ACT_TYPE_GSM:Ljava/lang/String; = "0"

.field public static final blacklist ACT_TYPE_LTE:Ljava/lang/String; = "7"

.field public static final blacklist ACT_TYPE_NR:Ljava/lang/String; = "11"

.field public static final blacklist ACT_TYPE_UTRAN:Ljava/lang/String; = "2"

.field private static final blacklist CFB_KEY:Ljava/lang/String; = "CFB"

.field private static final blacklist CFNRC_KEY:Ljava/lang/String; = "CFNRC"

.field private static final blacklist CFNR_KEY:Ljava/lang/String; = "CFNR"

.field private static final blacklist CFU_TIME_SLOT:Ljava/lang/String; = "persist.vendor.radio.cfu.timeslot."

.field private static final blacklist DBG:Z = true

.field protected static final blacklist EVENT_CIPHER_INDICATION:I = 0x3e8

.field protected static final blacklist EVENT_CRSS_IND:I = 0x3eb

.field protected static final blacklist EVENT_GET_APC_INFO:I = 0x3e9

.field public static final blacklist EVENT_GET_CALL_BARRING_COMPLETE:I = 0x7d6

.field public static final blacklist EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6d

.field public static final blacklist EVENT_GET_CALL_WAITING_DONE:I = 0x12d

.field public static final blacklist EVENT_GET_CLIR_COMPLETE:I = 0x7d4

.field public static final blacklist EVENT_IMS_UT_CSFB:I = 0x7d1

.field public static final blacklist EVENT_IMS_UT_DONE:I = 0x7d0

.field protected static final blacklist EVENT_MTK_BASE:I = 0x3e8

.field protected static final blacklist EVENT_OEM_RAW_URC:I = 0x3ed

.field public static final blacklist EVENT_SET_CALL_BARRING_COMPLETE:I = 0x7d5

.field public static final blacklist EVENT_SET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6e

.field public static final blacklist EVENT_SET_CALL_WAITING_DONE:I = 0x12e

.field protected static final blacklist EVENT_SET_SS_PROPERTY:I = 0x3ec

.field protected static final blacklist EVENT_SSN_EX:I = 0x3ea

.field public static final blacklist EVENT_UNSOL_RADIO_CAPABILITY_CHANGED:I = 0x6f

.field public static final blacklist GSM_INDICATOR:Ljava/lang/String; = "2G"

.field public static final blacklist IMS_DEREG_OFF:Ljava/lang/String; = "0"

.field public static final blacklist IMS_DEREG_ON:Ljava/lang/String; = "1"

.field public static final blacklist IMS_DEREG_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.imsdereg"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "MtkGsmCdmaPhone"

.field public static final blacklist LTE_INDICATOR:Ljava/lang/String; = "4G"

.field public static final blacklist MESSAGE_SET_CF:I = 0x1

.field public static final blacklist MTK_SVLTE_SUPPORT:Z

.field public static final blacklist NR_INDICATOR:Ljava/lang/String; = "5G"

.field public static final blacklist NT_MODE_LTE_GSM:I = 0x65

.field public static final blacklist NT_MODE_LTE_TDD_ONLY:I = 0x66

.field private static final blacklist OPERATION_TIME_OUT_MILLIS:I = 0xbb8

.field private static final blacklist OPPO_ALREADY_IN_AUTO_SELECTION:I = 0x1

.field private static final blacklist PROPERTY_DISABLE_AUTO_RETURN_RPLMN:Ljava/lang/String; = "persist.vendor.radio.disable_auto_return_rplmn"

.field private static final blacklist PROPERTY_MODE_BOOL:I = 0x1

.field private static final blacklist PROPERTY_MODE_INT:I = 0x0

.field private static final blacklist PROPERTY_MODE_STRING:I = 0x2

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final blacklist PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final blacklist PROP_MTK_CDMA_LTE_MODE:Ljava/lang/String; = "ro.vendor.mtk_c2k_lte_mode"

.field private static final blacklist PROP_VZW_DEVICE_TYPE:Ljava/lang/String; = "persist.vendor.vzw_device_type"

.field public static final blacklist REASON_CARRIER_CONFIG_LOADED:Ljava/lang/String; = "carrierConfigLoaded"

.field public static final blacklist REASON_DATA_ALLOWED:Ljava/lang/String; = "dataAllowed"

.field public static final blacklist REASON_DATA_SETUP_SSC_MODE3:Ljava/lang/String; = "dataSetupSscMode3"

.field public static final blacklist REASON_FDN_DISABLED:Ljava/lang/String; = "FdnDisabled"

.field public static final blacklist REASON_FDN_ENABLED:Ljava/lang/String; = "FdnEnabled"

.field public static final blacklist REASON_MD_DATA_RETRY_COUNT_RESET:Ljava/lang/String; = "modemDataCountReset"

.field public static final blacklist REASON_PCSCF_ADDRESS_FAILED:Ljava/lang/String; = "pcscfFailed"

.field public static final blacklist REASON_RA_FAILED:Ljava/lang/String; = "raFailed"

.field public static final blacklist REASON_RESUME_PENDING_DATA:Ljava/lang/String; = "resumePendingData"

.field private static final blacklist SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.sc"

.field public static final blacklist TBCW_NOT_VOLTE_USER:I = 0x2

.field public static final blacklist TBCW_UNKNOWN:I = 0x0

.field public static final blacklist TBCW_VOLTE_USER:I = 0x1

.field public static final blacklist TBCW_WITH_CS:I = 0x3

.field public static final blacklist UTRAN_INDICATOR:Ljava/lang/String; = "3G"


# instance fields
.field private blacklist enableFakeSS:Z

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCSFallbackMode:I

.field private blacklist mCachedCrssn:Landroid/os/AsyncResult;

.field private blacklist mCachedSsn:Landroid/os/AsyncResult;

.field blacklist mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

.field protected final blacklist mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

.field private blacklist mEccRadioOnStatus:Z

.field private blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private blacklist mIsEccSelectedPhone:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field public blacklist mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private blacklist mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

.field public blacklist mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

.field private blacklist mNewVoiceTech:I

.field protected final blacklist mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

.field private blacklist mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

.field private blacklist mTbcwMode:I

.field blacklist mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private blacklist mWifiIsEnabledBeforeE911:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 325
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 333
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->MTK_SVLTE_SUPPORT:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 478
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 479
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 434
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 292
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 296
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 298
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    .line 303
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    .line 306
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    .line 308
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    .line 374
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    .line 377
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 381
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 384
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    .line 398
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    .line 409
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 412
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 547
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor: sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object v1, p2

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 439
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 442
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 443
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->starThread()V

    .line 447
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "telephonyCustomizationFactory":Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    nop

    .line 452
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    .line 453
    nop

    .line 454
    invoke-virtual {v0, p5}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSelfActivationInstance(I)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    .line 455
    nop

    .line 456
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->setContext(Landroid/content/Context;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v1

    .line 457
    invoke-interface {v1, p2}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->setCommandsInterface(Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v1

    .line 458
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->buildParams()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    .line 462
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->makeCpaDcTracker(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 464
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 469
    :cond_0
    invoke-virtual {v0, p1, p5, p2}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSCBMManager(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    .line 472
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 473
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 222
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 222
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 222
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 222
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    return v0
.end method

.method private blacklist getMainCapabilityPhoneId()I
    .locals 2

    .line 4877
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 4878
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 4879
    :cond_0
    const/4 v0, -0x1

    .line 4881
    :cond_1
    return v0
.end method

.method private blacklist handleCfuInTimeSlotQueryResult([Lcom/mediatek/internal/telephony/MtkCallForwardInfo;)V
    .locals 6
    .param p1, "infos"    # [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 2859
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2860
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_4

    .line 2861
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    .line 2866
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p1

    .local v4, "s":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 2867
    aget-object v5, p1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 2868
    aget-object v5, p1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    if-ne v5, v2, :cond_1

    move v1, v2

    :cond_1
    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2870
    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 2871
    goto :goto_2

    .line 2866
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2864
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2876
    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist handleImsUtCsfb(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 4040
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    .line 4041
    .local v10, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v10, :cond_0

    .line 4042
    const-string v0, "handleImsUtCsfb: Error MtkSuppSrvRequest null!"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    return-void

    .line 4046
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 4065
    :cond_1
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getRequestCode()I

    move-result v12

    .line 4066
    .local v12, "requestCode":I
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4067
    const/4 v0, 0x3

    if-eq v12, v0, :cond_5

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4

    packed-switch v12, :pswitch_data_0

    .line 4153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsUtCsfb: invalid requestCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4141
    :pswitch_0
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4142
    .local v2, "dialString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: dialString = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4149
    goto/16 :goto_1

    .line 4146
    :catch_0
    move-exception v0

    .line 4147
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: CallStateException!"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 4150
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    goto/16 :goto_1

    .line 4106
    .end local v2    # "dialString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CW"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingInternal(Landroid/os/Message;)V

    .line 4108
    goto/16 :goto_1

    .line 4112
    :pswitch_2
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CW"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4114
    .local v0, "enableState":I
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    move v1, v2

    .line 4115
    .local v1, "enable":Z
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingInternal(ZLandroid/os/Message;)V

    .line 4116
    goto/16 :goto_1

    .line 4070
    .end local v0    # "enableState":I
    .end local v1    # "enable":Z
    :pswitch_3
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CF"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4072
    .local v0, "commandInterfaceCFReason":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4073
    .local v1, "serviceClass":I
    nop

    .line 4074
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v2

    .line 4073
    invoke-virtual {v8, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionInternal(IILandroid/os/Message;)V

    .line 4075
    goto/16 :goto_1

    .line 4079
    .end local v0    # "commandInterfaceCFReason":I
    .end local v1    # "serviceClass":I
    :pswitch_4
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CF"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4081
    .local v0, "commandInterfaceCFAction":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4082
    .local v13, "commandInterfaceCFReason":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4083
    .local v14, "dialingNumber":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 4084
    .local v15, "timerSeconds":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4085
    .local v16, "serviceClass":I
    nop

    .line 4087
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v7

    .line 4085
    move-object/from16 v1, p0

    move v2, v0

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V

    .line 4088
    goto/16 :goto_1

    .line 4120
    .end local v0    # "commandInterfaceCFAction":I
    .end local v13    # "commandInterfaceCFReason":I
    .end local v14    # "dialingNumber":Ljava/lang/String;
    .end local v15    # "timerSeconds":I
    .end local v16    # "serviceClass":I
    :pswitch_5
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CB"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4122
    .local v0, "facility":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4123
    .local v1, "password":Ljava/lang/String;
    iget-object v2, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4124
    .local v2, "serviceClass":I
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 4125
    goto :goto_1

    .line 4129
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "serviceClass":I
    :pswitch_6
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CB"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4131
    .restart local v0    # "facility":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4132
    .local v7, "enableState":I
    if-eqz v7, :cond_3

    move v3, v2

    .line 4133
    .local v3, "enable":Z
    :cond_3
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4134
    .local v13, "password":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4135
    .local v14, "serviceClass":I
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v13

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 4137
    goto :goto_1

    .line 4092
    .end local v0    # "facility":Ljava/lang/String;
    .end local v3    # "enable":Z
    .end local v7    # "enableState":I
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    :cond_4
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CLIR"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V

    .line 4094
    goto :goto_1

    .line 4098
    :cond_5
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CLIR"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4100
    .local v0, "commandInterfaceCLIRMode":I
    nop

    .line 4101
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 4100
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V

    .line 4102
    nop

    .line 4157
    .end local v0    # "commandInterfaceCLIRMode":I
    :goto_1
    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 4158
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4159
    return-void

    .line 4048
    .end local v12    # "requestCode":I
    :cond_6
    :goto_2
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v0

    .line 4049
    .local v0, "resultCallback":Landroid/os/Message;
    if-eqz v0, :cond_7

    .line 4050
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4052
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {v0, v11, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4053
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4056
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 4057
    invoke-virtual {v8, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 4060
    :cond_8
    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 4061
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleImsUtDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 3903
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3906
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 3907
    const-string v2, "EVENT_IMS_UT_DONE: Error AsyncResult null!"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    return-void

    .line 3911
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    .line 3913
    .local v2, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    if-nez v2, :cond_1

    .line 3914
    const-string v3, "EVENT_IMS_UT_DONE: Error SuppSrvRequest null!"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3916
    :cond_1
    const/4 v3, 0x0

    .line 3917
    .local v3, "cmdException":Lcom/android/internal/telephony/CommandException;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_2

    .line 3918
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v4

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 3921
    :cond_2
    const/16 v4, 0x7d1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_5

    .line 3923
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3924
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3925
    const-string v4, "UT_XCAP_403_FORBIDDEN."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3928
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 3929
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_3

    .line 3930
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3931
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3933
    :cond_3
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1

    .line 3935
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_4
    const-string v5, "Csfallback next_reboot."

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    invoke-virtual {p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3937
    .local v1, "msgCSFB":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 3938
    .end local v1    # "msgCSFB":Landroid/os/Message;
    goto/16 :goto_1

    .line 3939
    :cond_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_8

    .line 3941
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3942
    const-string v4, "CommandException.Error.UT_UNKNOWN_HOST."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3945
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 3946
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 3947
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3948
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3950
    :cond_6
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1

    .line 3952
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_7
    const-string v5, "Csfallback once."

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3954
    invoke-virtual {p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3955
    .local v1, "msgCSFB":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 3956
    .end local v1    # "msgCSFB":Landroid/os/Message;
    goto/16 :goto_1

    .line 3958
    :cond_8
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_b

    .line 3963
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3964
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getRequestCode()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_9

    .line 3965
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getRequestCode()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_a

    .line 3966
    :cond_9
    const-string v4, "GSMPhone get UT_XCAP_404_NOT_FOUND."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3968
    :cond_a
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 3971
    :cond_b
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_d

    .line 3974
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3976
    const-string v4, "GSMPhone get UT_XCAP_409_CONFLICT, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 3981
    :cond_c
    const-string v4, "GSMPhone get UT_XCAP_409_CONFLICT."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3983
    :cond_d
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_f

    .line 3985
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3987
    const-string v4, "GSMPhone get UT_XCAP_412_PRECONDITION_FAILED, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 3992
    :cond_e
    const-string v4, "GSMPhone get UT_XCAP_412_PRECONDITION_FAILED."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3994
    :cond_f
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_11

    .line 3996
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_10

    .line 3998
    const-string v4, "GSMPhone get UT_XCAP_415_UNSUPPORTED_MEDIA_TYPE, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0

    .line 4003
    :cond_10
    const-string v4, "GSMPhone get UT_XCAP_415_UNSUPPORTED_MEDIA_TYPE."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4005
    :cond_11
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_13

    .line 4007
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_12

    .line 4009
    const-string v4, "GSMPhone get UT_XCAP_500_INTERNAL_SERVER_ERROR, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0

    .line 4014
    :cond_12
    const-string v4, "GSMPhone get UT_XCAP_500_INTERNAL_SERVER_ERROR."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4016
    :cond_13
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_15

    .line 4018
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_14

    .line 4020
    const-string v4, "GSMPhone get UT_XCAP_503_SERVICE_UNAVAILABLE, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0

    .line 4025
    :cond_14
    const-string v4, "GSMPhone get UT_XCAP_503_SERVICE_UNAVAILABLE."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    :cond_15
    :goto_0
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 4030
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_16

    .line 4031
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4032
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4034
    :cond_16
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4037
    .end local v1    # "onComplete":Landroid/os/Message;
    .end local v3    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :goto_1
    return-void
.end method

.method private blacklist handleUdubIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2187
    const/4 v0, 0x0

    return v0

    .line 2190
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    .line 2191
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_2

    .line 2192
    :cond_1
    const-string v0, "MtkGsmCdmaPhone"

    const-string v2, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 2197
    :cond_2
    return v1
.end method

.method private blacklist hasC2kOverImsModem()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasC2kOverImsModem()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 237
    return v2

    .line 239
    :cond_0
    return v1
.end method

.method private blacklist initTbcwMode()V
    .locals 4

    .line 3141
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    const-string v1, "MtkGsmCdmaPhone"

    if-eqz v0, :cond_0

    .line 3142
    const-string v0, "initTbcwMode, mTbcwMode is not UNKNOWN, no need to init"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    return-void

    .line 3147
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 3148
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3153
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3165
    return-void

    .line 3149
    :cond_2
    :goto_0
    const-string v2, "initTbcwMode, IccCard is not ready. mTbcwMode ramains UNKNOWN"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    return-void
.end method

.method private blacklist isAllowXcapIfDataEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 4816
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4817
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4818
    const-string v3, "isAllowXcapIfDataEnabled, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    return v1

    .line 4822
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNeedCheckDataEnabled(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4823
    return v4

    .line 4826
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4827
    const-string v1, "isAllowXcapIfDataEnabled: true"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    return v4

    .line 4831
    :cond_2
    const-string v3, "isAllowXcapIfDataEnabled: false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    return v1
.end method

.method private blacklist isAllowXcapIfDataRoaming(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 4785
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4786
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4787
    const-string v3, "isAllowXcapIfDataRoaming, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    return v1

    .line 4801
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4802
    const-string v1, "isAllowXcapIfDataRoaming: true (not roaming state)"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    return v4

    .line 4806
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNeedCheckDataRoaming(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4807
    const-string v1, "isAllowXcapIfDataRoaming: true (ignore roaming state)"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    return v4

    .line 4811
    :cond_2
    const-string v3, "isAllowXcapIfDataRoaming: false (roaming state, block SS)"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    return v1
.end method

.method private blacklist isCallbackDone()Z
    .locals 5

    .line 5320
    const/4 v0, 0x0

    .line 5323
    .local v0, "isDone":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 5327
    goto :goto_0

    .line 5325
    :catch_0
    move-exception v1

    .line 5326
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 5329
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForCallback: isDone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    return v0
.end method

.method private blacklist isCdmaWithoutLteCard()Z
    .locals 2

    .line 685
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIccAppFamily(I)I

    move-result v0

    .line 687
    .local v0, "iccFamily":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 688
    const/4 v1, 0x1

    return v1

    .line 690
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isIccCardMncMccAvailable(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 4458
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 4459
    .local v0, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 4460
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    const-string v4, "MtkGsmCdmaPhone"

    if-eqz v2, :cond_1

    .line 4461
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 4462
    .local v5, "mccMnc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIccCardMncMccAvailable(): mccMnc is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 4465
    .end local v5    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v1, "isIccCardMncMccAvailable(): false"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    return v3
.end method

.method private blacklist isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z
    .locals 1
    .param p1, "id"    # Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 4320
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkOperatorUtils;->isOperator(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method private blacklist isUsimCard()Z
    .locals 10

    .line 4284
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "USIM"

    const-string v2, "MtkGsmCdmaPhone"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4285
    const/4 v0, 0x0

    .line 4286
    .local v0, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4287
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    .line 4288
    .local v3, "iccCardType":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4289
    const/4 v0, 0x1

    .line 4291
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsimCard: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    return v0

    .line 4294
    .end local v0    # "r":Z
    .end local v3    # "iccCardType":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 4295
    .local v0, "prop":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4296
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 4297
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 4298
    .local v5, "slotId":I
    const/4 v6, 0x0

    if-ltz v5, :cond_7

    sget-object v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v8, v7

    if-lt v5, v8, :cond_2

    goto :goto_1

    .line 4301
    :cond_2
    aget-object v7, v7, v5

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4302
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 4303
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4305
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUsimCard PhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cardType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4306
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4305
    invoke-static {v2, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    if-nez v3, :cond_4

    .line 4308
    return v6

    .line 4310
    :cond_4
    array-length v2, v3

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_6

    aget-object v8, v3, v7

    .line 4311
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4312
    const/4 v1, 0x1

    return v1

    .line 4310
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4315
    :cond_6
    return v6

    .line 4299
    :cond_7
    :goto_1
    return v6
.end method

.method private blacklist isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z
    .locals 1
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 4498
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4507
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4505
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z
    .locals 1
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 4518
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4525
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4523
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist preCheckCpaDcTracker()Z
    .locals 3

    .line 5634
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 5635
    const-string v0, "not support CPA mode for this SIM"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    return v1

    .line 5639
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v0, :cond_1

    .line 5640
    const-string v0, "can\'t get CpaDcTracker!"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    return v1

    .line 5643
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist supportMdAutoSetupIms()Z
    .locals 3

    .line 4483
    const/4 v0, 0x0

    .line 4484
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4485
    const/4 v0, 0x1

    .line 4487
    :cond_0
    return v0
.end method

.method private blacklist tryTurnOffWifiForE911(Z)V
    .locals 8
    .param p1, "isEcc"    # Z

    .line 5148
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 5149
    return-void

    .line 5152
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 5153
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 5154
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5155
    const-string v2, "mtk_carrier_turn_off_wifi_before_e911"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5157
    .local v1, "turnOffWifiForEcc":Z
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v2, v4

    .line 5158
    .local v2, "isWfcEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryTurnOffWifiForEcc() carrierConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isECC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isWfcEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5163
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 5164
    .local v4, "wifiMngr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    .line 5165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryTurnOffWifiForEcc() wifiEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    if-eqz v5, :cond_3

    .line 5167
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5169
    :cond_3
    return-void

    .line 5161
    .end local v4    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist tryTurnOnWifiForE911Finished()V
    .locals 5

    .line 5172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 5173
    return-void

    .line 5176
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 5177
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 5178
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5179
    const-string v2, "mtk_carrier_turn_off_wifi_before_e911"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5181
    .local v1, "turnOffWifiForEcc":Z
    if-nez v1, :cond_1

    .line 5182
    return-void

    .line 5185
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5186
    .local v2, "wifiMngr":Landroid/net/wifi/WifiManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryTurnOnWifiForEcbmFinished() wifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    if-eqz v3, :cond_2

    .line 5188
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5190
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist CPAChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authType"    # I
    .param p6, "dns1"    # Ljava/lang/String;
    .param p7, "dns2"    # Ljava/lang/String;
    .param p8, "proxyHost"    # Ljava/lang/String;
    .param p9, "proxyPort"    # Ljava/lang/String;

    .line 5586
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5587
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->CpaChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 5590
    :cond_0
    move-object v0, p0

    const/4 v1, 0x3

    return v1
.end method

.method public blacklist abortFemtoCellList(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 923
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "abortFemtoCellList()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->abortFemtoCellList(Landroid/os/Message;)V

    .line 925
    return-void
.end method

.method public blacklist applyCFSharePreference(ILjava/lang/String;)Z
    .locals 10
    .param p1, "cfReason"    # I
    .param p2, "setNumber"    # Ljava/lang/String;

    .line 4590
    const/4 v0, 0x0

    .line 4591
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MtkGsmCdmaPhone"

    if-eq p1, v1, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 4602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to store cfreason: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    return v2

    .line 4599
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CFNRC_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4600
    goto :goto_0

    .line 4596
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CFNR_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4597
    goto :goto_0

    .line 4593
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CFB_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4594
    nop

    .line 4606
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4607
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v4, :cond_3

    .line 4608
    const-string v1, "No iccRecords"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    return v2

    .line 4612
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    .line 4614
    .local v5, "currentImsi":Ljava/lang/String;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 4619
    :cond_4
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 4624
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 4625
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 4627
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4629
    .local v8, "content":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    .line 4634
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4638
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4640
    return v1

    .line 4630
    :cond_7
    :goto_1
    const-string v1, "imsi or content are empty or null."

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    return v2

    .line 4620
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "content":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v1, "setNumber is empty"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    return v2

    .line 4615
    :cond_9
    :goto_3
    const-string v1, "currentImsi is empty"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    return v2
.end method

.method public declared-synchronized blacklist cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    monitor-enter p0

    .line 902
    :try_start_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "cancelAvailableNetworks"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->cancelAvailableNetworks(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    monitor-exit p0

    return-void

    .line 901
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .end local p1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 3850
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3851
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3853
    if-eqz p4, :cond_1

    .line 3854
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3856
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3857
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 3858
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    goto :goto_0

    .line 3860
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3867
    :cond_1
    :goto_0
    return-void

    .line 3863
    :cond_2
    const-string v0, "method changeBarringPassword is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3864
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3865
    return-void
.end method

.method public blacklist checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;
    .locals 2

    .line 3833
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3834
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "checkUiccApplicationForCB: mUiccApplication.get() == null"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isRadioAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isRadioOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3840
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 3837
    :cond_1
    :goto_0
    const-string v1, "checkUiccApplicationForCB: radio not available"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 3843
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cleanCallForwardingIndicatorFromSharedPref()V
    .locals 1

    .line 5043
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 5044
    return-void
.end method

.method public blacklist clearCFSharePreference(I)V
    .locals 6
    .param p1, "cfReason"    # I

    .line 4554
    const/4 v0, 0x0

    .line 4555
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "MtkGsmCdmaPhone"

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 4566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No need to store cfreason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    return-void

    .line 4563
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFNRC_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4564
    goto :goto_0

    .line 4560
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFNR_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4561
    goto :goto_0

    .line 4557
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFB_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4558
    nop

    .line 4570
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read to clear the key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4573
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4574
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4575
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to commit the removal of CF preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4578
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit the removal of CF preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    :goto_1
    return-void
.end method

.method protected blacklist correctPhoneTypeForCdma(ZI)Z
    .locals 3
    .param p1, "matchCdma"    # Z
    .param p2, "newVoiceRadioTech"    # I

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "phoneTypeChanged":Z
    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 635
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    .line 638
    :cond_0
    const/4 v0, 0x1

    .line 642
    .end local v1    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v1

    if-nez v1, :cond_4

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 644
    :cond_3
    const/4 v0, 0x0

    .line 646
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctPhoneTypeForCdma: change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " newVoiceRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mActivePhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v0
.end method

.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 24
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1099
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v4

    .line 1108
    .local v4, "isEmergency":Z
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mGsmCdmaPhoneEx:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->handleCalloutControl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    const-string v0, "block voice out"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x0

    return-object v0

    .line 1114
    :cond_2
    invoke-static {v4}, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->setIsEmergencyNumber(Z)V

    .line 1116
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1117
    .local v5, "imsPhone":Lcom/android/internal/telephony/Phone;
    iput-object v3, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 1120
    if-eqz v4, :cond_3

    .line 1121
    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->tryTurnOffWifiForE911(Z)V

    .line 1126
    :cond_3
    const/4 v6, 0x3

    if-eqz v5, :cond_4

    .line 1127
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    move v7, v0

    .line 1130
    .local v7, "imsServiceState":I
    const/4 v0, 0x0

    .line 1131
    .local v0, "alwaysTryImsForEmergencyCarrierConfig":Z
    const-string v8, "carrier_config"

    if-eqz v4, :cond_5

    .line 1132
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/CarrierConfigManager;

    .line 1134
    .local v9, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v10

    .line 1135
    const-string v11, "carrier_use_ims_first_for_emergency_bool"

    invoke-virtual {v10, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v9, v0

    goto :goto_2

    .line 1131
    .end local v9    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_5
    move v9, v0

    .line 1139
    .end local v0    # "alwaysTryImsForEmergencyCarrierConfig":Z
    .local v9, "alwaysTryImsForEmergencyCarrierConfig":Z
    :goto_2
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    const-string v0, "*272"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v10

    :goto_3
    move v11, v0

    .line 1141
    .local v11, "isWpsCall":Z
    const/4 v0, 0x1

    .line 1142
    .local v0, "allowWpsOverIms":Z
    if-eqz v11, :cond_7

    .line 1143
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/CarrierConfigManager;

    .line 1145
    .local v12, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v13

    .line 1146
    const-string v14, "support_wps_over_ims_bool"

    invoke-virtual {v13, v14}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    goto :goto_4

    .line 1142
    .end local v12    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_7
    move v12, v0

    .line 1149
    .end local v0    # "allowWpsOverIms":Z
    .local v12, "allowWpsOverIms":Z
    :goto_4
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useImsForCall(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v11, :cond_8

    if-eqz v12, :cond_9

    :cond_8
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    move v0, v10

    .line 1152
    .local v0, "useImsForCall":Z
    :goto_5
    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    if-eqz v9, :cond_a

    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    .line 1155
    invoke-static {v14, v15}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eq v7, v6, :cond_a

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    move v14, v10

    .line 1160
    .local v14, "useImsForEmergency":Z
    :goto_6
    sget-boolean v15, Lcom/android/internal/telephony/OemConstant;->EXP_VERSION:Z

    const-string v6, "vendor.gsm.gcf.testmode"

    const/4 v13, 0x2

    if-eqz v15, :cond_e

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eq v15, v13, :cond_e

    .line 1162
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    goto :goto_7

    :cond_b
    new-instance v15, Landroid/telephony/ServiceState;

    invoke-direct {v15}, Landroid/telephony/ServiceState;-><init>()V

    .line 1163
    .local v15, "st":Landroid/telephony/ServiceState;
    :goto_7
    if-eqz v14, :cond_d

    .line 1164
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_c
    const/16 v16, 0x1

    goto :goto_8

    :cond_d
    move/from16 v16, v10

    :goto_8
    move/from16 v14, v16

    .line 1169
    .end local v15    # "st":Landroid/telephony/ServiceState;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->hasC2kOverImsModem()Z

    move-result v15

    const-string v13, "MtkGsmCdmaPhone"

    if-eqz v15, :cond_f

    .line 1170
    const-string v15, "keep AOSP"

    invoke-static {v13, v15}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1173
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v15

    if-nez v15, :cond_10

    .line 1174
    const/4 v14, 0x0

    .line 1182
    :cond_10
    :goto_9
    iget v15, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMainCapabilityPhoneId()I

    move-result v10

    if-eq v15, v10, :cond_11

    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v10

    if-nez v10, :cond_11

    .line 1183
    const/4 v14, 0x0

    .line 1186
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->shouldProcessSelfActivation()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useImsForPCOChanged()Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_a

    :cond_12
    move v10, v0

    goto :goto_b

    .line 1187
    :cond_13
    :goto_a
    const-string v10, "always use ImsPhone for self activation"

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1188
    const/4 v0, 0x1

    move v10, v0

    .line 1191
    .end local v0    # "useImsForCall":Z
    .local v10, "useImsForCall":Z
    :goto_b
    nop

    .line 1192
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1200
    .local v15, "dialPart":Ljava/lang/String;
    if-eqz v15, :cond_15

    const-string v0, "*"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move/from16 v17, v9

    .end local v9    # "alwaysTryImsForEmergencyCarrierConfig":Z
    .local v17, "alwaysTryImsForEmergencyCarrierConfig":Z
    const-string v9, "#"

    if-nez v0, :cond_14

    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1201
    :cond_14
    invoke-virtual {v15, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_c

    .line 1200
    .end local v17    # "alwaysTryImsForEmergencyCarrierConfig":Z
    .restart local v9    # "alwaysTryImsForEmergencyCarrierConfig":Z
    :cond_15
    move/from16 v17, v9

    .line 1201
    .end local v9    # "alwaysTryImsForEmergencyCarrierConfig":Z
    .restart local v17    # "alwaysTryImsForEmergencyCarrierConfig":Z
    :cond_16
    const/4 v0, 0x0

    :goto_c
    move v9, v0

    .line 1203
    .local v9, "isUt":Z
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_d
    move/from16 v18, v0

    .line 1206
    .local v18, "useImsForUt":Z
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/CarrierConfigManager;

    .line 1208
    .local v8, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/from16 v19, v8

    .end local v8    # "configManager":Landroid/telephony/CarrierConfigManager;
    .local v19, "configManager":Landroid/telephony/CarrierConfigManager;
    const-string v8, "oppo.operator.ringtone"

    move-object/from16 v20, v15

    const/4 v15, 0x0

    .end local v15    # "dialPart":Ljava/lang/String;
    .local v20, "dialPart":Ljava/lang/String;
    invoke-virtual {v0, v8, v15}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1209
    .local v8, "ringToneOp":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v15, "sys.oplus.radio.carrier.ringtone"

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PhoneId = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", useImsForCall="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", useImsForEmergency="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", useImsForUt="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v18

    .end local v18    # "useImsForUt":Z
    .local v15, "useImsForUt":Z
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v18, v8

    .end local v8    # "ringToneOp":I
    .local v18, "ringToneOp":I
    const-string v8, ", isUt="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isWpsCall="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", allowWpsOverIms="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone.isVolteEnabled()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const-string v8, "N/A"

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v23, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v23

    goto :goto_e

    :cond_18
    move-object/from16 v21, v8

    :goto_e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_f

    :cond_19
    move-object/from16 v8, v21

    :goto_f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone.isVideoEnabled()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_10

    :cond_1a
    move-object/from16 v8, v21

    :goto_10
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    if-eqz v5, :cond_1b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_11

    :cond_1b
    move-object/from16 v8, v21

    :goto_11
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v0

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    move/from16 v21, v7

    .end local v7    # "imsServiceState":I
    .local v21, "imsServiceState":I
    const-string v7, "wfc_ims_mode"

    move/from16 v22, v11

    const/4 v11, 0x2

    .end local v11    # "isWpsCall":Z
    .local v22, "isWpsCall":Z
    invoke-static {v0, v7, v11, v8}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v7

    .line 1233
    .local v7, "setting":I
    if-nez v7, :cond_1c

    .line 1234
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    iget v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v11}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V

    .line 1241
    :cond_1c
    if-eqz v10, :cond_1d

    if-nez v9, :cond_1d

    if-eqz v4, :cond_1f

    :cond_1d
    if-eqz v9, :cond_1e

    if-nez v15, :cond_1f

    :cond_1e
    if-eqz v14, :cond_25

    .line 1245
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1246
    const-string v0, "has CS Call. Don\'t try IMS PS Call!"

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1250
    :cond_20
    :try_start_0
    iget v0, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    if-nez v0, :cond_21

    .line 1252
    const-string v0, "Trying IMS PS call"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 1256
    :cond_21
    const-string v0, "persist.vendor.vilte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1258
    const-string v0, "Trying IMS PS video call"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 1262
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Should not be here. (isInCSCall == false, videoState="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    goto :goto_13

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMS PS call exception "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "useImsForCall ="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone ="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1271
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->tryTurnOnWifiForE911Finished()V

    .line 1275
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v11, "cs_fallback"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    if-eqz v4, :cond_23

    goto :goto_12

    .line 1279
    :cond_23
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    .line 1280
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v8, v11}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    .line 1281
    .local v6, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1282
    throw v6

    .line 1276
    .end local v6    # "ce":Lcom/android/internal/telephony/CallStateException;
    :cond_24
    :goto_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMS call failed with Exception: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Falling back to CS."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 1291
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_25
    :goto_13
    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_27

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaLessDevice()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1293
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_27

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1294
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-eqz v0, :cond_27

    if-eqz v4, :cond_26

    goto :goto_14

    .line 1296
    :cond_26
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot dial in current state"

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_2a

    iget v0, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1303
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz v4, :cond_28

    const/4 v8, 0x2

    goto :goto_15

    .line 1305
    :cond_28
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot dial voice call in airplane mode"

    const/4 v8, 0x2

    invoke-direct {v0, v8, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1303
    :cond_29
    const/4 v8, 0x2

    goto :goto_15

    .line 1302
    :cond_2a
    const/4 v8, 0x2

    .line 1312
    :goto_15
    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_2d

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaLessDevice()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1315
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2d

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1316
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1318
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_2b
    iget v0, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1319
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_2d

    if-nez v4, :cond_2d

    if-eqz v9, :cond_2c

    if-eqz v15, :cond_2c

    goto :goto_16

    .line 1322
    :cond_2c
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot dial voice call in out of service"

    const/4 v8, 0x1

    invoke-direct {v0, v8, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1327
    :cond_2d
    :goto_16
    const-string v0, "Trying (non-IMS) CS call"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1330
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    iget-object v6, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1331
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    .line 1332
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    .line 1330
    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_2e
    invoke-virtual/range {p0 .. p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 963
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "newDialString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 967
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 968
    return-object v2

    .line 972
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, "networkPortion":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 974
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 973
    invoke-static {v1, p0, v3, p3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v3

    .line 975
    .local v3, "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal: dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 977
    if-nez v3, :cond_1

    .line 978
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v5, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 979
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 980
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, v3, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getCLIRMode()I

    move-result v5

    iget-object v6, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v7, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 983
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mmi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dumpPendingMmi()V

    .line 988
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 989
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->processCode()V

    .line 990
    return-object v2

    .line 993
    .end local v1    # "networkPortion":Ljava/lang/String;
    .end local v3    # "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public blacklist doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 1003
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/MtkRIL;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1006
    :cond_0
    return-void
.end method

.method public blacklist dumpPendingMmi()V
    .locals 5

    .line 4162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4163
    .local v0, "size":I
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4164
    const-string v2, "dumpPendingMmi: none"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    return-void

    .line 4167
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpPendingMmi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4170
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode()V
    .locals 2

    .line 5120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitEmergencyCallbackMode: mImsPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneTypeGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5121
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5120
    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    const-string v0, "exitEmergencyCallbackMode()"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->tryTurnOnWifiForE911Finished()V

    .line 5127
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    .line 5129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    goto :goto_0

    .line 5132
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5135
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 5137
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist getApcInfo()Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .locals 6

    .line 2057
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2058
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;)V

    .line 2060
    .local v0, "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 2061
    :try_start_0
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 2062
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x3e9

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->getApcInfo(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2064
    :try_start_1
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2067
    goto :goto_0

    .line 2065
    :catch_0
    move-exception v3

    .line 2066
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2068
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2069
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 2070
    :try_start_3
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    if-eqz v2, :cond_0

    .line 2071
    const-string v1, "MtkGsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApcInfo return: list.size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    monitor-exit v3

    return-object v1

    .line 2074
    :cond_0
    const-string v2, "MtkGsmCdmaPhone"

    const-string v4, "getApcInfo return null"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    monitor-exit v3

    .line 2077
    .end local v0    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    goto :goto_1

    .line 2076
    .restart local v0    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2068
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 2078
    .end local v0    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    :cond_1
    const-string v0, "MtkGsmCdmaPhone"

    const-string v2, "getApcInfo: not possible in CDMA"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :goto_1
    return-object v1
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mGsmCdmaPhoneEx:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->isManualSelectNetworksAllowed(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getAvailableNetworksWithAct(Landroid/os/Message;)V

    goto :goto_0

    .line 889
    :cond_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyFailure(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 895
    :goto_0
    return-void
.end method

.method public blacklist getCFCallbackMessage()Landroid/os/Message;
    .locals 1

    .line 5006
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCFPreviousDialNumber(I)Ljava/lang/String;
    .locals 13
    .param p1, "cfReason"    # I

    .line 4650
    const/4 v0, 0x0

    .line 4651
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "MtkGsmCdmaPhone"

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    .line 4662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to do the reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    return-object v3

    .line 4659
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CFNRC_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4660
    goto :goto_0

    .line 4656
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CFNR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4657
    goto :goto_0

    .line 4653
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CFB_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4654
    nop

    .line 4666
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4669
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v5, :cond_3

    .line 4670
    const-string v1, "No iccRecords"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    return-object v3

    .line 4674
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v6

    .line 4676
    .local v6, "currentImsi":Ljava/lang/String;
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_4

    .line 4681
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentImsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4684
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4686
    .local v8, "info":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 4687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharedpref not with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    return-object v3

    .line 4691
    :cond_5
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4693
    .local v9, "infoAry":[Ljava/lang/String;
    if-eqz v9, :cond_d

    array-length v10, v9

    if-ge v10, v1, :cond_6

    goto/16 :goto_3

    .line 4698
    :cond_6
    const/4 v1, 0x0

    aget-object v1, v9, v1

    .line 4699
    .local v1, "imsi":Ljava/lang/String;
    aget-object v2, v9, v2

    .line 4701
    .local v2, "number":Ljava/lang/String;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_2

    .line 4706
    :cond_7
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_1

    .line 4711
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sharedpref imsi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sharedpref number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get dial number from sharepref: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    return-object v2

    .line 4718
    :cond_9
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 4719
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4720
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v11

    if-nez v11, :cond_a

    .line 4721
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to commit the removal of CF preference: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    return-object v3

    .line 4707
    :cond_b
    :goto_1
    const-string v10, "Sharedpref number is empty."

    invoke-static {v4, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    return-object v3

    .line 4702
    :cond_c
    :goto_2
    const-string v10, "Sharedpref imsi is empty."

    invoke-static {v4, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4703
    return-object v3

    .line 4694
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_d
    :goto_3
    const-string v1, "infoAry.length < 2"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    return-object v3

    .line 4677
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    .end local v8    # "info":Ljava/lang/String;
    .end local v9    # "infoAry":[Ljava/lang/String;
    :cond_e
    :goto_4
    const-string v1, "currentImsi is empty"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    return-object v3
.end method

.method public blacklist getCFTimeSlotCallbackMessage()Landroid/os/Message;
    .locals 1

    .line 5010
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCSRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public blacklist getCachedCrss()Landroid/os/AsyncResult;
    .locals 2

    .line 5529
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getCachedCrss()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    return-object v0
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 3635
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3636
    return-void
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 3624
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v6

    .line 3625
    .local v6, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v6, :cond_0

    .line 3626
    nop

    .line 3627
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    .line 3626
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getCallBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    goto :goto_0

    .line 3629
    :cond_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ssQueueHelper not exist, getCallBarringInternal"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3632
    :goto_0
    return-void
.end method

.method public blacklist getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 3640
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3717
    :cond_0
    const-string v0, "method getFacilityLock is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3718
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3719
    return-void

    .line 3641
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3644
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallBarringInternal enter, facility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    const/16 v1, 0x7d6

    invoke-virtual {p0, v1, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3649
    .local v1, "resp":Landroid/os/Message;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3650
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3651
    :cond_2
    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3652
    return-void

    .line 3655
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3656
    return-void

    .line 3660
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 3662
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 3663
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3664
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3665
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3666
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3667
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3669
    return-void

    .line 3672
    :cond_7
    const/16 v1, 0xa

    invoke-static {v1, p3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3674
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3675
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3676
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3677
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3679
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, p2, v2, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3680
    return-void

    .line 3683
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_9

    .line 3684
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3685
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, p1, p2, p4, p3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3687
    return-void

    .line 3690
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3691
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3695
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3696
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3697
    return-void

    .line 3701
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3702
    :cond_c
    if-eqz p3, :cond_d

    .line 3703
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3704
    return-void

    .line 3708
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 3709
    .local v1, "checkError":Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    .line 3710
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3711
    return-void

    .line 3714
    :cond_e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3715
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v7

    .line 3714
    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3716
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v1    # "checkError":Lcom/android/internal/telephony/CommandException;
    nop

    .line 3721
    return-void
.end method

.method public blacklist getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2707
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2708
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2711
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0x6d

    const-string v3, "requesting call forwarding in time slot query."

    const-string v4, "MtkGsmCdmaPhone"

    if-eqz v1, :cond_3

    .line 2712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardInTimeSlot enter, CFReason:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    if-eqz v0, :cond_1

    .line 2715
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2716
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2717
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    .line 2719
    return-void

    .line 2722
    :cond_1
    if-nez p1, :cond_2

    .line 2724
    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2728
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 2730
    .end local v1    # "resp":Landroid/os/Message;
    :cond_2
    return-void

    .line 2734
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 2736
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2737
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2738
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2739
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2740
    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    .line 2742
    return-void

    .line 2745
    :cond_6
    if-nez p1, :cond_8

    .line 2747
    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2752
    .restart local v1    # "resp":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_7

    .line 2753
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2754
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    goto :goto_0

    .line 2758
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 2761
    .end local v1    # "resp":Landroid/os/Message;
    :cond_8
    if-eqz p2, :cond_9

    .line 2762
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_1

    .line 2761
    :cond_9
    :goto_0
    nop

    .line 2764
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :goto_1
    nop

    .line 2769
    return-void

    .line 2765
    :cond_a
    const-string v0, "method getCallForwardInTimeSlot is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2766
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2767
    return-void
.end method

.method public blacklist getCallForwardingIndicator()Z
    .locals 6

    .line 5257
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5258
    const/4 v0, 0x0

    .line 5259
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5260
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 5262
    :cond_0
    const/4 v1, -0x1

    .line 5263
    .local v1, "callForwardingIndicator":I
    const-string v3, "MtkGsmCdmaPhone"

    if-eqz v0, :cond_1

    .line 5264
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v1

    .line 5265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingIndicator: from icc record = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    :cond_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 5269
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v1

    .line 5271
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingIndicator: iccForwardingFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 5272
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", sharedPrefFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5273
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5271
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 5276
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v1    # "callForwardingIndicator":I
    :cond_5
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public blacklist getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2373
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2376
    return-void
.end method

.method public blacklist getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V
    .locals 3
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2381
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 2382
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_0

    .line 2383
    nop

    .line 2384
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    .line 2383
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;I)V

    goto :goto_0

    .line 2386
    :cond_0
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, getCallForwardingOptionForServiceClass"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionInternal(IILandroid/os/Message;)V

    .line 2390
    :goto_0
    return-void
.end method

.method public blacklist getCallForwardingOptionInternal(IILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2397
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2487
    :cond_0
    const-string v0, "getCallForwardingOptionForServiceClass: not possible in CDMA"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2488
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2489
    return-void

    .line 2399
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2402
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0xd

    const-string v3, "requesting call forwarding query."

    const-string v4, "MtkGsmCdmaPhone"

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 2403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallForwardingOptionForServiceClass enter, CFReason:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", serviceClass:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    if-eqz v0, :cond_3

    .line 2406
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2407
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2409
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2411
    return-void

    .line 2414
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2416
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2419
    if-nez p1, :cond_4

    .line 2420
    invoke-virtual {p0, v2, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "resp":Landroid/os/Message;
    goto :goto_1

    .line 2422
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    move-object v1, p3

    .line 2424
    .restart local v1    # "resp":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2427
    .end local v1    # "resp":Landroid/os/Message;
    :cond_5
    return-void

    .line 2431
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 2433
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2434
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2435
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2436
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2437
    :cond_8
    const/16 v1, 0xc

    invoke-static {v1, p3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 2439
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2440
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2442
    .local v2, "imsUtResult":Landroid/os/Message;
    move-object v3, v0

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, p1, p2, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2444
    return-void

    .line 2447
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2448
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2450
    if-nez p1, :cond_a

    .line 2451
    invoke-virtual {p0, v2, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "resp":Landroid/os/Message;
    goto :goto_2

    .line 2453
    .end local v1    # "resp":Landroid/os/Message;
    :cond_a
    move-object v1, p3

    .line 2456
    .restart local v1    # "resp":Landroid/os/Message;
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_c

    .line 2457
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2458
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 2459
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2460
    return-void

    .line 2462
    :cond_b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v2, p1, p2, v5, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2464
    return-void

    .line 2467
    :cond_c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 2468
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 2471
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2472
    :cond_e
    if-eqz p3, :cond_f

    .line 2473
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2474
    return-void

    .line 2479
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2480
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_3

    .line 2482
    :cond_10
    const-string v2, "mCi.queryCallForwardStatus."

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2486
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_11
    :goto_3
    nop

    .line 2491
    return-void
.end method

.method public blacklist getCallSubAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 5663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCallSubAddress(Landroid/os/Message;)V

    .line 5664
    return-void
.end method

.method public blacklist getCallWaiting(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 3237
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 3238
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_0

    .line 3239
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getCallWaiting(Landroid/os/Message;I)V

    goto :goto_0

    .line 3241
    :cond_0
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, getCallWaiting"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingInternal(Landroid/os/Message;)V

    .line 3244
    :goto_0
    return-void
.end method

.method public blacklist getCallWaitingInternal(Landroid/os/Message;)V
    .locals 7
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 3249
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3367
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_5

    .line 3251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3254
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MtkGsmCdmaPhone"

    if-eqz v2, :cond_4

    .line 3255
    const-string v1, "getCallWaiting enter"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    if-eqz v0, :cond_3

    .line 3258
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3259
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3260
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 3261
    return-void

    .line 3266
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3268
    return-void

    .line 3273
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v2

    const-string v5, "mCi.queryCallForwardStatus."

    if-nez v2, :cond_e

    .line 3274
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    if-nez v2, :cond_5

    .line 3275
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V

    .line 3278
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallWaiting(): mTbcwMode = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", onComplete = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    if-eq v2, v1, :cond_d

    const/4 v6, 0x2

    if-eq v2, v6, :cond_9

    const/4 v6, 0x3

    if-eq v2, v6, :cond_6

    goto :goto_2

    .line 3306
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3307
    :cond_7
    if-eqz p1, :cond_8

    .line 3308
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3310
    return-void

    .line 3313
    :cond_8
    const/16 v1, 0x12d

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3314
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3315
    return-void

    .line 3288
    .end local v1    # "resp":Landroid/os/Message;
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3289
    :cond_a
    if-eqz p1, :cond_b

    .line 3290
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3292
    return-void

    .line 3296
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3297
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_1

    .line 3300
    :cond_c
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3303
    :goto_1
    return-void

    .line 3284
    :cond_d
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 3285
    return-void

    .line 3319
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_12

    if-eqz v0, :cond_12

    .line 3321
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_f

    .line 3322
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3323
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3324
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3325
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3327
    const-string v1, "isOpNwCW(), getCallWaiting() by Ut interface"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    const/16 v1, 0xe

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3330
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3331
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 3332
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    goto :goto_3

    .line 3333
    :cond_11
    const-string v2, "isOpTbCW(), getTerminalBasedCallWaiting"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 3335
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 3336
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 3338
    :goto_3
    return-void

    .line 3341
    :cond_12
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_13

    .line 3342
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3343
    const-string v1, "mMtkSSReqDecisionMaker.queryCallWaiting"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, v3, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3346
    return-void

    .line 3349
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3350
    :cond_14
    if-eqz p1, :cond_15

    .line 3351
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3352
    return-void

    .line 3359
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3360
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_4

    .line 3362
    :cond_16
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3365
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_4
    nop

    .line 3369
    :goto_5
    return-void
.end method

.method public blacklist getCdmaSubscriptionActStatus()I
    .locals 1

    .line 4897
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    check-cast v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->getActStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getCpaConnectionInfo()Landroid/os/Bundle;
    .locals 7

    .line 5601
    const/4 v0, 0x0

    .line 5602
    .local v0, "cpaConInfo":Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5603
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    move-result-object v1

    .line 5604
    .local v1, "cpaCon":Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
    const-string v2, "MtkGsmCdmaPhone"

    if-eqz v1, :cond_1

    .line 5605
    const-string v3, "creat() E cpaConInfo"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5606
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;-><init>()V

    move-object v0, v3

    .line 5607
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->localAddress:Ljava/net/InetAddress;

    .line 5608
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getDnsAddresses()[Ljava/net/InetAddress;

    move-result-object v3

    .line 5609
    .local v3, "dnsAddr":[Ljava/net/InetAddress;
    if-eqz v3, :cond_0

    .line 5610
    array-length v4, v3

    new-array v4, v4, [Ljava/net/InetAddress;

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    .line 5611
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 5612
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    aget-object v6, v3, v4

    aput-object v6, v5, v4

    .line 5611
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5615
    .end local v4    # "i":I
    :cond_0
    const-string v4, "creat() X cpaConInfo"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    .end local v3    # "dnsAddr":[Ljava/net/InetAddress;
    goto :goto_1

    .line 5617
    :cond_1
    const-string v3, "getCpaConnectionInfo() can\'t get CPA connection"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    .end local v1    # "cpaCon":Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5621
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "CpaConnectionInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5623
    return-object v1
.end method

.method public blacklist getCpaConnectionStatus()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .line 5594
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5595
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionStatus()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    return-object v0

    .line 5597
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public blacklist getCpaProxyData()Landroid/net/ProxyInfo;
    .locals 1

    .line 5627
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5628
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaProxyData()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0

    .line 5630
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCsFallbackStatus()I
    .locals 2

    .line 4844
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isAllowXcapIfDataEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4845
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 4848
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isAllowXcapIfDataRoaming(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4849
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 4852
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCsFallbackStatus is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    return v0
.end method

.method public blacklist getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 5196
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5200
    :cond_0
    const-string v0, "getDeviceSvn(): return 0"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5201
    const-string v0, "0"

    return-object v0

    .line 5198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisable2G(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 5236
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getDisable2G"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getDisable2G(Landroid/os/Message;)V

    .line 5238
    return-void
.end method

.method public blacklist getEccRadioOnStatus()Z
    .locals 1

    .line 5496
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    return v0
.end method

.method public blacklist getFemtoCellList(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 914
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getFemtoCellList()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getFemtoCellList(Landroid/os/Message;)V

    .line 916
    return-void
.end method

.method public blacklist getFullIccSerialNumber()Ljava/lang/String;
    .locals 6

    .line 5072
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 5073
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5074
    return-object v0

    .line 5078
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_2

    .line 5079
    const/4 v1, 0x0

    .line 5080
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 5081
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 5082
    if-eqz v0, :cond_2

    .line 5083
    return-object v0

    .line 5088
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5091
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v3

    .line 5092
    .local v3, "subId":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 5093
    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 5094
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_3

    .line 5095
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 5097
    :cond_3
    nop

    .line 5099
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5097
    return-object v0

    .line 5099
    .end local v3    # "subId":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5100
    throw v3
.end method

.method public blacklist getLine1PhoneNumber()Ljava/lang/String;
    .locals 8

    .line 5359
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5360
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5361
    .local v0, "optr":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v2, "OP20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5363
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v2

    .line 5364
    .local v2, "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    const/4 v3, 0x0

    .line 5366
    .local v3, "isCdma4g":Z
    if-eqz v2, :cond_0

    .line 5367
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->is4GCard()Z

    move-result v3

    .line 5369
    :cond_0
    if-eqz v3, :cond_5

    .line 5370
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    .line 5371
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    const/4 v6, 0x2

    .line 5370
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 5372
    .local v4, "rr":Lcom/android/internal/telephony/uicc/RuimRecords;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5374
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLine1PhoneNumber, number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5375
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 5376
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5374
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5378
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5379
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    .line 5378
    :cond_4
    :goto_1
    return-object v1

    .line 5381
    .end local v4    # "rr":Lcom/android/internal/telephony/uicc/RuimRecords;
    .end local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5382
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_6
    return-object v1

    .line 5385
    .end local v2    # "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .end local v3    # "isCdma4g":Z
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5386
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_8
    return-object v1

    .line 5389
    .end local v0    # "optr":Ljava/lang/String;
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMtkSSRequestDecisionMaker()Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .locals 1

    .line 3871
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    return-object v0
.end method

.method public blacklist getMvnoMatchType()Ljava/lang/String;
    .locals 5

    .line 1037
    const-string v0, ""

    .line 1038
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1039
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1040
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1045
    :cond_0
    const-string v2, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMvnoMatchType: Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_1
    monitor-exit v1

    .line 1048
    return-object v0

    .line 1047
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .line 1011
    const-string v0, ""

    .line 1012
    .local v0, "pattern":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1014
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1015
    const-string v2, "spn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1019
    :cond_0
    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1023
    :cond_1
    const-string v2, "pnn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1024
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1025
    :cond_2
    const-string v2, "gid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1026
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1028
    :cond_3
    const-string v2, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMvnoPattern: Wrong type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_4
    :goto_0
    monitor-exit v1

    .line 1033
    return-object v0

    .line 1032
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getNrMapStatus()Ljava/lang/String;
    .locals 1

    .line 5489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/NrMap;->getNrMapStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5490
    :cond_0
    const-string v0, "getNrMapStatus mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5491
    const-string v0, "n/a"

    return-object v0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 4997
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4999
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 5002
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2913
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 2914
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_0

    .line 2915
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getOutgoingCallerIdDisplay(Landroid/os/Message;I)V

    goto :goto_0

    .line 2917
    :cond_0
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, getOutgoingCallerIdDisplay"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V

    .line 2920
    :goto_0
    return-void
.end method

.method public blacklist getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2923
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3005
    :cond_0
    const-string v0, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3006
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3007
    return-void

    .line 2924
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2927
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2928
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "getOutgoingCallerIdDisplay enter"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    const/16 v1, 0x7d4

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2931
    .local v1, "resp":Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 2932
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 2933
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2934
    return-void

    .line 2936
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 2938
    return-void

    .line 2942
    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 2944
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2945
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2946
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2947
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2948
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2949
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2951
    return-void

    .line 2954
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2955
    if-eqz p1, :cond_7

    .line 2956
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v1

    .line 2957
    .local v1, "result":[I
    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2958
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2960
    .end local v1    # "result":[I
    :cond_7
    return-void

    .line 2963
    :cond_8
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 2965
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2966
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2967
    return-void

    .line 2970
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_c

    .line 2971
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2972
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2973
    if-eqz p1, :cond_a

    .line 2974
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v1

    .line 2975
    .local v1, "result":[I
    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2976
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2978
    .end local v1    # "result":[I
    :cond_a
    return-void

    .line 2981
    :cond_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCLIR(Landroid/os/Message;)V

    .line 2982
    return-void

    .line 2985
    :cond_c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 2986
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 2990
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2991
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2992
    return-void

    .line 2996
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2997
    :cond_f
    if-eqz p1, :cond_10

    .line 2998
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2999
    return-void

    .line 3003
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 3004
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    nop

    .line 3009
    return-void
.end method

.method public blacklist getPendingMmiCodes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 2289
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getPendingMmiCodes"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dumpPendingMmi()V

    .line 2292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2293
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2294
    .local v2, "imsphonePendingMMIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MmiCode;>;"
    if-eqz v1, :cond_0

    .line 2295
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 2296
    nop

    .line 2297
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    .line 2298
    .local v3, "imsMMIs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 2299
    .local v5, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2300
    .end local v5    # "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 2303
    .end local v3    # "imsMMIs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2304
    .local v3, "allPendingMMIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MmiCode;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allPendingMMIs.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 2307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump allPendingMMIs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2309
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_1
    return-object v3
.end method

.method public blacklist getPol(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCurrentPOLList(Landroid/os/Message;)V

    .line 2272
    return-void
.end method

.method public blacklist getPolCapability(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2260
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getPOLCapability(Landroid/os/Message;)V

    .line 2261
    return-void
.end method

.method public blacklist getRoamingEnable(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 4924
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "get roaming enable"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRoamingEnable(ILandroid/os/Message;)V

    .line 4926
    return-void
.end method

.method public blacklist getRxTestResult(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2249
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "get Rx Test Result"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRxTestResult(Landroid/os/Message;)V

    .line 2251
    return-void
.end method

.method public blacklist getSavedClirSetting()[I
    .locals 8

    .line 2883
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2884
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clir_sub_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2887
    .local v1, "clirSetting":I
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2891
    :cond_0
    if-ne v1, v3, :cond_1

    .line 2893
    const/4 v2, 0x3

    .line 2894
    .local v2, "presentationMode":I
    const/4 v4, 0x1

    .local v4, "getClirResult":I
    goto :goto_1

    .line 2897
    .end local v2    # "presentationMode":I
    .end local v4    # "getClirResult":I
    :cond_1
    const/4 v2, 0x4

    .line 2898
    .restart local v2    # "presentationMode":I
    const/4 v4, 0x2

    .restart local v4    # "getClirResult":I
    goto :goto_1

    .line 2889
    .end local v2    # "presentationMode":I
    .end local v4    # "getClirResult":I
    :cond_2
    :goto_0
    const/4 v2, 0x4

    .line 2890
    .restart local v2    # "presentationMode":I
    const/4 v4, 0x0

    .line 2901
    .restart local v4    # "getClirResult":I
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 2902
    .local v5, "getClirResponse":[I
    const/4 v6, 0x0

    aput v4, v5, v6

    .line 2903
    aput v2, v5, v3

    .line 2905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClirResult: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "presentationMode: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    return-object v5
.end method

.method public blacklist getScbmManagerInstance()Lcom/mediatek/internal/telephony/scbm/ISCBMManager;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    return-object v0
.end method

.method public blacklist getSelfActivationInstance()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    return-object v0
.end method

.method public blacklist getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 505
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 506
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_2

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-nez v0, :cond_1

    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 510
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    check-cast v1, Lmediatek/telephony/MtkServiceState;

    .line 508
    invoke-static {v0, v1}, Lmediatek/telephony/MtkServiceState;->mergeMtkServiceStates(Lmediatek/telephony/MtkServiceState;Lmediatek/telephony/MtkServiceState;)Lmediatek/telephony/MtkServiceState;

    move-result-object v0

    return-object v0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v0

    .line 518
    :cond_3
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    return-object v0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .line 5336
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 5337
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 5338
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 5339
    return-object v0

    .line 5345
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 5346
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getHandoverConnectionSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 5347
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0

    .line 5351
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .locals 3

    .line 5436
    const/4 v0, 0x0

    .line 5437
    .local v0, "subscriberId":Ljava/lang/String;
    nop

    .line 5438
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 5439
    .local v1, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    if-eqz v1, :cond_0

    .line 5440
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 5442
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5443
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 5445
    :cond_1
    return-object v0
.end method

.method public blacklist getSuggestedPlmnList(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "rat"    # I
    .param p2, "num"    # I
    .param p3, "timer"    # I
    .param p4, "onCompleted"    # Landroid/os/Message;

    .line 5454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getSuggestedPlmnList(IIILandroid/os/Message;)V

    .line 5455
    return-void
.end method

.method public blacklist getTbcwMode()I
    .locals 1

    .line 3168
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V

    .line 3169
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    return v0
.end method

.method public blacklist getTerminalBasedCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 3193
    const-string v0, "MtkGsmCdmaPhone"

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Landroid/os/Message;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 3226
    .local v1, "future":Ljava/util/concurrent/Future;
    const/4 v2, 0x0

    .line 3228
    .local v2, "result":Z
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v2, v3

    .line 3229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTerminalBasedCallWaiting future get = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3232
    goto :goto_0

    .line 3230
    :catch_0
    move-exception v3

    .line 3231
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getTerminalBasedCallWaiting Exception occured"

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getTimeSlot()[J
    .locals 14

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2683
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2684
    .local v2, "timeSlotString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2685
    .local v3, "timeSlot":[J
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2686
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2687
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2688
    new-array v3, v5, [J

    .line 2689
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 2690
    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 2691
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 2692
    .local v6, "calenar":Ljava/util/Calendar;
    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2693
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2694
    .local v8, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 2695
    .local v10, "min":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 2696
    .local v11, "calenar2":Ljava/util/Calendar;
    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 2697
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 2698
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    aput-wide v12, v3, v4

    .line 2689
    .end local v6    # "calenar":Ljava/util/Calendar;
    .end local v8    # "hour":I
    .end local v10    # "min":I
    .end local v11    # "calenar2":Ljava/util/Calendar;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2702
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeSlot = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    return-object v3
.end method

.method public blacklist handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 2124
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2125
    const-string v0, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2126
    return v1

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2130
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 2131
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 2135
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2136
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2140
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2141
    return v1

    .line 2144
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2145
    return v1

    .line 2148
    :cond_3
    const/4 v2, 0x0

    .line 2149
    .local v2, "result":Z
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2150
    .local v1, "ch":C
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2172
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2173
    goto :goto_0

    .line 2169
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2170
    goto :goto_0

    .line 2166
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2167
    goto :goto_0

    .line 2163
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2164
    goto :goto_0

    .line 2160
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2161
    goto :goto_0

    .line 2156
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleUdubIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2158
    nop

    .line 2178
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1343
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    const/16 v4, 0x2d

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v0, v5, :cond_49

    const/16 v7, 0x10

    if-eq v0, v7, :cond_44

    const/16 v7, 0x12

    if-eq v0, v7, :cond_3d

    const/16 v7, 0x19

    if-eq v0, v7, :cond_3a

    const/16 v7, 0x1d

    if-eq v0, v7, :cond_39

    if-eq v0, v4, :cond_49

    const/16 v4, 0xc

    if-eq v0, v4, :cond_2b

    const/16 v4, 0xd

    if-eq v0, v4, :cond_28

    const/16 v5, 0x12d

    if-eq v0, v5, :cond_21

    const/16 v5, 0x12e

    if-eq v0, v5, :cond_1c

    const/16 v5, 0x7d0

    if-eq v0, v5, :cond_1b

    const/16 v5, 0x7d1

    if-eq v0, v5, :cond_1a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 2038
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_16

    .line 1894
    :pswitch_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_GET_CALL_BARRING_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1897
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_3

    .line 1898
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1899
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1900
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CALL_BARRING_COMPLETE: cmdException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1903
    if-eqz v1, :cond_3

    .line 1904
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1912
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1913
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1914
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1916
    nop

    .line 1917
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1918
    .local v3, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1919
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1920
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1921
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create OEM error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", msg ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 1905
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1906
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 1910
    :cond_2
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_3
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1935
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_50

    .line 1936
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1937
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1846
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :pswitch_1
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_SET_CALL_BARRING_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1849
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6

    .line 1850
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1851
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1852
    .restart local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SET_CALL_BARRING_COMPLETE: cmdException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1855
    if-eqz v1, :cond_6

    .line 1856
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1857
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1858
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_2

    .line 1862
    :cond_4
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1864
    :cond_5
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1865
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1866
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1868
    nop

    .line 1869
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1870
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1871
    .restart local v4    # "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1872
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1873
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create OEM error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", msg ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1886
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1887
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_50

    .line 1888
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1889
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1798
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :pswitch_2
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_GET_CLIR_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1801
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_a

    .line 1802
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1803
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1804
    .restart local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CLIR_COMPLETE: cmdException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1807
    if-eqz v1, :cond_a

    .line 1808
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 1816
    :cond_7
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1817
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1818
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1820
    nop

    .line 1821
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1822
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1823
    .restart local v4    # "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 1824
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1825
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create OEM error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", msg ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_4

    .line 1809
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1810
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_4

    .line 1814
    :cond_9
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_a
    :goto_4
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1839
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_50

    .line 1840
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1841
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1345
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1346
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1347
    .local v1, "response":[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v3, :cond_50

    .line 1348
    new-instance v4, Landroid/os/AsyncResult;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v2, v5, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1349
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_16

    .line 2013
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "response":[B
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_b

    .line 2014
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2016
    :cond_b
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_SET_SS_PROPERTY done"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    goto/16 :goto_16

    .line 1421
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1422
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;

    .line 1426
    .local v2, "noti":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    iget v3, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->code:I

    if-ne v3, v1, :cond_c

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[COLP]noti.number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_c

    .line 1432
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    .line 1433
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1434
    .local v1, "cn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    if-eqz v1, :cond_c

    .line 1435
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1436
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1437
    iget-object v3, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setRedirectingAddress(Ljava/lang/String;)V

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[COLP]Redirecting address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getRedirectingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1438
    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    .end local v1    # "cn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    :cond_c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 1446
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 1448
    :cond_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1449
    goto/16 :goto_16

    .line 1400
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "noti":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    :pswitch_6
    const-string v0, "Event EVENT_SSN_EX Received"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1402
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1403
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;

    .line 1405
    .local v1, "not":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    iget v4, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->notificationType:I

    if-ne v4, v3, :cond_11

    .line 1406
    iget v3, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    if-eqz v3, :cond_f

    iget v3, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_e

    goto :goto_5

    .line 1414
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected SSN_EX code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 1408
    :cond_f
    :goto_5
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 1409
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 1410
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 1412
    :cond_10
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1417
    .end local v1    # "not":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    :cond_11
    :goto_6
    goto/16 :goto_16

    .line 1354
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "handle EVENT_GET_APC_INFO"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1356
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;

    .line 1357
    .local v1, "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    if-nez v1, :cond_12

    .line 1358
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "EVENT_GET_APC_INFO: result return null"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return-void

    .line 1361
    :cond_12
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1362
    :try_start_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_13

    .line 1363
    const-string v4, "MtkGsmCdmaPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_APC_INFO: error ret null, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iput-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    goto :goto_7

    .line 1366
    :cond_13
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1367
    .local v2, "msgs":[I
    new-instance v4, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v4, v2}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>([I)V

    iput-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 1369
    .end local v2    # "msgs":[I
    :goto_7
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1370
    monitor-exit v3

    .line 1371
    goto/16 :goto_16

    .line 1370
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2001
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2002
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 2003
    .local v1, "rc_unsol":Lcom/android/internal/telephony/RadioCapability;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_14

    .line 2004
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "RIL_UNSOL_RADIO_CAPABILITY fail, don\'t change capability"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2006
    :cond_14
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 2008
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UNSOL_RADIO_CAPABILITY_CHANGED: rc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    goto/16 :goto_16

    .line 1609
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "rc_unsol":Lcom/android/internal/telephony/RadioCapability;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1610
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1611
    .local v1, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;

    .line 1612
    .local v2, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_16

    if-eqz v1, :cond_16

    .line 1613
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_15

    move v6, v3

    :cond_15
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1614
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mSetTimeSlot:[J

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 1616
    :cond_16
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    if-eqz v3, :cond_50

    .line 1617
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1618
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1568
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1570
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_17

    .line 1573
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCfuInTimeSlotQueryResult([Lcom/mediatek/internal/telephony/MtkCallForwardInfo;)V

    .line 1575
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]msg.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_19

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_19

    .line 1578
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1579
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE] cmdException error:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1579
    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_18

    if-eqz v1, :cond_18

    .line 1583
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_18

    .line 1585
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1586
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_18

    .line 1587
    nop

    .line 1588
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1587
    invoke-virtual {p0, v6, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1592
    :cond_18
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1593
    if-eqz v1, :cond_19

    .line 1594
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_19

    .line 1595
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1601
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_19
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1602
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_50

    .line 1603
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1604
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1948
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_1a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleImsUtCsfb(Landroid/os/Message;)V

    .line 1949
    goto/16 :goto_16

    .line 1942
    :cond_1b
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_IMS_UT_DONE: Enter"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleImsUtDone(Landroid/os/Message;)V

    .line 1945
    goto/16 :goto_16

    .line 1690
    :cond_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1691
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1692
    .restart local v1    # "onComplete":Landroid/os/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_CALL_WAITING_DONE: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1e

    .line 1695
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1696
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1697
    .local v2, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 1698
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1699
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 1700
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1702
    nop

    .line 1703
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v4

    .line 1704
    .local v4, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v5, 0x0

    .line 1705
    .local v5, "errorMsg":Ljava/lang/String;
    if-eqz v4, :cond_1d

    .line 1706
    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v5

    .line 1707
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MtkGsmCdmaPhone"

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v6, v3, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1718
    .end local v2    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v4    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :cond_1d
    if-eqz v1, :cond_50

    .line 1719
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1720
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1721
    goto/16 :goto_16

    .line 1724
    :cond_1e
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1725
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_1f

    goto :goto_9

    :cond_1f
    move v3, v6

    :goto_9
    move v2, v3

    .line 1726
    .local v2, "enable":Z
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1727
    .end local v2    # "enable":Z
    goto/16 :goto_16

    .line 1728
    :cond_20
    if-eqz v1, :cond_50

    .line 1729
    invoke-static {v1, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1730
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1623
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1624
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EVENT_GET_CALL_WAITING_]ar.exception = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1627
    .restart local v1    # "onComplete":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_26

    .line 1628
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1633
    .local v4, "cwArray":[I
    :try_start_1
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_CALL_WAITING_DONE cwArray[0]:cwArray[1] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    aget v5, v4, v6

    if-ne v5, v3, :cond_22

    aget v5, v4, v3

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_22

    goto :goto_a

    :cond_22
    move v3, v6

    .line 1639
    .local v3, "csEnable":Z
    :goto_a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1640
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1643
    :cond_23
    if-eqz v1, :cond_24

    .line 1644
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v1, v5, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1645
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1646
    goto/16 :goto_16

    .line 1656
    .end local v3    # "csEnable":Z
    :cond_24
    goto :goto_b

    .line 1648
    :catch_0
    move-exception v3

    .line 1649
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_CALL_WAITING_DONE: improper result: err ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1649
    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    if-eqz v1, :cond_25

    .line 1652
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v1, v5, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1653
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1654
    goto/16 :goto_16

    .line 1657
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "cwArray":[I
    :cond_25
    :goto_b
    goto/16 :goto_16

    .line 1658
    :cond_26
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1659
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1660
    .local v2, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 1661
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1662
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 1663
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1665
    nop

    .line 1666
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v4

    .line 1667
    .local v4, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v5, 0x0

    .line 1668
    .restart local v5    # "errorMsg":Ljava/lang/String;
    if-eqz v4, :cond_27

    .line 1669
    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v5

    .line 1670
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_27

    .line 1671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MtkGsmCdmaPhone"

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v6, v3, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1681
    .end local v2    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v4    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :cond_27
    if-eqz v1, :cond_50

    .line 1682
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1683
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1684
    goto/16 :goto_16

    .line 1454
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1456
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1457
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    goto :goto_c

    .line 1459
    :cond_29
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1460
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1461
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1462
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1463
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1464
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1466
    nop

    .line 1467
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1468
    .local v3, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1469
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 1470
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1471
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create OEM error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", msg ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1482
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_2a
    :goto_c
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1483
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_50

    .line 1484
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1485
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1491
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_2b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1492
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1493
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1494
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    .line 1495
    .local v2, "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2d

    if-eqz v1, :cond_2d

    .line 1496
    iget v4, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mServiceClass:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2e

    .line 1497
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_2c

    move v6, v3

    :cond_2c
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_d

    .line 1500
    :cond_2d
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 1501
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 1502
    .local v3, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 1503
    .local v4, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1504
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 1505
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1507
    nop

    .line 1508
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v5

    .line 1509
    .local v5, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v6, 0x0

    .line 1510
    .local v6, "errorMsg":Ljava/lang/String;
    if-eqz v5, :cond_2e

    .line 1511
    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v6

    .line 1512
    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1513
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create OEM error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", msg ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MtkGsmCdmaPhone"

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    new-instance v7, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v7, v4, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1523
    .end local v3    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v5    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v6    # "errorMsg":Ljava/lang/String;
    :cond_2e
    :goto_d
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v3, :cond_50

    .line 1524
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1525
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1531
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    :cond_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1532
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1533
    .restart local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    .line 1534
    .restart local v2    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_38

    if-eqz v1, :cond_38

    .line 1539
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1540
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_35

    .line 1541
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1542
    .local v4, "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v4, :cond_33

    array-length v5, v4

    if-nez v5, :cond_30

    goto :goto_f

    .line 1545
    :cond_30
    const-string v5, "MtkGsmCdmaPhone"

    const-string v7, "[EVENT_SET_CALL_FORWARD_DONE] check cfinfo"

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    array-length v7, v4

    if-ge v5, v7, :cond_34

    .line 1547
    aget-object v7, v4, v5

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_32

    .line 1548
    aget-object v7, v4, v5

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v3, :cond_31

    move v6, v3

    :cond_31
    aget-object v7, v4, v5

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1550
    goto :goto_10

    .line 1546
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 1543
    .end local v5    # "i":I
    :cond_33
    :goto_f
    const-string v3, "MtkGsmCdmaPhone"

    const-string v5, "cfinfo is null or length is 0."

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    .end local v4    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_34
    :goto_10
    goto :goto_11

    .line 1555
    :cond_35
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "EVENT_SET_CALL_FORWARD_DONE: ar.result is null."

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1558
    :cond_36
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_37

    move v6, v3

    :cond_37
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1561
    :cond_38
    :goto_11
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v3, :cond_50

    .line 1562
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1563
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1737
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    :cond_39
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_ICC_RECORD_EVENTS"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1739
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->processIccRecordEvents(I)V

    .line 1741
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v1

    .line 1742
    .local v1, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    if-eqz v1, :cond_50

    .line 1743
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setIccRecordsReady()V

    goto/16 :goto_16

    .line 1979
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    :cond_3a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1980
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInEcm()Z

    move-result v0

    .line 1981
    .local v0, "inEcm":Z
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1982
    if-nez v0, :cond_3b

    .line 1989
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    .line 1990
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1992
    .end local v0    # "inEcm":Z
    :cond_3b
    goto/16 :goto_16

    .line 1994
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1996
    goto/16 :goto_16

    .line 1748
    :cond_3d
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_SET_CLIR_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1750
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3e

    .line 1751
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveClirSetting(I)V

    .line 1754
    :cond_3e
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_43

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_43

    .line 1755
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1756
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1757
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SET_CLIR_COMPLETE: cmdException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1760
    if-eqz v1, :cond_43

    .line 1761
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-nez v3, :cond_3f

    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1762
    :cond_3f
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1763
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_12

    .line 1766
    :cond_40
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1767
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 1768
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1770
    nop

    .line 1771
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1772
    .local v3, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1773
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_41

    .line 1774
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1775
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create OEM error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", msg ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1782
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_41
    goto :goto_12

    .line 1784
    :cond_42
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_43
    :goto_12
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1791
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_50

    .line 1792
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1793
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_16

    .line 1956
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_44
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1957
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1958
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1960
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v1, "persist.vendor.radio.disable_auto_return_rplmn"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_45

    .line 1961
    move v1, v3

    goto :goto_13

    :cond_45
    move v1, v6

    .line 1962
    .local v1, "disable_auto_return_rplmn":Z
    :goto_13
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 1964
    .local v4, "restoreSelection":Z
    if-nez v0, :cond_46

    move v3, v6

    goto :goto_14

    .line 1965
    :cond_46
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_47

    move v3, v6

    :cond_47
    :goto_14
    nop

    .line 1966
    .local v3, "exception":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET_NETWORK_MANUAL_COMPLETE, restoreSelection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", disable_auto_return_rplmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    if-nez v4, :cond_48

    if-eqz v3, :cond_48

    if-nez v1, :cond_48

    .line 1971
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearSavedNetworkSelection()V

    .line 1972
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1974
    .end local v1    # "disable_auto_return_rplmn":Z
    .end local v3    # "exception":Z
    .end local v4    # "restoreSelection":Z
    :cond_48
    goto :goto_16

    .line 2026
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_49
    const-string v0, "(unknown msg)"

    .line 2027
    .local v0, "msgStr":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_4a

    .line 2028
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    goto :goto_15

    .line 2029
    :cond_4a
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_4b

    .line 2030
    const-string v0, "EVENT_MODEM_RESET"

    .line 2032
    :cond_4b
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "received."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-virtual {p0, v6, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    .line 2034
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 2035
    goto :goto_16

    .line 2020
    .end local v0    # "msgStr":Ljava/lang/String;
    :cond_4c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 2021
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateVoiceMail()V

    .line 2022
    goto :goto_16

    .line 1374
    :cond_4d
    const-string v0, "Event EVENT_SSN Received"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1377
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1380
    .local v1, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget v4, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v4, v3, :cond_4e

    .line 1381
    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-nez v3, :cond_4e

    .line 1382
    const-string v2, "skip AOSP event for MT forwarded call notification"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1383
    goto :goto_16

    .line 1388
    :cond_4e
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 1390
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-nez v2, :cond_4f

    .line 1391
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 1394
    :cond_4f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2041
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_50
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2338
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v0

    .local v0, "mmi":Lcom/android/internal/telephony/MmiCode;
    goto :goto_0

    .line 2341
    .end local v0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 2344
    .restart local v0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2345
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mmi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dumpPendingMmi()V

    .line 2348
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2350
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    goto :goto_1

    .line 2351
    :catch_0
    move-exception v1

    .line 2354
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 2356
    :cond_1
    const-string v1, "Mmi is null or unrecognized!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2357
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupAll()V

    .line 1054
    return-void
.end method

.method protected blacklist initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 532
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 535
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-nez v0, :cond_0

    .line 539
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x3ea

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x3eb

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x3ed

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 544
    return-void
.end method

.method protected blacklist initRatSpecific(I)V
    .locals 2
    .param p1, "precisePhoneType"    # I

    .line 5106
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 5107
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5109
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getInEcmMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 5110
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsPhoneInEcmState:Z

    if-eqz v0, :cond_0

    .line 5112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 5115
    :cond_0
    return-void
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 5219
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5220
    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 5305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 5306
    return-void
.end method

.method public blacklist isCdmaLessDevice()Z
    .locals 5

    .line 5280
    const/4 v0, 0x0

    .line 5281
    .local v0, "isCdmaLess":Z
    const-string v1, "persist.vendor.vzw_device_type"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5282
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5283
    :cond_0
    const/4 v0, 0x1

    .line 5285
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaLess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5286
    return v0
.end method

.method protected blacklist isDataSuspended()Z
    .locals 2

    .line 524
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 525
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 528
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isDataSuspended()Z

    move-result v1

    return v1
.end method

.method public blacklist isDuringImsCall()Z
    .locals 7

    .line 3875
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3876
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3877
    .local v0, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3878
    .local v2, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3879
    .local v3, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 3880
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    .line 3881
    .local v4, "isDuringImsCall":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 3882
    const-string v1, "MtkGsmCdmaPhone"

    const-string v6, "During IMS call."

    invoke-static {v1, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    return v5

    .line 3886
    .end local v0    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v2    # "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    .end local v4    # "isDuringImsCall":Z
    :cond_2
    return v1
.end method

.method public blacklist isDuringImsEccCall()Z
    .locals 3

    .line 3897
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3898
    .local v0, "isInImsEccCall":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInImsEccCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    return v0
.end method

.method public blacklist isDuringVoLteCall()Z
    .locals 4

    .line 3890
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3891
    .local v0, "isOnLtePdn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsCall()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3892
    .local v1, "r":Z
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDuringVoLteCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    return v1
.end method

.method public blacklist isEccSelectedPhone()Z
    .locals 1

    .line 5500
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    return v0
.end method

.method public blacklist isEnableXcapHttpResponse409()Z
    .locals 5

    .line 4398
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4399
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4400
    const-string v2, "isEnableXcapHttpResponse409, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    const/4 v1, 0x0

    return v1

    .line 4404
    :cond_0
    const/4 v2, 0x0

    .line 4405
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isEnableXcapHttpResponse409(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4406
    const/4 v2, 0x1

    .line 4408
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableXcapHttpResponse409: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    return v2
.end method

.method public blacklist isGsmSsPrefer()Z
    .locals 2

    .line 4931
    const-string v0, "persist.vendor.mtk_ct_volte_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 4932
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP117:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4933
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4935
    :cond_2
    return v1
.end method

.method public blacklist isGsmUtSupport()Z
    .locals 8

    .line 4229
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4230
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4231
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "isGsmUtSupport, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    return v1

    .line 4235
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 4236
    .local v2, "isRoaming":Z
    const-string v3, "persist.vendor.ims_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4237
    const-string v3, "persist.vendor.volte_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4238
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isGsmUtSupport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4239
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4240
    .local v3, "isWfcEnable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v5

    .line 4241
    .local v5, "isWfcUtSupport":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in isGsmUtSupport isWfcEnable -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isWfcUtSupport-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNeedCheckImsWhenRoaming(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 4244
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isIMSRegistered()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in isGsmUtSupport isRoaming -->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isIMSRegistered-->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isIMSRegistered()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4245
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4247
    return v1

    .line 4249
    :cond_2
    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 4250
    return v1

    .line 4252
    :cond_3
    return v4

    .line 4254
    .end local v3    # "isWfcEnable":Z
    .end local v5    # "isWfcUtSupport":Z
    :cond_4
    return v1
.end method

.method public blacklist isIMSRegistered()Z
    .locals 2

    .line 4885
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v0

    .line 4886
    .local v0, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    if-eqz v0, :cond_0

    .line 4887
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getIMSRegistered()Z

    move-result v1

    return v1

    .line 4889
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isImsUseEnabled()Z
    .locals 7

    .line 5021
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 5022
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    nop

    .line 5023
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    .line 5024
    .local v1, "isEnhanced4gLteModeSettingEnabledByUser":Z
    const/4 v2, 0x1

    .line 5025
    .local v2, "isWfcEnabledByUser":Z
    const/4 v3, 0x1

    .line 5028
    .local v3, "isNonTtyOrTtyOnVolteEnabled":Z
    if-nez v1, :cond_0

    .line 5029
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    .line 5030
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    .line 5032
    :cond_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 5034
    .local v4, "imsUseEnabled":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImsUseEnabled() VolteEnableByUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", WfcEnableByUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNonTtyOrTtyOnVolteEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    return v4
.end method

.method protected blacklist isImsUtEnabledOverCdma()Z
    .locals 2

    .line 2362
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2363
    return v1

    .line 2366
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2368
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2366
    :goto_0
    return v1
.end method

.method blacklist isInCSCall()Z
    .locals 4

    .line 1064
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1065
    .local v0, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1066
    .local v1, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCSRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1068
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1069
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1070
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1068
    :goto_1
    return v3
.end method

.method public blacklist isNoNeedToCSFBWhenIMSRegistered()Z
    .locals 1

    .line 4757
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public blacklist isNotSupportUtToCS()Z
    .locals 3

    .line 4471
    const/4 v0, 0x0

    .line 4472
    .local v0, "r":Z
    const-string v1, "persist.vendor.mtk_ct_volte_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 4473
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP117:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4474
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4475
    const/4 v0, 0x1

    .line 4477
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotSupportUtToCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    return v0
.end method

.method public blacklist isNotSupportUtToCSforCFUQuery()Z
    .locals 1

    .line 4753
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v0

    return v0
.end method

.method public blacklist isNrMapEnabled()Z
    .locals 1

    .line 5483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/NrMap;->isNrMapEnabled()Z

    move-result v0

    return v0

    .line 5484
    :cond_0
    const-string v0, "isNrMapEnabled mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5485
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOp129DunChange()Z
    .locals 2

    .line 5464
    nop

    .line 5465
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 5466
    .local v0, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    if-eqz v0, :cond_0

    .line 5467
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp129DunChange()Z

    move-result v1

    return v1

    .line 5469
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isOpNotSupportCallIdentity()Z
    .locals 5

    .line 4428
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4429
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4430
    const-string v2, "isOpNotSupportCallIdentity, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    const/4 v1, 0x0

    return v1

    .line 4434
    :cond_0
    const/4 v2, 0x0

    .line 4435
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportCallIdentity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4436
    const/4 v2, 0x1

    .line 4438
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpNotSupportCallIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    return v2
.end method

.method public blacklist isOpNotSupportOCB(Ljava/lang/String;)Z
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;

    .line 4324
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4325
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4326
    const-string v2, "isOpNotSupportOCB, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    const/4 v1, 0x0

    return v1

    .line 4330
    :cond_0
    const/4 v2, 0x0

    .line 4331
    .local v2, "r":Z
    const/4 v3, 0x0

    .line 4332
    .local v3, "isOcb":Z
    const-string v4, "AO"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4333
    const-string v4, "OI"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4334
    const-string v4, "OX"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4335
    :cond_1
    const/4 v3, 0x1

    .line 4337
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportOCB(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4338
    const/4 v2, 0x1

    .line 4340
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpNotSupportOCB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", facility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    return v2
.end method

.method public blacklist isOpNwCW()Z
    .locals 5

    .line 4380
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4381
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4382
    const-string v2, "isOpNwCW, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    const/4 v1, 0x0

    return v1

    .line 4386
    :cond_0
    const/4 v2, 0x0

    .line 4387
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isImsNwCW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4388
    const/4 v2, 0x1

    .line 4390
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpNwCW():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    return v2
.end method

.method public blacklist isOpReregisterForCF()Z
    .locals 5

    .line 4443
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4444
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4445
    const-string v2, "isOpReregisterForCF, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    const/4 v1, 0x0

    return v1

    .line 4449
    :cond_0
    const/4 v2, 0x0

    .line 4450
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isReregisterForCF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4451
    const/4 v2, 0x1

    .line 4453
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpReregisterForCF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    return v2
.end method

.method public blacklist isOpTbClir()Z
    .locals 5

    .line 4364
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4365
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4366
    const-string v2, "isOpTbClir, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    const/4 v1, 0x0

    return v1

    .line 4370
    :cond_0
    const/4 v2, 0x0

    .line 4371
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isTbClir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4372
    const/4 v2, 0x1

    .line 4374
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpTbClir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    return v2
.end method

.method public blacklist isOpTbcwWithCS()Z
    .locals 5

    .line 4348
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4349
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4350
    const-string v2, "isOpTbcwWithCS, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    const/4 v1, 0x0

    return v1

    .line 4354
    :cond_0
    const/4 v2, 0x0

    .line 4355
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportXcap(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4356
    const/4 v2, 0x1

    .line 4358
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpTbcwWithCS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    return v2
.end method

.method public blacklist isOpTransferXcap404()Z
    .locals 5

    .line 4413
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4414
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4415
    const-string v2, "isOpTransferXcap404, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    const/4 v1, 0x0

    return v1

    .line 4419
    :cond_0
    const/4 v2, 0x0

    .line 4420
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isTransferXcap404(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4421
    const/4 v2, 0x1

    .line 4423
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpTransferXcap404: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    return v2
.end method

.method public blacklist isResetCSFBStatusAfterFlightMode()Z
    .locals 1

    .line 4761
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportCFUTimeSlot()Z
    .locals 3

    .line 4744
    const/4 v0, 0x0

    .line 4745
    .local v0, "r":Z
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4746
    const/4 v0, 0x1

    .line 4748
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportCFUTimeSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    return v0
.end method

.method public blacklist isSupportSaveCFNumber()Z
    .locals 5

    .line 4535
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4536
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4537
    const-string v2, "isSupportSaveCFNumber, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    const/4 v1, 0x0

    return v1

    .line 4541
    :cond_0
    const/4 v2, 0x0

    .line 4542
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isSupportSaveCFNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4543
    const/4 v2, 0x1

    .line 4545
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportSaveCFNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    return v2
.end method

.method public blacklist isWFCUtSupport()Z
    .locals 4

    .line 4263
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4264
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4265
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "isWFCUtSupport, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    return v1

    .line 4269
    :cond_0
    const-string v2, "persist.vendor.ims_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4270
    const-string v2, "persist.vendor.mtk_wfc_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4271
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportWFCUt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4272
    return v1

    .line 4274
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4277
    :cond_2
    return v1
.end method

.method public blacklist iwlanSetRegisterCellularQualityReport(II[ILandroid/os/Message;)V
    .locals 1
    .param p1, "qualityRegister"    # I
    .param p2, "type"    # I
    .param p3, "values"    # [I
    .param p4, "result"    # Landroid/os/Message;

    .line 5450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->iwlanSetRegisterCellularQualityReport(II[ILandroid/os/Message;)V

    .line 5451
    return-void
.end method

.method public blacklist manuallySetNrMap(I)V
    .locals 1
    .param p1, "i"    # I

    .line 5478
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/NrMap;->manuallySetNrMap(I)V

    goto :goto_0

    .line 5479
    :cond_0
    const-string v0, "manuallySetNrMap mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5480
    :goto_0
    return-void
.end method

.method protected blacklist needResetPhbIntMgr()Z
    .locals 1

    .line 5066
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyCallForwardingIndicator()V
    .locals 4

    .line 2314
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2315
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 2316
    .local v1, "simState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallForwardingIndicator: sim state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2322
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 2324
    :cond_0
    return-void
.end method

.method public blacklist notifyCallForwardingIndicatorWithoutCheckSimState()V
    .locals 2

    .line 2331
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "notifyCallForwardingIndicatorWithoutCheckSimState"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 2333
    return-void
.end method

.method protected blacklist notifyImsPhoneHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .line 5656
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 5657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 5659
    :cond_0
    return-void
.end method

.method public blacklist notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V
    .locals 1
    .param p1, "ss"    # Lmediatek/telephony/MtkServiceState;

    .line 5407
    if-nez p1, :cond_0

    .line 5408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    goto :goto_0

    .line 5410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    .line 5411
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Lmediatek/telephony/MtkServiceState;)V

    .line 5413
    :goto_0
    return-void
.end method

.method public blacklist notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V
    .locals 1
    .param p1, "ss"    # Lmediatek/telephony/MtkServiceState;

    .line 5419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Lmediatek/telephony/MtkServiceState;)V

    .line 5423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 5424
    .local v0, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    if-eqz v0, :cond_0

    .line 5425
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 5428
    :cond_0
    return-void
.end method

.method public blacklist notifyMtkSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .line 5431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkSignalStrength(Lcom/android/internal/telephony/Phone;Landroid/telephony/SignalStrength;)V

    .line 5432
    return-void
.end method

.method public blacklist notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 5395
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 5396
    .local v0, "mtkSST":Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    if-eqz v1, :cond_0

    .line 5397
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 5399
    :cond_0
    const-string v1, "notifyServiceStateChanged, skip"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5401
    :goto_0
    return-void
.end method

.method protected blacklist onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 6
    .param p1, "fromRil"    # Landroid/os/Message;

    .line 4941
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4942
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 4943
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x1

    .line 4944
    .local v2, "doAutomatic":Z
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 4946
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 4947
    .local v3, "modes":[I
    const/4 v4, 0x0

    aget v4, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 4949
    const/4 v2, 0x0

    .line 4963
    .end local v3    # "modes":[I
    :cond_0
    goto :goto_0

    .line 4961
    :catch_0
    move-exception v3

    .line 4969
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 4970
    .local v3, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object v1, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 4971
    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 4972
    iput-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 4973
    iput-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 4975
    if-eqz v2, :cond_2

    .line 4976
    const/16 v4, 0x11

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4977
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 4978
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 4979
    :cond_2
    const-string v4, "MtkGsmCdmaPhone"

    const-string v5, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    iget-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v4, :cond_3

    .line 4983
    iget-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 4986
    :cond_3
    iput-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 4987
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 4990
    :goto_1
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    .line 4991
    return-void
.end method

.method protected blacklist onIncomingUSSD(ILjava/lang/String;)V
    .locals 7
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 4174
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4175
    const-string v0, "onIncomingUSSD: not expected on GSM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 4181
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 4184
    .local v2, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 4188
    .local v3, "isUssdError":Z
    :goto_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    move v0, v1

    .line 4194
    .local v0, "isUssdRelease":Z
    :cond_3
    const/4 v1, 0x0

    .line 4195
    .local v1, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 4196
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4197
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 4198
    goto :goto_3

    .line 4195
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4202
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 4203
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V

    goto :goto_4

    .line 4204
    :cond_6
    if-nez v3, :cond_7

    if-eqz p2, :cond_7

    .line 4205
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V

    goto :goto_4

    .line 4206
    :cond_7
    if-eqz v3, :cond_8

    .line 4208
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4211
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4208
    invoke-static {p2, v2, p0, v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v4

    .line 4212
    .local v4, "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    .line 4214
    .end local v4    # "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_8
    :goto_4
    return-void
.end method

.method protected blacklist onUpdateIccAvailability()V
    .locals 5

    .line 584
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onUpdateIccAvailability()V

    .line 586
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 587
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 590
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 591
    .local v3, "newIccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    if-ne v1, v0, :cond_3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_3

    .line 594
    if-eqz v1, :cond_2

    .line 596
    const-string v4, "Removing stale icc objects."

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 598
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 600
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 602
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 603
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 605
    :cond_2
    if-eqz v0, :cond_3

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Uicc application found. type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 610
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 611
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->registerForIccRecordEvents()V

    .line 612
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 618
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneTypeCdmaLte:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isCdmaWithoutLteCard: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mNewVoiceTech: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 621
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v2

    if-nez v2, :cond_5

    .line 622
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v2

    if-nez v2, :cond_6

    .line 623
    :cond_5
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updatePhoneObject(I)V

    .line 626
    :cond_6
    return-void
.end method

.method protected blacklist phoneObjectUpdater(I)V
    .locals 0
    .param p1, "newVoiceRadioTech"    # I

    .line 5224
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    .line 5225
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    .line 5226
    return-void
.end method

.method protected blacklist processIccRecordEvents(I)V
    .locals 2
    .param p1, "eventCode"    # I

    .line 4766
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 4772
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    goto :goto_0

    .line 4768
    :cond_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "processIccRecordEvents"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 4770
    nop

    .line 4774
    :goto_0
    return-void
.end method

.method public blacklist queryCFUAgainAfterSet()Z
    .locals 5

    .line 4729
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4730
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_0

    .line 4731
    const-string v2, "queryCFUAgainAfterSet, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    const/4 v1, 0x0

    return v1

    .line 4735
    :cond_0
    const/4 v2, 0x0

    .line 4736
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isQueryCFUAgainAfterSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4737
    const/4 v2, 0x1

    .line 4739
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCFUAgainAfterSet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    return v2
.end method

.method public blacklist queryFemtoCellSystemSelectionMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 942
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "queryFemtoCellSystemSelectionMode()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryFemtoCellSystemSelectionMode(Landroid/os/Message;)V

    .line 944
    return-void
.end method

.method public blacklist queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2205
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2206
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2207
    invoke-static {p2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->getPhbRecordInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 2210
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 2212
    :goto_0
    return-void
.end method

.method protected blacklist reapplyUiccAppsEnablementIfNeeded(I)V
    .locals 6
    .param p1, "retries"    # I

    .line 5542
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    .line 5544
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 5546
    .local v0, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5558
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 5559
    .local v1, "iccId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 5560
    const-string v2, "reapplyUiccAppsEnablementIfNeeded(), iccid is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5561
    return-void

    .line 5564
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 5565
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5564
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 5567
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v3

    .line 5568
    .local v3, "expectedValue":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reapplyUiccAppsEnablementIfNeeded(), expectedValue ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,mUiccApplicationsEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ,iccId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5570
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5568
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5571
    return-void

    .line 5548
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "expectedValue":Z
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 5549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reapplyUiccAppsEnablementIfNeeded(), slot is null ,mUiccApplicationsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 5552
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reapplyUiccAppsEnablementIfNeeded(), CardState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mUiccApplicationsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5555
    :goto_2
    return-void
.end method

.method public blacklist registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1083
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1084
    return-void
.end method

.method public blacklist registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2086
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2087
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 2091
    :cond_0
    return-void
.end method

.method public blacklist registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2221
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2222
    return-void
.end method

.method public blacklist registerForOemIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5648
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5649
    return-void
.end method

.method public blacklist registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 2110
    :cond_0
    return-void
.end method

.method public blacklist registerImsEventForConcurrency()V
    .locals 2

    .line 491
    const-string v0, "registerImsEventForConcurrency"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 494
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-eqz v0, :cond_0

    .line 495
    const-string v1, "notify dcHelper.registerImsEvents"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->registerImsEvents(I)V

    .line 499
    :cond_0
    return-void
.end method

.method public blacklist resetAllPhoneEccRadioOnStatus()V
    .locals 6

    .line 5518
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5519
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v5, :cond_0

    .line 5520
    move-object v5, v4

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v2, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    .line 5518
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5523
    :cond_1
    return-void
.end method

.method public blacklist resetCachedCrss()V
    .locals 2

    .line 5534
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ResetCachedCrss()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 5536
    return-void
.end method

.method public blacklist saveTimeSlot([J)V
    .locals 5
    .param p1, "timeSlot"    # [J

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2673
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    .line 2674
    .local v1, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2677
    :cond_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeSlotString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    return-void
.end method

.method public blacklist selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V

    .line 935
    return-void
.end method

.method public blacklist selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 6
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 807
    new-instance v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 808
    .local v0, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 809
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 811
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 813
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 814
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTK GSMPhone selectNetworkManuallyWithAct:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "2G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 820
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 821
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 825
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "4G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 829
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "5G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 830
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "11"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 833
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v4

    .line 833
    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 837
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    .line 840
    :goto_0
    if-eqz p2, :cond_5

    .line 841
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    goto :goto_1

    .line 843
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearSavedNetworkSelection()V

    .line 846
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateManualNetworkSelection(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    .line 847
    return-void
.end method

.method blacklist sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 4777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendErrorResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    if-eqz p1, :cond_0

    .line 4779
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4780
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4782
    :cond_0
    return-void
.end method

.method public blacklist sendExitEmergencyCallbackModeMessage()V
    .locals 2

    .line 5140
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "sendExitEmergencyCallbackModeMessage()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5141
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5142
    .local v0, "message":Landroid/os/Message;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 5143
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 5144
    return-void
.end method

.method public blacklist sendSubscriptionSettings(Z)V
    .locals 2
    .param p1, "restoreNetworkSelection"    # Z

    .line 714
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_0

    .line 715
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDeviceRatMode(I)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 723
    .local v0, "restoreSelection_config":Z
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 724
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 726
    :cond_1
    return-void
.end method

.method public blacklist setApcMode(IZI)V
    .locals 2
    .param p1, "apcMode"    # I
    .param p2, "reportOn"    # Z
    .param p3, "reportInterval"    # I

    .line 2044
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setApcMode(IZILandroid/os/Message;)V

    goto :goto_0

    .line 2047
    :cond_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "setApcMode: not possible in CDMA"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :goto_0
    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 3738
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3740
    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 3726
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v7

    .line 3727
    .local v7, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v7, :cond_0

    .line 3728
    nop

    .line 3729
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v6

    .line 3728
    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    goto :goto_0

    .line 3731
    :cond_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ssQueueHelper not exist, setCallBarring"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3734
    :goto_0
    return-void
.end method

.method public blacklist setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 3744
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3822
    :cond_0
    const-string v0, "method setFacilityLock is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3823
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3824
    return-void

    .line 3745
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3748
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallBarring enter, facility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lockState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    const/16 v1, 0x7d5

    invoke-virtual {p0, v1, p4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3754
    .local v8, "resp":Landroid/os/Message;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3755
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3756
    :cond_2
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3757
    return-void

    .line 3760
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3761
    return-void

    .line 3765
    .end local v8    # "resp":Landroid/os/Message;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 3767
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 3768
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3769
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3770
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3771
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3772
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3773
    return-void

    .line 3776
    :cond_7
    const/16 v1, 0x9

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v7

    .line 3778
    .local v7, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3779
    move v8, p2

    .line 3780
    .local v8, "enableState":I
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3782
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3783
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 3785
    .local v9, "imsUtResult":Landroid/os/Message;
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v9

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3786
    return-void

    .line 3789
    .end local v7    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v8    # "enableState":I
    .end local v9    # "imsUtResult":Landroid/os/Message;
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_9

    .line 3790
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3791
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3793
    return-void

    .line 3796
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3797
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3801
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3802
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3803
    return-void

    .line 3806
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3807
    :cond_c
    if-eqz p4, :cond_d

    .line 3808
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3809
    return-void

    .line 3813
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 3814
    .local v1, "checkError":Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_e

    if-eqz p4, :cond_e

    .line 3815
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3816
    return-void

    .line 3819
    :cond_e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3820
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v8

    .line 3819
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    move-object v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3821
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v1    # "checkError":Lcom/android/internal/telephony/CommandException;
    nop

    .line 3826
    return-void
.end method

.method public blacklist setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 18
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2777
    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2778
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v1

    check-cast v15, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2781
    .local v15, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x6e

    if-eqz v1, :cond_3

    .line 2782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallForwardInTimeSlot enter, CFReason:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CFAction:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dialingNumber:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timerSeconds:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    if-eqz v15, :cond_1

    .line 2787
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2788
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2789
    :cond_0
    move-object v1, v15

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    .line 2792
    return-void

    .line 2795
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v10, :cond_2

    .line 2798
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;

    invoke-direct {v1, v11, v13, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;-><init>(Ljava/lang/String;[JLandroid/os/Message;)V

    move-object v8, v1

    .line 2799
    .local v8, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    nop

    .line 2800
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v1

    .line 2799
    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2802
    .local v16, "resp":Landroid/os/Message;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v17, v8

    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .local v17, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 2810
    .end local v16    # "resp":Landroid/os/Message;
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :cond_2
    return-void

    .line 2814
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 2815
    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v15, :cond_5

    .line 2816
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 2817
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2818
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2819
    :cond_4
    const/16 v1, 0x11

    invoke-static {v1, v14}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v8

    .line 2821
    .local v8, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2824
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2825
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2826
    .local v16, "imsUtResult":Landroid/os/Message;
    move-object v1, v15

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    .line 2829
    return-void

    .line 2832
    .end local v8    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v16    # "imsUtResult":Landroid/os/Message;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v10, :cond_8

    .line 2835
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;

    invoke-direct {v1, v11, v13, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;-><init>(Ljava/lang/String;[JLandroid/os/Message;)V

    move-object v8, v1

    .line 2836
    .local v8, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    nop

    .line 2837
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v1

    .line 2836
    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2839
    .local v16, "resp":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_7

    .line 2840
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2841
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    const/4 v4, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v17, v8

    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    goto :goto_1

    .line 2840
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :cond_6
    move-object/from16 v17, v8

    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    goto :goto_0

    .line 2839
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :cond_7
    move-object/from16 v17, v8

    .line 2845
    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v14, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2848
    .end local v16    # "resp":Landroid/os/Message;
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :goto_1
    goto :goto_2

    .line 2849
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v14, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2851
    .end local v15    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :goto_2
    nop

    .line 2856
    return-void

    .line 2852
    :cond_9
    const-string v1, "method setCallForwardInTimeSlot is NOT supported in CDMA!"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2853
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v14, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2854
    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .line 2499
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2505
    return-void
.end method

.method public blacklist setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2513
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v8

    .line 2514
    .local v8, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v8, :cond_0

    .line 2515
    nop

    .line 2517
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v7

    .line 2515
    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;I)V

    goto :goto_0

    .line 2519
    :cond_0
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ssQueueHelper not exist, setCallForwardingOptionForServiceClass"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2524
    :goto_0
    return-void
.end method

.method public blacklist setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 18
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2534
    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2652
    :cond_0
    const-string v1, "setCallForwardingOption: not possible in CDMA"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2653
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2654
    return-void

    .line 2538
    :cond_1
    :goto_0
    iget v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    sget-object v2, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    .line 2539
    .local v13, "interfaceImpl":Lcom/android/internal/telephony/IOplusGsmCdmaPhone;
    move-object/from16 v1, p3

    invoke-interface {v13, v1}, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->handlePreCheckCFDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2542
    .end local p3    # "dialingNumber":Ljava/lang/String;
    .local v14, "dialingNumber":Ljava/lang/String;
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2545
    .local v15, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallForwardingOptionForServiceClass enter, CFAction:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CFReason:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dialingNumber:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    invoke-static {v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timerSeconds:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", serviceClass:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2546
    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    if-eqz v15, :cond_3

    .line 2552
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2553
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2554
    :cond_2
    move-object v1, v15

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v14

    move/from16 v5, p5

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2557
    return-void

    .line 2560
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2561
    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2564
    if-nez v9, :cond_4

    .line 2565
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    invoke-direct {v1, v14, v12, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;I)V

    .line 2566
    .local v1, "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    nop

    .line 2567
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v4

    .line 2566
    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2568
    .local v1, "resp":Landroid/os/Message;
    move-object/from16 v16, v1

    goto :goto_1

    .line 2569
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    move-object/from16 v1, p6

    move-object/from16 v16, v1

    .line 2571
    .local v16, "resp":Landroid/os/Message;
    :goto_1
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move-object v5, v14

    move/from16 v6, p4

    move-object/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2578
    .end local v16    # "resp":Landroid/os/Message;
    :cond_5
    return-void

    .line 2582
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_9

    if-eqz v15, :cond_9

    .line 2584
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2585
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2586
    :cond_7
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2587
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2588
    :cond_8
    const/16 v1, 0xb

    invoke-static {v1, v12}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v7

    .line 2590
    .local v7, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2591
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2593
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2594
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2595
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2596
    .local v16, "imsUtResult":Landroid/os/Message;
    move-object v1, v15

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v14

    move/from16 v5, p5

    move/from16 v6, p4

    move-object/from16 v17, v7

    .end local v7    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .local v17, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2599
    return-void

    .line 2602
    .end local v16    # "imsUtResult":Landroid/os/Message;
    .end local v17    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2603
    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2606
    if-nez v9, :cond_a

    .line 2607
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    invoke-direct {v1, v14, v12, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;I)V

    .line 2608
    .local v1, "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    nop

    .line 2609
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v4

    .line 2608
    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2610
    .local v1, "resp":Landroid/os/Message;
    move-object/from16 v16, v1

    goto :goto_2

    .line 2611
    .end local v1    # "resp":Landroid/os/Message;
    :cond_a
    move-object/from16 v1, p6

    move-object/from16 v16, v1

    .line 2614
    .local v16, "resp":Landroid/os/Message;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_c

    .line 2615
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2616
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 2617
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2618
    return-void

    .line 2620
    :cond_b
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move-object v5, v14

    move/from16 v6, p4

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2623
    return-void

    .line 2626
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 2627
    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 2631
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2632
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2633
    return-void

    .line 2637
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2638
    :cond_f
    if-eqz v12, :cond_10

    .line 2639
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2640
    return-void

    .line 2644
    :cond_10
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move-object v5, v14

    move/from16 v6, p4

    move-object/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2651
    .end local v13    # "interfaceImpl":Lcom/android/internal/telephony/IOplusGsmCdmaPhone;
    .end local v15    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v16    # "resp":Landroid/os/Message;
    :cond_11
    nop

    .line 2656
    return-void
.end method

.method public blacklist setCallSubAddress(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 5667
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallSubAddress(ZLandroid/os/Message;)V

    .line 5668
    return-void
.end method

.method public blacklist setCallWaiting(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3472
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 3473
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_0

    .line 3474
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setCallWaiting(ZLandroid/os/Message;I)V

    goto :goto_0

    .line 3476
    :cond_0
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, setCallWaiting"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingInternal(ZLandroid/os/Message;)V

    .line 3479
    :goto_0
    return-void
.end method

.method public blacklist setCallWaitingInternal(ZLandroid/os/Message;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3484
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3615
    :cond_0
    const-string v0, "method setCallWaiting is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3616
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3617
    return-void

    .line 3486
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3489
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const-string v2, "MtkGsmCdmaPhone"

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 3490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallWaiting enter, enable:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    if-eqz v0, :cond_3

    .line 3493
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3494
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3495
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3496
    return-void

    .line 3499
    :cond_3
    const/4 v1, 0x1

    .line 3500
    .local v1, "serviceClass":I
    nop

    .line 3501
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 3502
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 3503
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_4

    .line 3504
    const-string v6, "call_waiting_service_class_int"

    invoke-virtual {v5, v6, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3507
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallWaiting serviceClass = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3509
    return-void

    .line 3514
    .end local v1    # "serviceClass":I
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_10

    .line 3515
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    if-nez v1, :cond_6

    .line 3516
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V

    .line 3519
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallWaiting(): mTbcwMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", onComplete = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    if-eq v1, v3, :cond_f

    const/4 v5, 0x2

    if-eq v1, v5, :cond_b

    const/4 v5, 0x3

    if-eq v1, v5, :cond_7

    goto :goto_3

    .line 3551
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3552
    :cond_8
    if-eqz p2, :cond_9

    .line 3553
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3555
    return-void

    .line 3558
    :cond_9
    const/16 v1, 0x12e

    .line 3559
    if-ne p1, v3, :cond_a

    move v2, v3

    goto :goto_1

    :cond_a
    move v2, v4

    .line 3558
    :goto_1
    invoke-virtual {p0, v1, v2, v4, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3560
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3561
    return-void

    .line 3529
    .end local v1    # "resp":Landroid/os/Message;
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3530
    :cond_c
    if-eqz p2, :cond_d

    .line 3531
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3533
    return-void

    .line 3538
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3539
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_2

    .line 3542
    :cond_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3548
    :goto_2
    return-void

    .line 3525
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 3526
    return-void

    .line 3565
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_14

    if-eqz v0, :cond_14

    .line 3567
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_11

    .line 3568
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3569
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3570
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3571
    :cond_12
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3572
    const/16 v1, 0xd

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3574
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    move v2, p1

    .line 3575
    .local v2, "enableState":I
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3577
    .local v3, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3578
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "enableState":I
    .end local v3    # "imsUtResult":Landroid/os/Message;
    goto :goto_4

    .line 3579
    :cond_13
    const-string v1, "isOpTbCW(), setTerminalBasedCallWaiting(): IMS in service"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 3581
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 3582
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 3584
    :goto_4
    return-void

    .line 3587
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_15

    .line 3588
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3589
    const-string v1, "mMtkSSReqDecisionMaker.setCallWaiting"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3592
    return-void

    .line 3595
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-ne v1, v3, :cond_16

    .line 3596
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3599
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3600
    :cond_17
    if-eqz p2, :cond_18

    .line 3601
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3602
    return-void

    .line 3607
    :cond_18
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3608
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_5

    .line 3610
    :cond_19
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3614
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_5
    nop

    .line 3619
    return-void
.end method

.method public blacklist setCsFallbackStatus(I)V
    .locals 2
    .param p1, "newStatus"    # I

    .line 4866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCsFallbackStatus to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 4868
    return-void
.end method

.method public blacklist setDisable2G(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "mode"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 5230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisable2G "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setDisable2G(ZLandroid/os/Message;)V

    .line 5232
    return-void
.end method

.method public blacklist setEccRadioOnStatus(ZZ)V
    .locals 4
    .param p1, "isEccRadioOn"    # Z
    .param p2, "isSelectedPhoneForEmergencyCall"    # Z

    .line 5504
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    if-eq v0, p1, :cond_3

    .line 5505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ecc radio on status changed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5506
    const-string v1, "t"

    const-string v2, "f"

    if-eqz p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5507
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5505
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5508
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    .line 5509
    if-eqz p1, :cond_2

    .line 5510
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    goto :goto_2

    .line 5512
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    .line 5515
    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist setFemtoCellSystemSelectionMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFemtoCellSystemSelectionMode(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setFemtoCellSystemSelectionMode(ILandroid/os/Message;)V

    .line 954
    return-void
.end method

.method public blacklist setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 859
    new-instance v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 860
    .local v0, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p2, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 861
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 862
    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 863
    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 864
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 866
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTK GSMPhone setNetworkSelectionModeSemiAutomatic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v2, "0"

    .line 868
    .local v2, "actype":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 869
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    const-string v2, "2"

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 872
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    const-string v2, "7"

    .line 875
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 876
    return-void
.end method

.method public blacklist setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3013
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 3014
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_0

    .line 3015
    nop

    .line 3016
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    .line 3015
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setOutgoingCallerIdDisplay(ILandroid/os/Message;I)V

    goto :goto_0

    .line 3018
    :cond_0
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, setOutgoingCallerIdDisplay"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V

    .line 3021
    :goto_0
    return-void
.end method

.method public blacklist setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V
    .locals 5
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3025
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3134
    :cond_0
    const-string v0, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3135
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3136
    return-void

    .line 3026
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3029
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOutgoingCallerIdDisplay enter, CLIRmode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3035
    .local v1, "resp":Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 3036
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 3037
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 3038
    return-void

    .line 3043
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3045
    return-void

    .line 3049
    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    .line 3051
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    .line 3052
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3053
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3054
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3056
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3057
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3059
    return-void

    .line 3062
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3063
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3064
    :cond_7
    if-eqz p2, :cond_8

    .line 3065
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3067
    return-void

    .line 3071
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3072
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3071
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3074
    return-void

    .line 3077
    :cond_9
    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3079
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3080
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3081
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 3082
    return-void

    .line 3085
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_e

    .line 3086
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3087
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3089
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3090
    :cond_b
    if-eqz p2, :cond_c

    .line 3091
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3093
    return-void

    .line 3097
    :cond_c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3098
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3097
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3100
    return-void

    .line 3103
    :cond_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 3104
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3103
    invoke-virtual {v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCLIR(ILandroid/os/Message;)V

    .line 3106
    return-void

    .line 3109
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    .line 3110
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3114
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3115
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3116
    return-void

    .line 3120
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3121
    :cond_11
    if-eqz p2, :cond_12

    .line 3122
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3123
    return-void

    .line 3130
    :cond_12
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3131
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3130
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3133
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    nop

    .line 3138
    return-void
.end method

.method public blacklist setPolEntry(Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 4
    .param p1, "networkWithAct"    # Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2284
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    .line 2283
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2285
    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 10
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 748
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 750
    return-void

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getRadioAccessFamily()I

    move-result v0

    .line 756
    .local v0, "modemRaf":I
    invoke-static {p1}, Landroid/telephony/MtkRadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 758
    .local v1, "rafFromType":I
    const-wide/16 v2, -0x1

    .line 759
    .local v2, "allowedNetworkTypes":J
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    const-string v5, "MtkGsmCdmaPhone"

    if-eqz v4, :cond_1

    .line 760
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 761
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v6

    .line 760
    const-string v7, "allowed_network_types"

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 766
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v6

    .line 769
    goto :goto_0

    .line 767
    :catch_0
    move-exception v6

    .line 768
    .local v6, "err":Ljava/lang/NumberFormatException;
    const-string v7, "allowedNetworkTypes NumberFormat exception"

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_2

    .line 788
    :cond_2
    and-int v4, v1, v0

    int-to-long v6, v4

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    .line 789
    and-int v4, v1, v0

    int-to-long v6, v4

    and-long/2addr v6, v2

    goto :goto_1

    :cond_3
    int-to-long v6, v0

    :goto_1
    long-to-int v4, v6

    .line 791
    .local v4, "filteredRaf":I
    invoke-static {v4}, Landroid/telephony/MtkRadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v6

    .line 793
    .local v6, "filteredType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPreferredNetworkType: networkType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " modemRaf = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rafFromType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " allowedNetworkTypes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " filteredType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v6, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 800
    return-void

    .line 775
    .end local v4    # "filteredRaf":I
    .end local v6    # "filteredType":I
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredNetworkType: Abort, unknown RAF: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz p2, :cond_5

    .line 780
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 781
    .local v4, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v5, 0x0

    invoke-static {p2, v5, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 782
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 784
    .end local v4    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_5
    return-void
.end method

.method protected blacklist setPreferredNetworkTypeIfSimLoaded()V
    .locals 3

    .line 730
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v0

    .line 731
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v1, :cond_0

    .line 733
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDeviceRatMode(I)V

    .line 736
    :cond_0
    return-void
.end method

.method public blacklist setRoamingEnable([ILandroid/os/Message;)V
    .locals 2
    .param p1, "config"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 4913
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "set roaming enable"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 4916
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setRoamingEnable([ILandroid/os/Message;)V

    .line 4917
    return-void
.end method

.method public blacklist setRxTestConfig(ILandroid/os/Message;)V
    .locals 2
    .param p1, "AntType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2241
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "set Rx Test Config"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setRxTestConfig(ILandroid/os/Message;)V

    .line 2243
    return-void
.end method

.method public blacklist setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSSPropertyThroughHidl, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    const-string v0, ""

    .line 3429
    .local v0, "propVal":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3430
    .local v2, "p":[Ljava/lang/String;
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3432
    .local v3, "prop":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 3433
    const-string p3, ""

    .line 3436
    :cond_0
    const-string v4, ","

    if-eqz v3, :cond_1

    .line 3437
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3440
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    const-string v6, " value: "

    const-string v7, " property="

    if-nez v5, :cond_2

    .line 3441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSSPropertyThroughHidl: invalid phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " prop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    return-void

    .line 3446
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_4

    .line 3447
    const-string v8, ""

    .line 3448
    .local v8, "str":Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v9, v2

    if-ge v5, v9, :cond_3

    .line 3449
    aget-object v8, v2, v5

    .line 3451
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3446
    .end local v8    # "str":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3454
    .end local v5    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3455
    if-eqz v2, :cond_5

    .line 3456
    add-int/lit8 v5, p1, 0x1

    .restart local v5    # "i":I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_5

    .line 3457
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3456
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3461
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x5b

    if-le v4, v5, :cond_6

    .line 3462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSSPropertyThroughHidl: property too long phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " propVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    return-void

    .line 3467
    :cond_6
    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSuppServProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    return-void
.end method

.method public blacklist setServiceClass(I)V
    .locals 2
    .param p1, "serviceClass"    # I

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.gsm.radio.ss.sc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    return-void
.end method

.method public blacklist setSuppServProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServProperty, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5311
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ec

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setSuppServProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 5313
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCallbackDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5315
    const-string v0, "waitForCallback: callback is not done!"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5317
    :cond_0
    return-void
.end method

.method public blacklist setTbcwMode(I)V
    .locals 2
    .param p1, "newMode"    # I

    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set tbcwmode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    .line 3175
    return-void
.end method

.method public blacklist setTbcwToEnabledOnIfDisabled()V
    .locals 6

    .line 3181
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v1, "persist.vendor.radio.terminal-based.cw"

    const-string v2, "disabled_tbcw"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3184
    .local v0, "tbcwMode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTbcwToEnabledOnIfDisabled tbcwmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3184
    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3187
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v2

    const-string v3, "enabled_tbcw_on"

    invoke-virtual {p0, v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 3189
    :cond_1
    return-void
.end method

.method public blacklist setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3377
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;ZLandroid/os/Message;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3420
    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    .line 5242
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 5243
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_1

    .line 5245
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    .line 5246
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 5247
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 5248
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 5250
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 5253
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    return-void
.end method

.method public blacklist shouldProcessSelfActivation()Z
    .locals 3

    .line 5048
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSelfActivationInstance()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->getSelfActivateState()I

    move-result v0

    .line 5050
    .local v0, "selfActivateState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessSelfActivation() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist switchNrMap(Z)V
    .locals 1
    .param p1, "sw"    # Z

    .line 5473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/NrMap;->swtichNrMap(Z)V

    goto :goto_0

    .line 5474
    :cond_0
    const-string v0, "switchNrMap mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5475
    :goto_0
    return-void
.end method

.method protected blacklist switchPhoneType(I)V
    .locals 2
    .param p1, "precisePhoneType"    # I

    .line 570
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    .line 572
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 575
    const-string v0, "Re-register registerForIccRecordEvents due to phonetype change to GSM."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 577
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->registerForIccRecordEvents()V

    .line 580
    :cond_0
    return-void

    .line 572
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected blacklist switchVoiceRadioTech(I)V
    .locals 2
    .param p1, "newVoiceRadioTech"    # I

    .line 657
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 658
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "Switching Voice Phone :blocked!!!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setPhoneTypeSwitchPending()V

    .line 661
    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearPhoneTypeSwitchPending()V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching Voice Phone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    goto :goto_0

    :cond_1
    const-string v1, "CDMA"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 671
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->switchPhoneType(I)V

    .line 673
    return-void

    .line 676
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchVoiceRadioTech(I)V

    .line 677
    return-void
.end method

.method public blacklist triggerModeSwitchByEcc(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 700
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->triggerModeSwitchByEcc(ILandroid/os/Message;)V

    .line 701
    return-void
.end method

.method public blacklist unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1093
    return-void
.end method

.method public blacklist unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2094
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 2096
    return-void
.end method

.method public blacklist unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2230
    return-void
.end method

.method public blacklist unregisterForOemIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5652
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5653
    return-void
.end method

.method public blacklist unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 2120
    return-void
.end method

.method public blacklist useImsForPCOChanged()Z
    .locals 3

    .line 5056
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSelfActivationInstance()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->getPCO520State()I

    move-result v0

    .line 5058
    .local v0, "pcoState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcoState() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
