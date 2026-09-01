.class public Lcom/mediatek/internal/telephony/MtkRIL;
.super Lcom/android/internal/telephony/RIL;
.source "MtkRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;,
        Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;,
        Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;
    }
.end annotation


# static fields
.field public static final blacklist CB_FACILITY_BA_ACR:Ljava/lang/String; = "ACR"

.field public static final blacklist CF_REASON_NOT_REGISTERED:I = 0x6

.field public static final blacklist DISPLAY_EONS:I = 0x1

.field public static final blacklist DISPLAY_NITZ:I = 0x2

.field public static final blacklist DISPLAY_SPN:I = 0x8

.field public static final blacklist DISPLAY_TS25:I = 0x4

.field protected static final blacklist EVENT_MTKRADIOEX_PROXY_DEAD:I = 0x3ee

.field static final blacklist HIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

.field protected static final blacklist IMTKRADIOEX_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field static final blacklist MTK_RILJ_LOGD:Z = true

.field static final blacklist MTK_RILJ_LOGV:Z = true

.field static final blacklist RILJ_LOG_TAG:Ljava/lang/String; = "MtkRILJ"

.field public static final blacklist SERVICE_CLASS_LINE2:I = 0x100

.field public static final blacklist SERVICE_CLASS_MTK_MAX:I = 0x200

.field public static final blacklist SERVICE_CLASS_VIDEO:I = 0x200

.field private static final blacklist WORLD_PHONE_RELOAD_TYPE:I = 0x1

.field private static final blacklist WORLD_PHONE_STORE_TYPE:I = 0x2

.field public static final blacklist showRat:Z = true


# instance fields
.field private blacklist hide_plmns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field blacklist mCfuReturnValue:Ljava/lang/Object;

.field protected blacklist mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field blacklist mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

.field protected blacklist mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mEcopsReturnValue:Ljava/lang/Object;

.field protected blacklist mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mEmsrReturnValue:Ljava/lang/Object;

.field protected blacklist mEspOrMeid:Ljava/lang/Object;

.field protected blacklist mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mIccid:Ljava/lang/String;

.field protected blacklist mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mInstanceId:Ljava/lang/Integer;

.field blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mIsCardDetected:Z

.field public blacklist mIsSmsReady:Z

.field protected blacklist mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mMtkContext:Landroid/content/Context;

.field blacklist mMtkRadioExIndication:Lcom/mediatek/internal/telephony/MtkRadioExIndication;

.field protected final blacklist mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final blacklist mMtkRadioExProxyDeathRecipient:Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;

.field blacklist mMtkRadioExResponse:Lcom/mediatek/internal/telephony/MtkRadioExResponse;

.field blacklist mMtkRadioIndication:Lcom/mediatek/internal/telephony/MtkRadioIndication;

.field blacklist mMtkRadioResponse:Lcom/mediatek/internal/telephony/MtkRadioResponse;

.field private blacklist mMtkRilJIntiDone:Z

.field private blacklist mMtkRilOp:Lcom/mediatek/internal/telephony/IMtkRilOp;

.field protected blacklist mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPlmnDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

.field protected blacklist mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field volatile blacklist mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

.field protected blacklist mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimMissing:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

.field blacklist mSimPowerInfo:Ljava/lang/Object;

.field protected blacklist mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

.field blacklist mSmlSlotLockInfo:Ljava/lang/Object;

.field protected blacklist mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mWPMonitor:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 236
    const-string v0, "mtkSlot1"

    const-string v1, "mtkSlot2"

    const-string v2, "mtkSlot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkRIL;->HIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilJIntiDone:Z

    .line 190
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 193
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 196
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 199
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 200
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 208
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 211
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 213
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 215
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 217
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    .line 222
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 235
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilOp:Lcom/mediatek/internal/telephony/IMtkRilOp;

    .line 254
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 260
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccid:Ljava/lang/String;

    .line 394
    new-instance v2, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 398
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 400
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 401
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 402
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    .line 403
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 405
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 406
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 408
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 410
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 412
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 414
    new-instance v2, Lcom/mediatek/internal/telephony/MtkRIL$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkRIL$1;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->hide_plmns:Ljava/util/ArrayList;

    .line 1363
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1377
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1478
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    .line 1479
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    .line 1480
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 1481
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 1482
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 1521
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2383
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 2394
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2405
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2416
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2457
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsSmsReady:Z

    .line 2458
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2459
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2463
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    .line 2464
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCardDetected:Z

    .line 2668
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2678
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 2977
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 3678
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 4002
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    .line 4003
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    .line 4061
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 4075
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 4173
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    .line 4174
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    .line 4175
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    .line 4176
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    .line 4215
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    .line 4216
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    .line 4239
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    .line 4240
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    .line 5052
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5156
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5175
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5255
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5265
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5275
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5569
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 5723
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 5734
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 6069
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 6080
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 6130
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 6131
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 443
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyDeathRecipient:Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;

    .line 444
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilJIntiDone:Z

    .line 190
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 193
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 196
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 199
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 200
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 208
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 211
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 213
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 215
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 217
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    .line 222
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 235
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilOp:Lcom/mediatek/internal/telephony/IMtkRilOp;

    .line 254
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 260
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccid:Ljava/lang/String;

    .line 394
    new-instance v2, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 398
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 400
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 401
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 402
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    .line 403
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 405
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 406
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 408
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 410
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 412
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 414
    new-instance v2, Lcom/mediatek/internal/telephony/MtkRIL$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkRIL$1;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->hide_plmns:Ljava/util/ArrayList;

    .line 1363
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1377
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1478
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    .line 1479
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    .line 1480
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 1481
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 1482
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 1521
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2383
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 2394
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2405
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2416
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2457
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsSmsReady:Z

    .line 2458
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2459
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2463
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    .line 2464
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCardDetected:Z

    .line 2668
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 2678
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 2977
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 3678
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 4002
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    .line 4003
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    .line 4061
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 4075
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 4173
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    .line 4174
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    .line 4175
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    .line 4176
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    .line 4215
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    .line 4216
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    .line 4239
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    .line 4240
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    .line 5052
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5156
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5175
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5255
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5265
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5275
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5569
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 5723
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 5734
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    .line 6069
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 6080
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 6130
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 6131
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor: sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v1, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    .line 451
    new-instance v1, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyDeathRecipient:Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;

    .line 452
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    .line 453
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 461
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v1

    .line 462
    .local v1, "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 465
    new-instance v2, Lcom/mediatek/internal/telephony/MtkRadioExResponse;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExResponse:Lcom/mediatek/internal/telephony/MtkRadioExResponse;

    .line 466
    new-instance v2, Lcom/mediatek/internal/telephony/MtkRadioExIndication;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkRadioExIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExIndication:Lcom/mediatek/internal/telephony/MtkRadioExIndication;

    .line 467
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 468
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.mtk.TEST_TRM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 472
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilJIntiDone:Z

    .line 473
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 474
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    .line 477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->hide_plmns:Ljava/util/ArrayList;

    const-string v2, "404999"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->hide_plmns:Ljava/util/ArrayList;

    const-string v2, "40548"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->hide_plmns:Ljava/util/ArrayList;

    const-string v2, "46020"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkRIL;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object v0
.end method

.method private blacklist clearRequestWithError(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 4
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "error"    # I

    .line 726
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 727
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilRequestList()Landroid/util/SparseArray;

    move-result-object v1

    .line 728
    .local v1, "requestList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/RILRequest;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestWithError target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkRILJ"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    monitor-enter v1

    .line 730
    :try_start_0
    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 731
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 733
    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v2, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 734
    iput p2, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 735
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 736
    return-void

    .line 731
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static blacklist convertToHalPhbEntryExt(Lcom/mediatek/internal/telephony/phb/PBEntry;)Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    .locals 2
    .param p0, "pbe"    # Lcom/mediatek/internal/telephony/phb/PBEntry;

    .line 4678
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;-><init>()V

    .line 4680
    .local v0, "pee":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getIndex1()I

    move-result v1

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->index:I

    .line 4681
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->number:Ljava/lang/String;

    .line 4682
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getType()I

    move-result v1

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->type:I

    .line 4683
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->text:Ljava/lang/String;

    .line 4684
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getHidden()I

    move-result v1

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->hidden:I

    .line 4685
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getGroup()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->group:Ljava/lang/String;

    .line 4686
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getAdnumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->adnumber:Ljava/lang/String;

    .line 4687
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getAdtype()I

    move-result v1

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->adtype:I

    .line 4688
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getSecondtext()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->secondtext:Ljava/lang/String;

    .line 4689
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/PBEntry;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->email:Ljava/lang/String;

    .line 4691
    return-object v0
.end method

.method private blacklist convertToHalPhbEntryStructure(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    .locals 2
    .param p1, "pe"    # Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 4332
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;-><init>()V

    .line 4334
    .local v0, "pes":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    iget v1, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->type:I

    .line 4335
    iget v1, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->index:I

    .line 4336
    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->number:Ljava/lang/String;

    .line 4337
    iget v1, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    iput v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->ton:I

    .line 4338
    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->alphaId:Ljava/lang/String;

    .line 4340
    return-object v0
.end method

.method private blacklist convertToHalSimAuthStructure(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;

    .line 1578
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;-><init>()V

    .line 1579
    .local v0, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    iput p1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->sessionId:I

    .line 1580
    iput p2, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->mode:I

    .line 1581
    const-string v1, "0"

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1582
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1583
    .local v4, "length":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v3, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1586
    if-nez p1, :cond_1

    .line 1587
    move-object v5, p4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1586
    :goto_1
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->param1:Ljava/lang/String;

    .line 1588
    .end local v4    # "length":Ljava/lang/String;
    goto :goto_2

    .line 1589
    :cond_2
    invoke-static {p4}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->param1:Ljava/lang/String;

    .line 1593
    :goto_2
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1594
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1595
    .restart local v4    # "length":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .end local v4    # "length":Ljava/lang/String;
    .local v1, "length":Ljava/lang/String;
    if-nez p1, :cond_4

    .line 1599
    move-object v2, p5

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1598
    :goto_4
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->param2:Ljava/lang/String;

    .line 1600
    .end local v1    # "length":Ljava/lang/String;
    goto :goto_5

    .line 1601
    :cond_5
    invoke-static {p5}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->param2:Ljava/lang/String;

    .line 1603
    :goto_5
    if-ne p2, v3, :cond_6

    .line 1604
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->tag:I

    .line 1606
    :cond_6
    return-object v0
.end method

.method private blacklist getPlmnListDisplayRule(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "rplmn"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;

    .line 1846
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, "optr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    if-nez v1, :cond_0

    const-string v1, "OP07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1849
    return v2

    .line 1852
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1853
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1855
    return v2

    .line 1858
    :cond_1
    return v2

    .line 1862
    :cond_2
    return v2
.end method

.method private blacklist handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 3136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 3137
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v1

    .line 3139
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 3140
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->get()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3141
    .local v2, "dqrr2":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    .line 3142
    .local v3, "rr2":Lcom/android/internal/telephony/RILRequest;
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 3145
    const-string v4, "MtkRILJ"

    const-string v5, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 3149
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 3152
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x1

    .line 3154
    .restart local v5    # "j":I
    :goto_0
    const-string v7, "MtkRILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queue size  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 3157
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->remove(I)V

    .line 3156
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3159
    :cond_1
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 3161
    const-string v8, "MtkRILJ"

    const-string v9, "add dummy stop dtmf request"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const/16 v8, 0x32

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v8, v6, v9, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 3165
    .local v8, "rr3":Lcom/android/internal/telephony/RILRequest;
    new-array v9, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    .line 3166
    .local v9, "myClz":[Ljava/lang/Class;
    new-array v4, v4, [Ljava/lang/Object;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    .line 3167
    .local v4, "myParam":[Ljava/lang/Object;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v10, v8, v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v10

    .line 3170
    .local v10, "dqrr3":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v11, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->stop()V

    .line 3171
    iget-object v11, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v11, v10}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->add(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3172
    .end local v4    # "myParam":[Ljava/lang/Object;
    .end local v8    # "rr3":Lcom/android/internal/telephony/RILRequest;
    .end local v9    # "myClz":[Ljava/lang/Class;
    .end local v10    # "dqrr3":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 3177
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "MtkRILJ"

    const-string v5, "DTMF queue isn\'t 0, first is STOP, penging switch"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    const/4 v5, 0x1

    .line 3179
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v5, :cond_3

    .line 3180
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->remove(I)V

    .line 3179
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3187
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3188
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3189
    .local v4, "pendingDqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    .line 3190
    .local v8, "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    iget-object v9, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 3191
    iget-object v9, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3192
    iget-object v6, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3197
    .end local v4    # "pendingDqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3198
    .local v4, "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3199
    .end local v2    # "dqrr2":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/android/internal/telephony/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 3200
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "MtkRILJ"

    const-string v3, "DTMF queue is 0, send switch Immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->setSendChldRequest()V

    .line 3203
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3204
    .local v2, "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendDtmfQueueRR(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3206
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 3207
    return-void

    .line 3206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleProxyNotExist(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 486
    if-eqz p1, :cond_0

    .line 487
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 488
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 487
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 489
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 491
    :cond_0
    return-void
.end method

.method private blacklist mtkConvertRadioAccessSpecifierToRadioHAL_1_5(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    .locals 8
    .param p1, "ras"    # Landroid/telephony/RadioAccessSpecifier;

    .line 5807
    new-instance v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 5809
    .local v0, "rasInHalFormat":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 5810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5812
    .local v1, "bands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5813
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v2, v5

    .line 5814
    .local v6, "band":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5813
    .end local v6    # "band":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5818
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    .line 5840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioAccessNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not supported!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkRILJ"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    const/4 v2, 0x0

    return-object v2

    .line 5835
    :cond_1
    const/4 v2, 0x4

    iput v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 5837
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v2, v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands(Ljava/util/ArrayList;)V

    .line 5838
    goto :goto_1

    .line 5830
    :cond_2
    iput v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 5832
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v2, v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands(Ljava/util/ArrayList;)V

    .line 5833
    goto :goto_1

    .line 5825
    :cond_3
    iput v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 5827
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v2, v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands(Ljava/util/ArrayList;)V

    .line 5828
    goto :goto_1

    .line 5820
    :cond_4
    iput v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 5822
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v2, v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands(Ljava/util/ArrayList;)V

    .line 5823
    nop

    .line 5845
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5846
    invoke-virtual {p1}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_5

    aget v5, v2, v3

    .line 5847
    .local v5, "channel":I
    iget-object v6, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5846
    .end local v5    # "channel":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5851
    :cond_5
    return-object v0
.end method

.method public static blacklist requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p0, "request"    # Ljava/lang/Integer;

    .line 751
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x80e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x813

    if-eq v0, v1, :cond_1

    const/16 v1, 0x814

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 759
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    const-string v0, "RIL_REQUEST_SIGNAL_STRENGTH_WITH_WCDMA_ECIO"

    .line 760
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1011
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    const-string v0, "RIL_REQUEST_GET_LTE_RELEASE_VERSION"

    .line 1012
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1008
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2
    const-string v0, "RIL_REQUEST_SET_LTE_RELEASE_VERSION"

    .line 1009
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 826
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_3
    const-string v0, "RIL_REQUEST_RESTART_RILD"

    .line 827
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1094
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_4
    const-string v0, "RIL_REQUEST_GET_ECC_NUM"

    .line 1095
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1091
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_5
    const-string v0, "RIL_REQUEST_SET_ECC_NUM"

    .line 1092
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1088
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_6
    const-string v0, "RIL_REQUEST_SET_VOICE_PREFER_STATUS"

    .line 1089
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1085
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_7
    const-string v0, "RIL_REQUEST_RESET_ALL_CONNECTIONS"

    .line 1086
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1082
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_8
    const-string v0, "RIL_REQUEST_DATA_CONNECTION_DETACH"

    .line 1083
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1079
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RIL_REQUEST_DATA_CONNECTION_ATTACH"

    .line 1080
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1037
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_a
    const-string v0, "RIL_REQUEST_SET_CALL_FORWARD_IN_TIME_SLOT"

    .line 1038
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1034
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_b
    const-string v0, "RIL_REQUEST_QUERY_CALL_FORWARD_IN_TIME_SLOT"

    .line 1035
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1025
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_c
    const-string v0, "RIL_REQUEST_SET_COLR"

    .line 1026
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1019
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_d
    const-string v0, "RIL_REQUEST_SET_COLP"

    .line 1020
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 989
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_e
    const-string v0, "RIL_REQUEST_SET_EMERGENCY_ADDRESS_ID"

    .line 990
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 986
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_f
    const-string v0, "RIL_REQUEST_SET_GEO_LOCATION"

    .line 987
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 983
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_10
    const-string v0, "RIL_REQUEST_SET_WIFI_IP_ADDRESS"

    .line 984
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 980
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_11
    const-string v0, "RIL_REQUEST_SET_WIFI_SIGNAL_LEVEL"

    .line 981
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 977
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_12
    const-string v0, "RIL_REQUEST_SET_WIFI_ASSOCIATED"

    .line 978
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 974
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_13
    const-string v0, "RIL_REQUEST_SET_WIFI_ENABLED"

    .line 975
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1072
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_14
    const-string v0, "RIL_REQUEST_GET_GSM_SMS_BROADCAST_ACTIVATION"

    .line 1073
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 969
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_15
    const-string v0, "RIL_REQUEST_VSIM_OPERATION"

    .line 970
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 966
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_16
    const-string v0, "RIL_REQUEST_VSIM_NOTIFICATION"

    .line 967
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 961
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_17
    const-string v0, "GET_ROAMING_ENABLE"

    .line 962
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 958
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_18
    const-string v0, "SET_ROAMING_ENABLE"

    .line 959
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 790
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_19
    const-string v0, "ECC_PREFERRED_RAT"

    .line 791
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 931
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "RIL_REQUEST_SET_POL_ENTRY"

    .line 932
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 928
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "RIL_REQUEST_GET_POL_LIST"

    .line 929
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 925
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1c
    const-string v0, "RIL_REQUEST_GET_POL_CAPABILITY"

    .line 926
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1031
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1d
    const-string v0, "RIL_REQUEST_SEND_CNAP"

    .line 1032
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1028
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "RIL_REQUEST_GET_COLR"

    .line 1029
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1022
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1f
    const-string v0, "RIL_REQUEST_GET_COLP"

    .line 1023
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1016
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_20
    const-string v0, "RIL_REQUEST_SET_CLIP"

    .line 1017
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 921
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_21
    const-string v0, "RIL_REQUEST_VSS_ANTENNA_INFO"

    .line 922
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 918
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_22
    const-string v0, "RIL_REQUEST_VSS_ANTENNA_CONF"

    .line 919
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 947
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_23
    const-string v0, "RIL_REQUEST_SET_REMOVE_RESTRICT_EUTRAN_MODE"

    .line 948
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 814
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_24
    const-string v0, "RIL_REQUEST_SET_FD_MODE"

    .line 815
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 811
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_25
    const-string v0, "RIL_REQUEST_GET_SMS_RUIM_MEM_STATUS"

    .line 812
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 808
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_26
    const-string v0, "RIL_REQUEST_SWITCH_MODE_FOR_ECC"

    .line 809
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 805
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_27
    const-string v0, "RIL_REQUEST_GET_PSEUDO_CELL_INFO"

    .line 806
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 802
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_28
    const-string v0, "RIL_REQUEST_SET_PSEUDO_CELL_MODE"

    .line 803
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 772
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_29
    const-string v0, "SET_CALL_INDICATION"

    .line 773
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1069
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "RIL_REQUEST_REMOVE_CB_MESSAGE"

    .line 1070
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1066
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2b
    const-string v0, "RIL_REQUEST_SET_ETWS"

    .line 1067
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1063
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2c
    const-string v0, "RIL_REQUEST_SET_SMS_PARAMS"

    .line 1064
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1060
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "RIL_REQUEST_GET_SMS_PARAMS"

    .line 1061
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1057
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2e
    const-string v0, "RIL_REQUEST_GET_SMS_SIM_MEM_STATUS"

    .line 1058
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1054
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_LANGUAGE"

    .line 1055
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1051
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_30
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_LANGUAGE"

    .line 1052
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 762
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_31
    const-string v0, "ABORT_QUERY_AVAILABLE_NETWORKS"

    .line 763
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 756
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_32
    const-string v0, "QUERY_AVAILABLE_NETWORKS_WITH_ACT"

    .line 757
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 753
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_33
    const-string v0, "SET_NETWORK_SELECTION_MANUAL_WITH_ACT"

    .line 754
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 768
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_34
    const-string v0, "RIL_REQUEST_MODEM_POWEROFF"

    .line 769
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 765
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_35
    const-string v0, "RIL_REQUEST_MODEM_POWERON"

    .line 766
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1110
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_36
    const-string v0, "RIL_REQUEST_SET_SIM_POWER"

    .line 1111
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1149
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_0
    const-string v0, "RIL_REQUEST_GET_CALL_SUB_ADDRESS"

    .line 1150
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1146
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1
    const-string v0, "RIL_REQUEST_SET_CALL_SUB_ADDRESS"

    .line 1147
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1000
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2
    const-string v0, "RIL_REQUEST_SEND_WIFI_IP_ADDRESS"

    .line 1001
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 997
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3
    const-string v0, "RIL_REQUEST_SEND_WIFI_ASSOCIATED"

    .line 998
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 994
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_4
    const-string v0, "RIL_REQUEST_SEND_WIFI_ENABLED"

    .line 995
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1143
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_5
    const-string v0, "RIL_REQUEST_SML_RSU_REQUEST"

    .line 1144
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 871
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_6
    const-string v0, "RIL_REQUEST_GET_DEACTIVATE_NR_SCG_COMMUNICATION"

    .line 872
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 874
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_7
    const-string v0, "RIL_REQUEST_DEACTIVATE_NR_SCG_COMMUNICATION"

    .line 875
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1140
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_8
    const-string v0, "RIL_REQUEST_SEND_SAR_INDICATOR"

    .line 1141
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1125
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_9
    const-string v0, "RIL_REQUEST_SET_GWSD_KEEP_ALIVE_IPDATA"

    .line 1126
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1122
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_a
    const-string v0, "RIL_REQUEST_SET_GWSD_KEEP_ALIVE_PDCP"

    .line 1123
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 868
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_b
    const-string v0, "RIL_REQUEST_SET_BACKGROUND_SEARCH_TIMER"

    .line 869
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 865
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_c
    const-string v0, "RIL_REQUEST_SEARCH_RAT"

    .line 866
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 862
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_d
    const-string v0, "RIL_REQUEST_SEARCH_STORED_FREQUENCY_INFO"

    .line 863
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 859
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_e
    const-string v0, "RIL_REQUEST_SET_TX_POWER"

    .line 860
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 856
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_f
    const-string v0, "RIL_REQUEST_DISABLE_NR"

    .line 857
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 853
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_10
    const-string v0, "RIL_REQUEST_ENABLE_SCG_FAILURE"

    .line 854
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 850
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_11
    const-string v0, "RIL_REQUEST_CONFIG_B1_OFFSET"

    .line 851
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 847
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_12
    const-string v0, "RIL_REQUEST_CONFIG_A2_OFFSET"

    .line 848
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 934
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_13
    const-string v0, "RIL_REQUEST_GET_SUGGESTED_PLMN_LIST"

    .line 935
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1134
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_14
    const-string v0, "RIL_REQUEST_IWLAN_REGISTER_CELLULAR_QUALITY_REPORT"

    .line 1135
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1131
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_15
    const-string v0, "RIL_REQUEST_GET_DSDA_STATUS"

    .line 1132
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1128
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_16
    const-string v0, "RIL_REQUEST_ENABLE_DSDA_INDICATION"

    .line 1129
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 820
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_17
    const-string v0, "RIL_REQUEST_MODIFY_MODEM_TYPE"

    .line 821
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 776
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_18
    const-string v0, "HANGUP_WITH_REASON"

    .line 777
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1119
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_19
    const-string v0, "RIL_REQUEST_SET_GWSD_IGNORE_CALL_INTERVAL"

    .line 1120
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1116
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1a
    const-string v0, "RIL_REQUEST_SET_GWSD_CALL_VALID"

    .line 1117
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1113
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "RIL_REQUEST_SET_GWSD_MODE"

    .line 1114
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1137
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1c
    const-string v0, "RIL_REQUEST_SET_VENDOR_SETTING"

    .line 1138
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1107
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1d
    const-string v0, "RIL_REQUEST_ENTER_DEVICE_NETWORK_DEPERSONALIZATION"

    .line 1108
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1040
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1e
    const-string v0, "RIL_REQUEST_SET_SS_PROPERTY"

    .line 1041
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1103
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1f
    const-string v0, "RIL_REQUEST_SETPROP_IMS_HANDOVER"

    .line 1104
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1100
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_20
    const-string v0, "RIL_REQUEST_SET_TX_POWER_STATUS"

    .line 1101
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1097
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_21
    const-string v0, "RIL_REQUEST_SET_PHONEBOOK_READY"

    .line 1098
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1075
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_22
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    .line 1076
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1005
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_23
    const-string v0, "RIL_REQUEST_SET_SERVICE_STATE"

    .line 1006
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 780
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_24
    const-string v0, "RIL_REQUEST_EMBMS_AT_CMD"

    .line 781
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 842
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_25
    const-string v0, "REQUEST_SET_FEMTOCELL_SYSTEM_SELECTION_MODE"

    .line 843
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 839
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_26
    const-string v0, "REQUEST_QUERY_FEMTOCELL_SYSTEM_SELECTION_MODE"

    .line 840
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 836
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_27
    const-string v0, "REQUEST_SELECT_FEMTOCELL"

    .line 837
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 833
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_28
    const-string v0, "REQUEST_ABORT_FEMTOCELL_LIST"

    .line 834
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 830
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_29
    const-string v0, "REQUEST_GET_FEMTOCELL_LIST"

    .line 831
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 913
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2a
    const-string v0, "RIL_REQUEST_READ_UPB_AAS_LIST"

    .line 914
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 911
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2b
    const-string v0, "RIL_REQUEST_READ_ANR_ENTRY"

    .line 912
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 909
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2c
    const-string v0, "RIL_REQUEST_READ_SNE_ENTRY"

    .line 910
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 907
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2d
    const-string v0, "RIL_REQUEST_READ_EMAIL_ENTRY"

    .line 908
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 905
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2e
    const-string v0, "RIL_REQUEST_QUERY_UPB_AVAILABLE"

    .line 906
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 903
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2f
    const-string v0, "RIL_REQUEST_WRITE_PHB_ENTRY_EXT"

    .line 904
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 901
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_30
    const-string v0, "RIL_REQUEST_READ_PHB_ENTRY_EXT"

    .line 902
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 899
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_31
    const-string v0, "RIL_REQUEST_SET_PHB_MEM_STORAGE"

    .line 900
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 897
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_32
    const-string v0, "RIL_REQUEST_GET_PHB_MEM_STORAGE"

    .line 898
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 895
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_33
    const-string v0, "RIL_REQUEST_GET_PHB_STRING_LENGTH"

    .line 896
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 893
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_34
    const-string v0, "RIL_REQUEST_WRITE_UPB_GRP"

    .line 894
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 891
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_35
    const-string v0, "RIL_REQUEST_READ_UPB_GRP"

    .line 892
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 889
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_36
    const-string v0, "RIL_REQUEST_READ_UPB_GAS_LIST"

    .line 890
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 887
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_37
    const-string v0, "RIL_REQUEST_DELETE_UPB_ENTRY"

    .line 888
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 885
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_38
    const-string v0, "RIL_REQUEST_EDIT_UPB_ENTRY"

    .line 886
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 883
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_39
    const-string v0, "RIL_REQUEST_QUERY_UPB_CAPABILITY"

    .line 884
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 881
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3a
    const-string v0, "RIL_REQUEST_READ_PHB_ENTRY"

    .line 882
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 879
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3b
    const-string v0, "RIL_REQUEST_WRITE_PHB_ENTRY"

    .line 880
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 877
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3c
    const-string v0, "RIL_REQUEST_QUERY_PHB_STORAGE_INFO"

    .line 878
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 785
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3d
    const-string v0, "SET_ECC_MODE"

    .line 786
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 794
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3e
    const-string v0, "RIL_REQUEST_SET_ECC_LIST"

    .line 795
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 823
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3f
    const-string v0, "RIL_REQUEST_SET_TRM"

    .line 824
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 799
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_40
    const-string v0, "HANGUP_ALL"

    .line 800
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 817
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_41
    const-string v0, "RIL_REQUEST_RESUME_REGISTRATION"

    .line 818
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 954
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v0, "RIL_REQUEST_SET_SIM_NETWORK_LOCK"

    .line 955
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 951
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const-string v0, "RIL_REQUEST_QUERY_SIM_NETWORK_LOCK"

    .line 952
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 943
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    const-string v0, "RIL_REQUEST_RESET_MD_DATA_RETRY_COUNT"

    .line 944
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 938
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    const-string v0, "RIL_REQUEST_SYNC_DATA_SETTINGS_TO_MD"

    .line 939
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1047
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    const-string v0, "OEM_HOOK_STRINGS"

    .line 1048
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1044
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5
    const-string v0, "OEM_HOOK_RAW"

    .line 1045
    .restart local v0    # "msg":Ljava/lang/String;
    nop

    .line 1155
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_41
        0x7e3 -> :sswitch_40
        0x7ec -> :sswitch_3f
        0x7ee -> :sswitch_3e
        0x7f3 -> :sswitch_3d
        0x7f4 -> :sswitch_3c
        0x7f5 -> :sswitch_3b
        0x7f6 -> :sswitch_3a
        0x7f7 -> :sswitch_39
        0x7f8 -> :sswitch_38
        0x7f9 -> :sswitch_37
        0x7fa -> :sswitch_36
        0x7fb -> :sswitch_35
        0x7fc -> :sswitch_34
        0x7fd -> :sswitch_33
        0x7fe -> :sswitch_32
        0x7ff -> :sswitch_31
        0x800 -> :sswitch_30
        0x801 -> :sswitch_2f
        0x802 -> :sswitch_2e
        0x803 -> :sswitch_2d
        0x804 -> :sswitch_2c
        0x805 -> :sswitch_2b
        0x806 -> :sswitch_2a
        0x807 -> :sswitch_29
        0x808 -> :sswitch_28
        0x809 -> :sswitch_27
        0x80a -> :sswitch_26
        0x80b -> :sswitch_25
        0x80c -> :sswitch_24
        0x852 -> :sswitch_23
        0x855 -> :sswitch_22
        0x86d -> :sswitch_21
        0x86e -> :sswitch_20
        0x86f -> :sswitch_1f
        0x878 -> :sswitch_1e
        0x87b -> :sswitch_1d
        0x87d -> :sswitch_1c
        0x884 -> :sswitch_1b
        0x885 -> :sswitch_1a
        0x886 -> :sswitch_19
        0x887 -> :sswitch_18
        0x888 -> :sswitch_17
        0x889 -> :sswitch_16
        0x88a -> :sswitch_15
        0x88c -> :sswitch_14
        0x88d -> :sswitch_13
        0x88e -> :sswitch_12
        0x88f -> :sswitch_11
        0x890 -> :sswitch_10
        0x891 -> :sswitch_f
        0x892 -> :sswitch_e
        0x893 -> :sswitch_d
        0x894 -> :sswitch_c
        0x895 -> :sswitch_b
        0x897 -> :sswitch_a
        0x898 -> :sswitch_9
        0x899 -> :sswitch_8
        0x89a -> :sswitch_7
        0x89b -> :sswitch_6
        0x89c -> :sswitch_5
        0x89d -> :sswitch_4
        0x89e -> :sswitch_3
        0x89f -> :sswitch_2
        0x8a0 -> :sswitch_1
        0x8a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d9
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e5
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x834
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x84b
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x860
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

.method public static blacklist responseToStringEx(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p0, "request"    # Ljava/lang/Integer;

    .line 1160
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbf3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xbf4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc2b

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 1356
    const-string v0, "<unknown response>"

    .local v0, "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1353
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    const-string v0, "RIL_UNSOL_RESPONSE_SMS_EINFO_EXTENSIONS"

    .line 1354
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1232
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    const-string v0, "RIL_UNSOL_PLMN_DATA"

    .line 1233
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1350
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2
    const-string v0, "RIL_UNSOL_ICCID_CHANGED"

    .line 1351
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1347
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_3
    const-string v0, "RIL_UNSOL_NW_LIMIT"

    .line 1348
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1344
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_4
    const-string v0, "RIL_UNSOL_MOBILE_DATA_USAGE"

    .line 1345
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1341
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_5
    const-string v0, "RIL_UNSOL_IWLAN_CELLULAR_QUALITY_CHANGED_IND"

    .line 1342
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1338
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_6
    const-string v0, "RIL_UNSOL_ON_DSDA_CHANGED"

    .line 1339
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1335
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_7
    const-string v0, "RIL_UNSOL_QUALIFIED_NETWORK_TYPES_CHANGED"

    .line 1336
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1169
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_8
    const-string v0, "UNSOL_CALL_ADDITIONAL_INFO"

    .line 1170
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1332
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RIL_UNSOL_CARD_DETECTED_IND"

    .line 1333
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1329
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_a
    const-string v0, "RIL_UNSOL_SIM_POWER_CHANGED"

    .line 1330
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1247
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_b
    const-string v0, "UNSOL_SIGNAL_STRENGTH_WITH_WCDMA_ECIO"

    .line 1248
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1306
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_c
    const-string v0, "RIL_UNSOL_MCCMNC_CHANGED"

    .line 1307
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1303
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_d
    const-string v0, "RIL_UNSOL_ECC_NUM"

    .line 1304
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1267
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_e
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_DEACTIVATED"

    return-object v0

    .line 1265
    :pswitch_f
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_MODIFIED"

    return-object v0

    .line 1263
    :pswitch_10
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_ACTIVATED"

    return-object v0

    .line 1288
    :pswitch_11
    const-string v0, "RIL_UNSOL_WFC_PDN_STATE"

    .line 1289
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1285
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_12
    const-string v0, "RIL_UNSOL_REQUEST_GEO_LOCATION"

    .line 1286
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1282
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_13
    const-string v0, "RIL_UNSOL_WIFI_PDN_ERROR"

    .line 1283
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1279
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_14
    const-string v0, "RIL_UNSOL_WIFI_RSSI_MONITORING_CONFIG"

    .line 1280
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1276
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_15
    const-string v0, "RIL_UNSOL_ACTIVE_WIFI_PDN_COUNT"

    .line 1277
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1273
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_16
    const-string v0, "RIL_UNSOL_MOBILE_WIFI_HANDOVER"

    .line 1274
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1270
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_17
    const-string v0, "RIL_UNSOL_MOBILE_WIFI_ROVEOUT"

    .line 1271
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1258
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_18
    const-string v0, "RIL_UNSOL_VSIM_OPERATION_INDICATION"

    .line 1259
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1200
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_19
    const-string v0, "RIL_UNSOL_EMBMS_AT_INFO"

    .line 1201
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1197
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "RIL_UNSOL_EMBMS_SESSION_STATUS"

    .line 1198
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1294
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "RIL_UNSOL_PCO_DATA_AFTER_ATTACHED"

    .line 1295
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1244
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1c
    const-string v0, "UNSOL_NETWORK_INFO"

    .line 1245
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1225
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1d
    const-string v0, "UNSOL_FEMTOCELL_INFO"

    .line 1226
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1240
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "UNSOL_PHB_READY_NOTIFICATION"

    .line 1241
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1322
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_0
    const-string v0, "RIL_UNSOL_ENCRYPTED_SERIAL_ID_UPDATED"

    .line 1323
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1319
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1
    const-string v0, "RIL_UNSOL_SML_DEVICE_LOCK_INFO_NOTIFY"

    .line 1320
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1309
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2
    const-string v0, "RIL_UNSOL_NETWORK_REJECT_CAUSE"

    .line 1310
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1300
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3
    const-string v0, "RIL_UNSOL_WIFI_PDN_OOS"

    .line 1301
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1291
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_4
    const-string v0, "RIL_UNSOL_NATT_KEEP_ALIVE_CHANGED"

    .line 1292
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1254
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_5
    const-string v0, "RIL_UNSOL_ECONF_SRVCC_INDICATION"

    .line 1255
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1250
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_6
    const-string v0, "UNSOL_CALL_FORWARDING"

    .line 1251
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1177
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_7
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION_EX"

    .line 1178
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1181
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_8
    const-string v0, "UNSOL_CRSS_NOTIFICATION"

    .line 1182
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1173
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_9
    const-string v0, "UNSOL_CIPHER_INDICATION"

    .line 1174
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1216
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_a
    const-string v0, "RIL_UNSOL_CDMA_CARD_INITIAL_ESN_OR_MEID"

    .line 1217
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1204
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_b
    const-string v0, "RIL_UNSOL_WORLD_MODE_CHANGED"

    .line 1205
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1222
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_c
    const-string v0, "RIL_UNSOL_DATA_ATTACH_APN_CHANGED"

    .line 1223
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1219
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_d
    const-string v0, "RIL_UNSOL_RESET_ATTACH_APN"

    .line 1220
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1190
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_e
    const-string v0, "RIL_UNSOL_MODULATION_INFO"

    .line 1191
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1187
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_f
    const-string v0, "RIL_UNSOL_NETWORK_EVENT"

    .line 1188
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1193
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_10
    const-string v0, "RIL_UNSOL_PSEUDO_CELL_INFO"

    .line 1194
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1184
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_11
    const-string v0, "RIL_UNSOL_INVALID_SIM"

    .line 1185
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1166
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_12
    const-string v0, "UNSOL_INCOMING_CALL_INDICATION"

    .line 1167
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1162
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_13
    const-string v0, "RIL_UNSOL_DATA_ALLOWED"

    .line 1163
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1207
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_14
    const-string v0, "RIL_UNSOL_GMSS_RAT_CHANGED"

    .line 1208
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1297
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_15
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    .line 1298
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1326
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v0, "RIL_UNSOL_SIM_SLOT_LOCK_POLICY_NOTIFY"

    .line 1327
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1312
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const-string v0, "RIL_UNSOL_DSBP_STATE_CHANGED"

    .line 1313
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1236
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    const-string v0, "RIL_UNSOL_REMOVE_RESTRICT_EUTRAN"

    .line 1237
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1229
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    const-string v0, "RIL_UNSOL_MD_DATA_RETRY_COUNT_RESET"

    .line 1230
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1210
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    const-string v0, "RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED"

    .line 1211
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1213
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5
    const-string v0, "RIL_UNSOL_RESPONSE_PLMN_CHANGED"

    .line 1214
    .restart local v0    # "msg":Ljava/lang/String;
    nop

    .line 1359
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_15
        0xbbb -> :sswitch_14
        0xbc6 -> :sswitch_13
        0xbc7 -> :sswitch_12
        0xbc8 -> :sswitch_11
        0xbc9 -> :sswitch_10
        0xbca -> :sswitch_f
        0xbcb -> :sswitch_e
        0xbcc -> :sswitch_d
        0xbcd -> :sswitch_c
        0xbce -> :sswitch_b
        0xbcf -> :sswitch_a
        0xbd0 -> :sswitch_9
        0xbd1 -> :sswitch_8
        0xbd2 -> :sswitch_7
        0xbfe -> :sswitch_6
        0xc00 -> :sswitch_5
        0xc0e -> :sswitch_4
        0xc10 -> :sswitch_3
        0xc25 -> :sswitch_2
        0xc81 -> :sswitch_1
        0xc82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xbd4
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbed
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc02
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc17
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc34
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc3a
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

.method protected static blacklist retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 1396
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist abortFemtoCellList(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2052
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2053
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2054
    const/16 v1, 0x808

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2058
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2061
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->abortFemtocellList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    goto :goto_0

    .line 2062
    :catch_0
    move-exception v2

    .line 2063
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "abortFemtoCellList"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2066
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist cacheIccid(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccid"    # Ljava/lang/String;

    .line 6112
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccid:Ljava/lang/String;

    .line 6113
    return-void
.end method

.method public blacklist cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2008
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2009
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2010
    const/16 v1, 0x7d7

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2014
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2018
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->cancelAvailableNetworks(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    goto :goto_0

    .line 2019
    :catch_0
    move-exception v2

    .line 2020
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAvailableNetworks"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2023
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newCfm"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 2694
    invoke-virtual {p0, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v6

    .line 2695
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 2696
    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 2701
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2706
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2707
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2708
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2709
    invoke-static {p3}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2710
    invoke-static {p4}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2706
    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2713
    goto :goto_0

    .line 2711
    :catch_0
    move-exception v0

    .line 2712
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "changeBarringPasswordCheckedByNW"

    invoke-virtual {p0, v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2715
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3327
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3328
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3329
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3331
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3332
    const/4 v2, 0x0

    .line 3333
    .local v2, "params":[Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V

    .line 3335
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public blacklist configA2Offset(IILandroid/os/Message;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "threshBound"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2155
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2156
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2157
    const/16 v1, 0x88e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2160
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " threshBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2164
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->cfgA2offset(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    goto :goto_0

    .line 2165
    :catch_0
    move-exception v2

    .line 2166
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "configA2Offset"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2169
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist configB1Offset(IILandroid/os/Message;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "threshBound"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2172
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2173
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2174
    const/16 v1, 0x88f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2177
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " threshBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2181
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->cfgB1offset(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    goto :goto_0

    .line 2182
    :catch_0
    move-exception v2

    .line 2183
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "configB1Offset"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2186
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist convertDedicatedDataCallResult(Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    .locals 34
    .param p1, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 5287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->ddcId:I

    .line 5288
    .local v2, "ddcId":I
    iget v14, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->interfaceId:I

    .line 5289
    .local v14, "interfaceId":I
    iget v15, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->primaryCid:I

    .line 5290
    .local v15, "primaryCid":I
    iget v13, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->cid:I

    .line 5291
    .local v13, "cid":I
    iget v12, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->active:I

    .line 5292
    .local v12, "active":I
    iget v11, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->signalingFlag:I

    .line 5293
    .local v11, "signalingFlag":I
    iget v10, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->bearerId:I

    .line 5294
    .local v10, "bearerId":I
    iget v9, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->failCause:I

    .line 5296
    .local v9, "failCause":I
    const/4 v3, 0x0

    .line 5297
    .local v3, "mtkQosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ddcResult.hasQos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->hasQos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5298
    iget v4, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->hasQos:I

    if-eqz v4, :cond_0

    .line 5299
    iget-object v4, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;->qci:I

    .line 5300
    .local v4, "qci":I
    iget-object v5, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;

    iget v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;->dlGbr:I

    .line 5301
    .local v5, "dlGbr":I
    iget-object v6, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;

    iget v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;->ulGbr:I

    .line 5302
    .local v6, "ulGbr":I
    iget-object v7, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;->dlMbr:I

    .line 5303
    .local v7, "dlMbr":I
    iget-object v8, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/Qos;->ulMbr:I

    .line 5304
    .local v8, "ulMbr":I
    new-instance v22, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    move-object/from16 v16, v22

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;-><init>(IIIII)V

    move-object/from16 v3, v22

    move-object/from16 v16, v3

    goto :goto_0

    .line 5298
    .end local v4    # "qci":I
    .end local v5    # "dlGbr":I
    .end local v6    # "ulGbr":I
    .end local v7    # "dlMbr":I
    .end local v8    # "ulMbr":I
    :cond_0
    move-object/from16 v16, v3

    .line 5307
    .end local v3    # "mtkQosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    .local v16, "mtkQosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    :goto_0
    const/4 v3, 0x0

    .line 5308
    .local v3, "mtkTftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ddcResult.hasTft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->hasTft:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5309
    iget v4, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->hasTft:I

    if-eqz v4, :cond_2

    .line 5310
    iget-object v4, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/mtkradioex/V2_0/Tft;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Tft;->operation:I

    .line 5311
    .local v4, "operation":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5313
    .local v5, "mtkPacketFilterInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;>;"
    iget-object v6, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/mtkradioex/V2_0/Tft;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/Tft;->pfList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;

    .line 5314
    .local v7, "info":Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;
    new-instance v8, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    move-object/from16 v17, v8

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->id:I

    move/from16 v18, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->precedence:I

    move/from16 v19, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->direction:I

    move/from16 v20, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->networkPfIdentifier:I

    move/from16 v21, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->bitmap:I

    move/from16 v22, v0

    iget-object v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->address:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->mask:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->protocolNextHeader:I

    move/from16 v25, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->localPortLow:I

    move/from16 v26, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->localPortHigh:I

    move/from16 v27, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->remotePortLow:I

    move/from16 v28, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->remotePortHigh:I

    move/from16 v29, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->spi:I

    move/from16 v30, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->tos:I

    move/from16 v31, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->tosMask:I

    move/from16 v32, v0

    iget v0, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;->flowLabel:I

    move/from16 v33, v0

    invoke-direct/range {v17 .. v33}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    move-object v0, v8

    .line 5322
    .local v0, "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5323
    .end local v0    # "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    .end local v7    # "info":Lvendor/mediatek/hardware/mtkradioex/V2_0/PktFilter;
    move-object/from16 v0, p0

    goto :goto_1

    .line 5325
    :cond_1
    iget-object v0, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/mtkradioex/V2_0/Tft;

    iget-object v0, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/Tft;->tftParameter:Lvendor/mediatek/hardware/mtkradioex/V2_0/TftParameter;

    iget-object v0, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/TftParameter;->linkedPfList:Ljava/util/ArrayList;

    .line 5326
    .local v0, "pfList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

    invoke-direct {v6, v0}, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;-><init>(Ljava/util/ArrayList;)V

    .line 5327
    .local v6, "mtkTftParameter":Lcom/mediatek/internal/telephony/ims/MtkTftParameter;
    new-instance v7, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    invoke-direct {v7, v4, v5, v6}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;-><init>(ILjava/util/ArrayList;Lcom/mediatek/internal/telephony/ims/MtkTftParameter;)V

    move-object v3, v7

    move-object v0, v3

    goto :goto_2

    .line 5309
    .end local v0    # "pfList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "operation":I
    .end local v5    # "mtkPacketFilterInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;>;"
    .end local v6    # "mtkTftParameter":Lcom/mediatek/internal/telephony/ims/MtkTftParameter;
    :cond_2
    move-object v0, v3

    .line 5330
    .end local v3    # "mtkTftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .local v0, "mtkTftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    :goto_2
    iget-object v8, v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    .line 5331
    .local v8, "pcscfAddress":Ljava/lang/String;
    new-instance v17, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-object/from16 v3, v17

    move v4, v14

    move v5, v15

    move v6, v13

    move v7, v12

    move-object/from16 v18, v8

    .end local v8    # "pcscfAddress":Ljava/lang/String;
    .local v18, "pcscfAddress":Ljava/lang/String;
    move v8, v11

    move/from16 v19, v9

    .end local v9    # "failCause":I
    .local v19, "failCause":I
    move v9, v10

    move/from16 v20, v10

    .end local v10    # "bearerId":I
    .local v20, "bearerId":I
    move/from16 v10, v19

    move/from16 v21, v11

    .end local v11    # "signalingFlag":I
    .local v21, "signalingFlag":I
    move-object/from16 v11, v16

    move/from16 v22, v12

    .end local v12    # "active":I
    .local v22, "active":I
    move-object v12, v0

    move/from16 v23, v13

    .end local v13    # "cid":I
    .local v23, "cid":I
    move-object/from16 v13, v18

    invoke-direct/range {v3 .. v13}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;-><init>(IIIIIIILcom/mediatek/internal/telephony/ims/MtkQosStatus;Lcom/mediatek/internal/telephony/ims/MtkTftStatus;Ljava/lang/String;)V

    return-object v17
.end method

.method protected blacklist convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;
    .locals 15
    .param p2, "ril"    # Lcom/android/internal/telephony/RIL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;",
            "Lcom/android/internal/telephony/RIL;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 3804
    .local p1, "hwListRil":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3805
    .local v0, "num":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3808
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertHalHwConfigList: num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3810
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/HardwareConfig;

    .line 3811
    .local v4, "hwRil":Landroid/hardware/radio/V1_0/HardwareConfig;
    iget v5, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    .line 3812
    .local v5, "type":I
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 3821
    new-instance v7, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-direct {v7, v5}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;-><init>(I)V

    .line 3822
    .local v7, "hw":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v8, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v9, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object v10, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    .line 3823
    goto :goto_1

    .line 3826
    .end local v7    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3814
    :cond_1
    new-instance v7, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-direct {v7, v5}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;-><init>(I)V

    .line 3815
    .restart local v7    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v8, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    .line 3816
    .local v6, "hwModem":Landroid/hardware/radio/V1_0/HardwareConfigModem;
    iget-object v8, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v9, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget v10, v6, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    iget v11, v6, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    iget v12, v6, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    iget v13, v6, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v14, v6, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    .line 3818
    nop

    .line 3830
    .end local v6    # "hwModem":Landroid/hardware/radio/V1_0/HardwareConfigModem;
    :goto_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3831
    .end local v4    # "hwRil":Landroid/hardware/radio/V1_0/HardwareConfig;
    .end local v5    # "type":I
    goto :goto_0

    .line 3833
    .end local v7    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :cond_2
    return-object v1
.end method

.method public blacklist dataConnectionAttach(ILandroid/os/Message;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5365
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5366
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5367
    const/16 v1, 0x860

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5371
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5375
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->dataConnectionAttach(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5378
    goto :goto_0

    .line 5376
    :catch_0
    move-exception v2

    .line 5377
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "dataConnectionAttach"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5380
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist dataConnectionDetach(ILandroid/os/Message;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5383
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5384
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5385
    const/16 v1, 0x861

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5389
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5393
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->dataConnectionDetach(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5396
    goto :goto_0

    .line 5394
    :catch_0
    move-exception v2

    .line 5395
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "dataConnectionDetach"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5398
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist deactivateNrScgCommunication(ZZLandroid/os/Message;)V
    .locals 4
    .param p1, "deactivate"    # Z
    .param p2, "allowSCGAdd"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2302
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2303
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2304
    const/16 v1, 0x89a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2307
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deactivate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " allowSCGAdd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2311
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->deactivateNrScgCommunication(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    goto :goto_0

    .line 2312
    :catch_0
    move-exception v2

    .line 2313
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "deactivateNrScgCommunication"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2316
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist deleteUPBEntry(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 4493
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4494
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4495
    const/16 v1, 0x7f9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4499
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entryIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4503
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->deleteUPBEntry(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4506
    goto :goto_0

    .line 4504
    :catch_0
    move-exception v2

    .line 4505
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "deleteUPBEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4508
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist disableNR(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2207
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2208
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2209
    const/16 v1, 0x891

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2212
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2216
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->disableNR(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2219
    goto :goto_0

    .line 2217
    :catch_0
    move-exception v2

    .line 2218
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "disableNR"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2221
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 1614
    invoke-virtual {p0, p6}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1615
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1616
    const/16 v1, 0x810

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p6, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1619
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1621
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/internal/telephony/MtkRIL;->convertToHalSimAuthStructure(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;

    move-result-object v2

    .line 1624
    .local v2, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    goto :goto_0

    .line 1625
    :catch_0
    move-exception v3

    .line 1626
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "doGeneralSimAuthentication"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1629
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "strVal"    # Ljava/lang/String;
    .param p5, "tonForNum"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 4481
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4482
    return-void
.end method

.method public blacklist editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "strVal"    # Ljava/lang/String;
    .param p5, "tonForNum"    # Ljava/lang/String;
    .param p6, "aasAnrIndex"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .line 4444
    invoke-virtual {p0, p7}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4445
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 4446
    const/16 v1, 0x7f8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p7, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4449
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4452
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4453
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4454
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4455
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4456
    if-nez p1, :cond_0

    .line 4457
    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4458
    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4462
    :cond_0
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->editUPBEntry(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4465
    goto :goto_0

    .line 4463
    :catch_0
    move-exception v3

    .line 4464
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "editUPBEntry"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4467
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist enableDsdaIndication(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 5685
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5687
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5688
    const/16 v1, 0x889

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5692
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5697
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->enableDsdaIndication(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5700
    goto :goto_0

    .line 5698
    :catch_0
    move-exception v2

    .line 5699
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "enableDsdaIndication"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5702
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist enableScgFailure(ZIIILandroid/os/Message;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "T1"    # I
    .param p3, "P1"    # I
    .param p4, "T2"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2190
    invoke-virtual {p0, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v6

    .line 2191
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 2192
    const/16 v0, 0x890

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 2195
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " T1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " P1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " T2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2199
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->enableSCGfailure(IZIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    goto :goto_0

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "enableScgFailure"

    invoke-virtual {p0, v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2204
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3354
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3355
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3356
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3358
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3359
    const/4 v2, 0x0

    .line 3360
    .local v2, "params":[Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V

    .line 3362
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public blacklist getATR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1422
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1423
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1424
    const/16 v1, 0x7d1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1427
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1430
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getATR(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    goto :goto_0

    .line 1431
    :catch_0
    move-exception v2

    .line 1432
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getATR"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1435
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getApcInfo(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3710
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3711
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3712
    const/16 v1, 0x7e6

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3715
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3719
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getApcInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3722
    goto :goto_0

    .line 3720
    :catch_0
    move-exception v2

    .line 3721
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getApcInfo"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3724
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getAvailableNetworksWithAct(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1985
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1986
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1987
    const/16 v1, 0x7d6

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1991
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1995
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getAvailableNetworksWithAct(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    goto :goto_0

    .line 1996
    :catch_0
    move-exception v2

    .line 1997
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAvailableNetworks"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2000
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getCOLP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2743
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2744
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2745
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2749
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2753
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2756
    goto :goto_0

    .line 2754
    :catch_0
    move-exception v2

    .line 2755
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLP"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2758
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getCOLR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2764
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2765
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2766
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2770
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2774
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    goto :goto_0

    .line 2775
    :catch_0
    move-exception v2

    .line 2776
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLR"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2779
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getCallSubAddress(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3587
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3588
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3589
    const/16 v1, 0x8a1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3593
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3597
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getCallSubAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3600
    goto :goto_0

    .line 3598
    :catch_0
    move-exception v2

    .line 3599
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCallSubAddress"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3602
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getCurrentPOLList(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4902
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4903
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4904
    const/16 v1, 0x83c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4908
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4912
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getCurrentPOLList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4915
    goto :goto_0

    .line 4913
    :catch_0
    move-exception v2

    .line 4914
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCurrentPOLList"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4917
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getDeactivateNrScgCommunication(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2319
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2320
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2321
    const/16 v1, 0x89b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2324
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 2327
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getDeactivateNrScgCommunication(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    goto :goto_0

    .line 2328
    :catch_0
    move-exception v2

    .line 2329
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDeactivateNrScgCommunication"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2332
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getDisable2G(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 5483
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    move-result-object v0

    .line 5484
    .local v0, "rilOp":Lcom/mediatek/internal/telephony/IMtkRilOp;
    if-eqz v0, :cond_0

    .line 5485
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/IMtkRilOp;->getDisable2G(Landroid/os/Message;)V

    .line 5486
    return-void

    .line 5488
    :cond_0
    return-void
.end method

.method public blacklist getDsdaStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 5705
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5707
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5708
    const/16 v1, 0x88a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5712
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5716
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getDsdaStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5719
    goto :goto_0

    .line 5717
    :catch_0
    move-exception v2

    .line 5718
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDsdaStatus"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5721
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getEccNum()V
    .locals 5

    .line 3660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v1

    .line 3661
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 3662
    const/16 v2, 0x865

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3666
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3670
    :try_start_0
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getEccNum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3673
    goto :goto_0

    .line 3671
    :catch_0
    move-exception v2

    .line 3672
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getEccNum"

    invoke-virtual {p0, v0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3675
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getFemtoCellList(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2031
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2032
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2033
    const/16 v1, 0x807

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2037
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2040
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getFemtocellList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    goto :goto_0

    .line 2041
    :catch_0
    move-exception v2

    .line 2042
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getFemtoCellList"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2045
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getGsmBroadcastActivation(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2637
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2638
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2639
    const/16 v1, 0x843

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2643
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2646
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getGsmBroadcastActivation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2649
    goto :goto_0

    .line 2647
    :catch_0
    move-exception v2

    .line 2648
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getGsmBroadcastActivation"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2651
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getGsmBroadcastLangs(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2621
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2622
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2623
    const/16 v1, 0x7da

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2626
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2629
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getGsmBroadcastLangs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    goto :goto_0

    .line 2630
    :catch_0
    move-exception v2

    .line 2631
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getGsmBroadcastLangs"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2634
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getIccid(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1442
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1443
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1444
    const/16 v1, 0x85e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1448
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1452
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getIccid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    goto :goto_0

    .line 1453
    :catch_0
    move-exception v2

    .line 1454
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getIccid"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1457
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getLteReleaseVersion(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 5138
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5139
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5140
    const/16 v1, 0x868

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5144
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5148
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getLteReleaseVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5151
    goto :goto_0

    .line 5149
    :catch_0
    move-exception v2

    .line 5150
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLteReleaseVersion"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5153
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getMtkRadioExIndication()Lcom/mediatek/internal/telephony/MtkRadioExIndication;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExIndication:Lcom/mediatek/internal/telephony/MtkRadioExIndication;

    return-object v0
.end method

.method public blacklist getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 535
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$RilHandler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "MtkRILJ"

    const-string v1, "getMtkRadioExProxy service died, we try again later"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleProxyNotExist(Landroid/os/Message;)V

    .line 538
    return-object v2

    .line 540
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilJIntiDone:Z

    if-nez v0, :cond_1

    .line 541
    const-string v0, "MtkRILJ"

    const-string v1, "!mMtkRilJIntiDone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleProxyNotExist(Landroid/os/Message;)V

    .line 543
    return-object v2

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid or is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleProxyNotExist(Landroid/os/Message;)V

    .line 554
    return-object v2

    .line 556
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCellularSupported:Z

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 557
    const-string v0, "getMtkRadioExProxy:Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 558
    if-eqz p1, :cond_3

    .line 559
    nop

    .line 560
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 559
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 561
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    :cond_3
    return-object v2

    .line 566
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    if-eqz v0, :cond_5

    .line 567
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    return-object v0

    .line 570
    :cond_5
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkRIL;->HIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    .line 572
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-nez v4, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    aget-object v0, v0, v4

    .line 571
    invoke-static {v0, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    if-eqz v0, :cond_a

    .line 574
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyDeathRecipient:Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 575
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 574
    invoke-interface {v0, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 576
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExResponse:Lcom/mediatek/internal/telephony/MtkRadioExResponse;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExIndication:Lcom/mediatek/internal/telephony/MtkRadioExIndication;

    invoke-interface {v0, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    if-eqz v0, :cond_b

    .line 580
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :try_start_1
    const-string v4, "MtkRILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue size  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_7

    .line 587
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->remove(I)V

    .line 586
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 590
    :cond_7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 591
    const-string v5, "MtkRILJ"

    const-string v6, "reset pending switch request"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 597
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 598
    .local v5, "pendingDqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    .line 599
    .local v6, "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_8

    .line 600
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 601
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 604
    :cond_8
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->resetSendChldRequest()V

    .line 605
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 607
    .end local v4    # "i":I
    .end local v5    # "pendingDqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .end local v6    # "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    :cond_9
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local p1    # "result":Landroid/os/Message;
    :try_start_2
    throw v4

    .line 612
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkRIL;
    .restart local p1    # "result":Landroid/os/Message;
    :cond_a
    const-string v0, "MtkRILJ"

    const-string v4, "getMtkRadioExProxy: mRadioProxy == null"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 617
    :cond_b
    :goto_2
    goto :goto_3

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MtkRadioExProxy getService/setResponseFunctions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkRILJ"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    if-nez v0, :cond_d

    .line 620
    if-eqz p1, :cond_c

    .line 621
    nop

    .line 622
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 621
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 623
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 626
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$RilHandler;->removeMessages(I)V

    .line 627
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 629
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 628
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 627
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 630
    const-string v0, "MtkRadioExProxy sendMessageDelayed"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 633
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    return-object v0
.end method

.method public blacklist getMtkRadioExResponse()Lcom/mediatek/internal/telephony/MtkRadioExResponse;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExResponse:Lcom/mediatek/internal/telephony/MtkRadioExResponse;

    return-object v0
.end method

.method public blacklist getMtkRadioIndication()Lcom/mediatek/internal/telephony/MtkRadioIndication;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioIndication:Lcom/mediatek/internal/telephony/MtkRadioIndication;

    return-object v0
.end method

.method public blacklist getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioResponse:Lcom/mediatek/internal/telephony/MtkRadioResponse;

    return-object v0
.end method

.method public blacklist getPOLCapability(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4884
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4885
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4886
    const/16 v1, 0x83b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4890
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4894
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getPOLCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4897
    goto :goto_0

    .line 4895
    :catch_0
    move-exception v2

    .line 4896
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPOLCapability"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4899
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getPhoneBookMemStorage(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4615
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4616
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4617
    const/16 v1, 0x7fe

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4620
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4623
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getPhoneBookMemStorage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4626
    goto :goto_0

    .line 4624
    :catch_0
    move-exception v2

    .line 4625
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPhoneBookMemStorage"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4628
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getPhoneBookStringsLength(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4595
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4596
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4597
    const/16 v1, 0x7fd

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4600
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4603
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getPhoneBookStringsLength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4606
    goto :goto_0

    .line 4604
    :catch_0
    move-exception v2

    .line 4605
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPhoneBookStringsLength"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4608
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5781
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 5782
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 5783
    const/16 v1, 0x4a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5785
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5786
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkRIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5788
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5789
    :catch_0
    move-exception v2

    .line 5790
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPreferredNetworkType"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5791
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 5792
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkRIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5793
    move-object v2, v0

    check-cast v2, Landroid/hardware/radio/V1_4/IRadio;

    .line 5796
    .local v2, "radioProxy14":Landroid/hardware/radio/V1_4/IRadio;
    :try_start_1
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v3}, Landroid/hardware/radio/V1_4/IRadio;->getPreferredNetworkTypeBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5799
    goto :goto_1

    .line 5797
    :catch_1
    move-exception v3

    .line 5798
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getPreferredNetworkTypeBitmap"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5802
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy14":Landroid/hardware/radio/V1_4/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized blacklist getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 504
    const-string v0, "MtkRILJ"

    const-string v2, "getRadioProxy wait for MtkRIL"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleProxyNotExist(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-object v1

    .line 507
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    const-string v0, "MtkRILJ"

    const-string v2, "getRadioProxy service died, we try again later"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleProxyNotExist(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    monitor-exit p0

    return-object v1

    .line 515
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 522
    const-string v0, "MtkRILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid or is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleProxyNotExist(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    monitor-exit p0

    return-object v1

    .line 526
    :cond_2
    :try_start_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 494
    .end local p1    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;
    .locals 13

    .line 654
    const-string v0, "MtkRILJ"

    const-string v1, "getRilOp"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilOp:Lcom/mediatek/internal/telephony/IMtkRilOp;

    if-eqz v1, :cond_0

    .line 656
    return-object v1

    .line 658
    :cond_0
    const-string v1, "persist.vendor.operator.optr"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "optr":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 660
    const-string v2, "mMtkRilOp init fail, because OM load"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-object v3

    .line 663
    :cond_1
    const-string v2, "com.mediatek.opcommon.telephony.MtkRilOp"

    .line 664
    .local v2, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .line 666
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const-class v7, Ljava/lang/Integer;

    const/4 v11, 0x3

    aput-object v7, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 670
    .local v6, "clazzConstructfunc":Ljava/lang/reflect/Constructor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "constructor function = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mContext:Landroid/content/Context;

    aput-object v7, v5, v8

    iget v7, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPreferredNetworkType:I

    .line 672
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    iget v7, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCdmaSubscription:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    aput-object v7, v5, v11

    .line 671
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/IMtkRilOp;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRilOp:Lcom/mediatek/internal/telephony/IMtkRilOp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v6    # "clazzConstructfunc":Ljava/lang/reflect/Constructor;
    nop

    .line 678
    return-object v5

    .line 673
    :catch_0
    move-exception v5

    .line 674
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "mMtkRilOp init fail"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    return-object v3
.end method

.method public blacklist getRoamingEnable(ILandroid/os/Message;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5089
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5090
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5091
    const/16 v1, 0x840

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5095
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5099
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getRoamingEnable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5102
    goto :goto_0

    .line 5100
    :catch_0
    move-exception v2

    .line 5101
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getRoamingEnable"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5104
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getRxTestResult(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 4876
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    move-result-object v0

    .line 4877
    .local v0, "rilOp":Lcom/mediatek/internal/telephony/IMtkRilOp;
    if-eqz v0, :cond_0

    .line 4878
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/IMtkRilOp;->getRxTestResult(Landroid/os/Message;)V

    .line 4879
    return-void

    .line 4881
    :cond_0
    return-void
.end method

.method public blacklist getSignalStrengthWithWcdmaEcio(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2340
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2341
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2342
    const/16 v1, 0x869

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2345
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 2348
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getSignalStrengthWithWcdmaEcio(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    goto :goto_0

    .line 2349
    :catch_0
    move-exception v2

    .line 2350
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSignalStrength"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2353
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getSmsParameters(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2509
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2510
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2511
    const/16 v1, 0x7dc

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2514
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2517
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getSmsParameters(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    goto :goto_0

    .line 2518
    :catch_0
    move-exception v2

    .line 2519
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSmsParameters"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2522
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getSmsRuimMemoryStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3763
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3764
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3765
    const/16 v1, 0x7e8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3768
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3771
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getSmsRuimMemoryStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3774
    goto :goto_0

    .line 3772
    :catch_0
    move-exception v2

    .line 3773
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSmsRuimMemoryStatus"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3776
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getSmsSimMemoryStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2588
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2589
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2590
    const/16 v1, 0x7db

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2593
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2596
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getSmsMemStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2599
    goto :goto_0

    .line 2597
    :catch_0
    move-exception v2

    .line 2598
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSmsSimMemoryStatus"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2601
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getSuggestedPlmnList(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "rat"    # I
    .param p2, "num"    # I
    .param p3, "timer"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 5980
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5981
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5982
    const/16 v1, 0x88d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5986
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5991
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getSuggestedPlmnList(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5994
    goto :goto_0

    .line 5992
    :catch_0
    move-exception v2

    .line 5993
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSuggestedPlmnList"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5996
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 3273
    const/4 v1, 0x0

    .line 3274
    .local v1, "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->access$700(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3275
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 3276
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->access$700(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 3277
    .local v3, "adqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    iget v4, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 3278
    move-object v1, v3

    .line 3279
    goto :goto_1

    .line 3274
    .end local v3    # "adqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3282
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 3284
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3283
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 3286
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->remove(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove first item in dtmf queue done. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3292
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3293
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->get()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3294
    .local v2, "dqrr2":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    .line 3296
    .local v3, "rr2":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendDtmfQueueRR(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3299
    .end local v2    # "dqrr2":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/android/internal/telephony/RILRequest;
    goto :goto_3

    .line 3300
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3301
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3302
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3303
    .local v2, "pendingReq":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendDtmfQueueRR(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3305
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->setSendChldRequest()V

    .line 3306
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3309
    .end local v1    # "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 3311
    return-void

    .line 3309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLoge(Ljava/lang/String;)V

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->clearRequestWithError(Lcom/android/internal/telephony/RILRequest;I)V

    .line 650
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->resetMtkProxyAndRequestList()V

    .line 651
    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "accept"    # Z
    .param p2, "resCode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3976
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3977
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_2

    .line 3978
    const/16 v1, 0x7ed

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3983
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3985
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 3986
    .local v2, "param":[I
    const/16 v4, 0x21

    if-eq p2, v4, :cond_1

    const/16 v4, 0x20

    if-ne p2, v4, :cond_0

    goto :goto_0

    .line 3989
    :cond_0
    aput p1, v2, v3

    goto :goto_1

    .line 3987
    :cond_1
    :goto_0
    aput p2, v2, v3

    .line 3993
    :goto_1
    :try_start_0
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    aget v3, v2, v3

    invoke-interface {v0, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->handleStkCallSetupRequestFromSimWithResCode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3997
    goto :goto_2

    .line 3994
    :catch_0
    move-exception v3

    .line 3995
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "handleStkCallSetupRequestFromSimWithResCode"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3999
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "param":[I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist hangupAll(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3436
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3437
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3438
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3442
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3446
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3449
    goto :goto_0

    .line 3447
    :catch_0
    move-exception v2

    .line 3448
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupAll"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3451
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist hangupConnectionWithCause(IILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3482
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3483
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3484
    const/16 v1, 0x887

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3488
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3493
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3496
    goto :goto_0

    .line 3494
    :catch_0
    move-exception v2

    .line 3495
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupConnectionWithCause"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3498
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist hidePLMN(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mccmnc"    # Ljava/lang/String;

    .line 1973
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->hide_plmns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1974
    .local v1, "plmn":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1975
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1976
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 5430
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5431
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5432
    const/16 v1, 0x3b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5436
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5437
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5436
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5441
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRequestRaw(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5444
    goto :goto_0

    .line 5442
    :catch_0
    move-exception v2

    .line 5443
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "invokeOemRilRequestStrings"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5446
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 5449
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5450
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 5451
    const/16 v1, 0x3c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5454
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v2, ""

    .line 5455
    .local v2, "logStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 5456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5455
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5459
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " strings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5464
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v4, Ljava/util/ArrayList;

    .line 5465
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5464
    invoke-interface {v0, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRequestStrings(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5468
    goto :goto_1

    .line 5466
    :catch_0
    move-exception v3

    .line 5467
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "invokeOemRilRequestStrings"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5470
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "logStr":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method protected blacklist isGetHidlServiceSync()Z
    .locals 1

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iwlanSetRegisterCellularQualityReport(II[ILandroid/os/Message;)V
    .locals 18
    .param p1, "qualityRegister"    # I
    .param p2, "type"    # I
    .param p3, "values"    # [I
    .param p4, "result"    # Landroid/os/Message;

    .line 5908
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v12

    .line 5910
    .local v12, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v12, :cond_a

    .line 5911
    const/16 v0, 0x88c

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v13

    .line 5917
    .local v13, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5918
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " enable = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " type = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5917
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5922
    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    const-string v6, "1"

    goto :goto_0

    :cond_0
    const-string v6, "0"

    :goto_0
    move-object v8, v6

    .line 5923
    .local v8, "str1":Ljava/lang/String;
    const/4 v6, -0x1

    .line 5924
    .local v6, "modemSignalType":I
    const/4 v7, 0x6

    if-eqz v3, :cond_5

    const/4 v9, 0x2

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-eq v3, v9, :cond_3

    if-eq v3, v7, :cond_2

    const/4 v9, 0x7

    if-eq v3, v9, :cond_1

    .line 5941
    const-string v9, "iwlanSetRegisterCellularQualityReport(): type not support"

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLoge(Ljava/lang/String;)V

    move v14, v6

    goto :goto_1

    .line 5938
    :cond_1
    const/4 v6, 0x4

    .line 5939
    move v14, v6

    goto :goto_1

    .line 5935
    :cond_2
    const/4 v6, 0x3

    .line 5936
    move v14, v6

    goto :goto_1

    .line 5932
    :cond_3
    const/4 v6, 0x1

    .line 5933
    move v14, v6

    goto :goto_1

    .line 5929
    :cond_4
    const/4 v6, 0x2

    .line 5930
    move v14, v6

    goto :goto_1

    .line 5926
    :cond_5
    const/4 v6, 0x0

    .line 5927
    move v14, v6

    .line 5945
    .end local v6    # "modemSignalType":I
    .local v14, "modemSignalType":I
    :goto_1
    const/4 v6, -0x1

    if-ne v14, v6, :cond_7

    .line 5947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "< MTK : RIL_REQUEST_IWLAN_REGISTER_CELLULAR_QUALITY_REPORT Fail - Type is not supported"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5951
    if-eqz v5, :cond_6

    .line 5952
    const/4 v0, 0x0

    .line 5953
    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 5952
    invoke-static {v5, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5954
    invoke-virtual/range {p4 .. p4}, Landroid/os/Message;->sendToTarget()V

    .line 5956
    :cond_6
    return-void

    .line 5959
    :cond_7
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 5961
    .local v15, "str2":Ljava/lang/String;
    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v16

    .line 5962
    .local v16, "arraySorting":[I
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([I)V

    .line 5963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v6

    .line 5964
    .local v11, "sb":Ljava/lang/StringBuilder;
    array-length v6, v4

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_9

    .line 5965
    aget v0, v16, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5966
    if-lez v6, :cond_8

    .line 5967
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5964
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 5972
    .end local v6    # "i":I
    :cond_9
    :try_start_0
    iget v7, v13, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v0, "500"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v12

    move-object v9, v15

    move-object/from16 v17, v11

    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .local v17, "sb":Ljava/lang/StringBuilder;
    move-object v11, v0

    :try_start_1
    invoke-interface/range {v6 .. v11}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5975
    goto :goto_4

    .line 5973
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    .line 5974
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    const-string v6, "registerCellQltyReport"

    invoke-virtual {v1, v13, v6, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5977
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "str1":Ljava/lang/String;
    .end local v13    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v14    # "modemSignalType":I
    .end local v15    # "str2":Ljava/lang/String;
    .end local v16    # "arraySorting":[I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    :goto_4
    return-void
.end method

.method public blacklist lookupOperator5GName(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "nLac"    # I

    .line 1820
    const/4 v0, 0x0

    .line 1821
    .local v0, "operatorName":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName5GEons(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1823
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "nLac"    # I

    .line 1880
    const/4 v5, 0x7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lookupOperatorName(ILjava/lang/String;ZII)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "nLac"    # I
    .param p5, "display_rule"    # I

    .line 1886
    const/4 v0, 0x0

    .line 1889
    .local v0, "operatorName":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1890
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 1891
    .local v2, "simOperatorNumeric":Ljava/lang/String;
    const-string v3, "26006"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "26003"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1892
    const-string v0, "PLAY (Orange)"

    .line 1893
    return-object v0

    .line 1897
    :cond_0
    and-int/lit8 v3, p5, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 1898
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorSPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 1903
    :cond_1
    and-int/lit8 v3, p5, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1904
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperator5GName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46605"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    .line 1912
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameEons(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 1913
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    .line 1916
    :cond_3
    and-int/lit8 v3, p5, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1917
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameNitz(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1920
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1921
    if-eqz p2, :cond_4

    const-string v3, "52004"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1922
    return-object v0

    .line 1928
    :cond_4
    and-int/lit8 v3, p5, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1929
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameMVNO(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1931
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    .line 1934
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public blacklist lookupOperatorName5GEons(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "nLac"    # I

    .line 1725
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 1726
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1727
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 1728
    .local v1, "simRecord":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    const/4 v3, 0x0

    .line 1730
    .local v3, "sEons":Ljava/lang/String;
    const/16 v4, 0x2a

    .line 1731
    .local v4, "mask":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v5, "lac_sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eq v6, v2, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    div-int/2addr v8, v7

    if-ge v6, v8, :cond_2

    .line 1736
    invoke-virtual {v5, v6, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1735
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1733
    .end local v6    # "i":I
    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1740
    :cond_2
    iget v6, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneType:I

    const/4 v7, 0x0

    if-ne v6, v2, :cond_6

    .line 1741
    const v2, 0xfffffe

    const-string v6, "MtkRILJ"

    if-eq p4, v2, :cond_3

    const/4 v2, -0x1

    if-ne p4, v2, :cond_4

    .line 1742
    :cond_3
    const/4 p4, 0x0

    .line 1743
    const-string v2, "invalid lac, set 0"

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_4
    if-eqz v1, :cond_5

    .line 1748
    :try_start_0
    invoke-virtual {v1, p2, p4, p3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->get5GEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1749
    :catch_0
    move-exception v2

    .line 1750
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while get5GEonsIfExist. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1748
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    move-object v2, v7

    :goto_2
    move-object v3, v2

    .line 1751
    nop

    .line 1753
    :goto_3
    if-eqz v3, :cond_6

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lookupOperatorName5GEons subId="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " numeric="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " desireLongName="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " nLac="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1754
    invoke-static {v6, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lookupOperatorName5GEons plmn name update to 5GEons: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-object v3

    .line 1762
    :cond_6
    return-object v7
.end method

.method public blacklist lookupOperatorNameEons(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 17
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "nLac"    # I

    .line 1642
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v0, p4

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    .line 1643
    .local v4, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1644
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 1645
    .local v5, "simRecord":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    const/4 v7, 0x0

    .line 1647
    .local v7, "sEons":Ljava/lang/String;
    const/16 v8, 0x2a

    .line 1648
    .local v8, "mask":C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1649
    .local v9, "lac_sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eq v10, v6, :cond_1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    goto :goto_1

    .line 1652
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    div-int/2addr v12, v11

    if-ge v10, v12, :cond_2

    .line 1653
    invoke-virtual {v9, v10, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1652
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1650
    .end local v10    # "i":I
    :cond_1
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1657
    :cond_2
    iget v10, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneType:I

    if-ne v10, v6, :cond_e

    .line 1658
    const v6, 0xfffe

    if-eq v0, v6, :cond_4

    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v0

    goto :goto_3

    .line 1659
    :cond_4
    :goto_2
    const/4 v0, 0x0

    move v6, v0

    .line 1663
    .end local p4    # "nLac":I
    .local v6, "nLac":I
    :goto_3
    const-string v10, "MtkRILJ"

    if-eqz v5, :cond_5

    .line 1664
    :try_start_0
    invoke-virtual {v5, v2, v6, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1665
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1666
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while getEonsIfExist. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1664
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    const/4 v0, 0x0

    :goto_4
    move-object v7, v0

    .line 1667
    nop

    .line 1669
    :goto_5
    if-eqz v7, :cond_6

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lookupOperatorNameEons subId="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " numeric="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " desireLongName="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " nLac="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1670
    invoke-static {v10, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lookupOperatorNameEons plmn name update to Eons: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    return-object v7

    .line 1669
    :cond_6
    move/from16 v12, p1

    .line 1682
    const/4 v0, 0x0

    .line 1683
    .local v0, "mSpn":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    move-object v0, v13

    .line 1684
    const-string v13, "45400"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "plmn name update to ServiceProviderName"

    if-nez v13, :cond_8

    const-string v13, "45419"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "45416"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    const-string v13, "Hello"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1685
    invoke-static {v10, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-object v0

    .line 1689
    :cond_9
    if-eqz v5, :cond_a

    .line 1690
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    .line 1691
    .local v13, "mSimOperatorNumeric":Ljava/lang/String;
    :goto_7
    if-eqz v13, :cond_d

    .line 1692
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1693
    const/4 v15, 0x0

    .line 1694
    .local v15, "sCphsOns":Ljava/lang/String;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSIMCPHSOns()Ljava/lang/String;

    move-result-object v16

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v15, v16

    .line 1696
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 1697
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupOperatorNameEons plmn name update to CPHS Ons: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1704
    .end local v15    # "sCphsOns":Ljava/lang/String;
    .local v10, "sCphsOns":Ljava/lang/String;
    return-object v10

    .line 1711
    .end local v10    # "sCphsOns":Ljava/lang/String;
    .restart local v15    # "sCphsOns":Ljava/lang/String;
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 1712
    const-string v11, "63903"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "Equitel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1713
    invoke-static {v10, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    return-object v0

    .line 1720
    .end local v0    # "mSpn":Ljava/lang/String;
    .end local v13    # "mSimOperatorNumeric":Ljava/lang/String;
    .end local v15    # "sCphsOns":Ljava/lang/String;
    :cond_d
    move v0, v6

    goto :goto_9

    .line 1657
    .end local v6    # "nLac":I
    .restart local p4    # "nLac":I
    :cond_e
    move/from16 v12, p1

    .line 1720
    .end local p4    # "nLac":I
    .local v0, "nLac":I
    :goto_9
    const/4 v6, 0x0

    return-object v6
.end method

.method public blacklist lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 9
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "nLac"    # I

    .line 1867
    const/4 v0, 0x0

    .line 1868
    .local v0, "mPlmn":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1869
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 1870
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 1871
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1872
    .local v3, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1874
    .end local v2    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    .end local v3    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getPlmnListDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1875
    .local v8, "rule":I
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist lookupOperatorNameMVNO(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z

    .line 1806
    const/4 v0, 0x0

    .line 1808
    .local v0, "operatorName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1809
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->lookupOperatorName(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookupOperatorNameMVNO plmn name update to TS.25/MVNO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_0
    return-object v0
.end method

.method public blacklist lookupOperatorNameNitz(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z

    .line 1768
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1769
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 1770
    .local v1, "nitzOperatorNumeric":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1772
    .local v2, "nitzOperatorName":Ljava/lang/String;
    const-string v3, "persist.vendor.radio.nitz_oper_code"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1774
    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1775
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 1776
    const-string v5, "persist.vendor.radio.nitz_oper_lname"

    invoke-static {v0, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1779
    :cond_0
    const-string v5, "persist.vendor.radio.nitz_oper_sname"

    invoke-static {v0, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1784
    :goto_0
    const-string v4, "MtkRILJ"

    if-eqz v2, :cond_1

    const-string v5, "uCs2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1786
    const-string v3, "lookupOperatorName() handling UCS2 format name"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x4

    .line 1789
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "UTF-16"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1792
    goto :goto_1

    .line 1790
    :catch_0
    move-exception v3

    .line 1791
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "lookupOperatorName() UnsupportedEncodingException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lookupOperatorNameNitz plmn name update to Nitz: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1799
    return-object v2

    .line 1802
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public blacklist lookupOperatorSPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "numeric"    # Ljava/lang/String;

    .line 1827
    const/4 v0, 0x0

    .line 1828
    .local v0, "operatorName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1829
    .local v1, "plmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1830
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    .line 1831
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    .line 1832
    .local v3, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1834
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1835
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1836
    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 1837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lookupOperatorSPN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkRILJ"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    .end local v3    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 1841
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public blacklist mtkRiljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    const-string v1, "MtkRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method public blacklist mtkRiljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    const-string v1, "MtkRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method public blacklist notifyPlmnMvnoData(Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;)V
    .locals 3
    .param p1, "response"    # Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 6144
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 6145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_0

    .line 6146
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 6148
    :cond_0
    return-void
.end method

.method public blacklist onSlotActiveStatusChange(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 638
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->onSlotActiveStatusChange(Z)V

    .line 639
    if-eqz p1, :cond_0

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->resetMtkProxyAndRequestList()V

    .line 645
    :goto_0
    return-void
.end method

.method public blacklist queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 8
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2852
    const-string v0, ""

    .line 2853
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 2854
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 2856
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v3

    .line 2857
    .local v3, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v3, :cond_0

    .line 2858
    const/16 v4, 0x84d

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, p3, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2863
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cfreason = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " serviceClass = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2867
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 2869
    .local v5, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p1, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 2870
    iput p2, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 2871
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 2872
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 2873
    iput v6, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 2874
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 2875
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 2878
    :try_start_0
    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v6, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    goto :goto_0

    .line 2879
    :catch_0
    move-exception v6

    .line 2880
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "queryCallForwardInTimeSlotStatus"

    invoke-virtual {p0, v4, v7, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2883
    .end local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v5    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist queryFemtoCellSystemSelectionMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2111
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2112
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2113
    const/16 v1, 0x80a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2117
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2121
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryFemtoCellSystemSelectionMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    goto :goto_0

    .line 2122
    :catch_0
    move-exception v2

    .line 2123
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryFemtoCellSystemSelectionMode"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2126
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist queryNetworkLock(ILandroid/os/Message;)V
    .locals 4
    .param p1, "category"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 4089
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4090
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4091
    const/16 v1, 0x813

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4094
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4097
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryNetworkLock(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4100
    goto :goto_0

    .line 4098
    :catch_0
    move-exception v2

    .line 4099
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryNetworkLock"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4102
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 4310
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4311
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4312
    const/16 v1, 0x7f4

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4316
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4319
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryPhbStorageInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4322
    goto :goto_0

    .line 4320
    :catch_0
    move-exception v2

    .line 4321
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryPhbStorageInfo"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4324
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist queryUPBAvailable(IILandroid/os/Message;)V
    .locals 4
    .param p1, "eftype"    # I
    .param p2, "fileIndex"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4727
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4728
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4729
    const/16 v1, 0x802

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4731
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " eftype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4735
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryUPBAvailable(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4738
    goto :goto_0

    .line 4736
    :catch_0
    move-exception v2

    .line 4737
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryUPBAvailable"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4740
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist queryUPBCapability(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4414
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4415
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4416
    const/16 v1, 0x7f7

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4419
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4422
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryUPBCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4425
    goto :goto_0

    .line 4423
    :catch_0
    move-exception v2

    .line 4424
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryUPBCapability"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4427
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readPhbEntry(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "bIndex"    # I
    .param p3, "eIndex"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 4389
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4390
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4391
    const/16 v1, 0x7f6

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4395
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " begin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4399
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readPhbEntry(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4402
    goto :goto_0

    .line 4400
    :catch_0
    move-exception v2

    .line 4401
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readPhbEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4404
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readPhoneBookEntryExt(IILandroid/os/Message;)V
    .locals 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4657
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4658
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4659
    const/16 v1, 0x800

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4662
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4665
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readPhoneBookEntryExt(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4668
    goto :goto_0

    .line 4666
    :catch_0
    move-exception v2

    .line 4667
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readPhoneBookEntryExt"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4670
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readUPBAasList(IILandroid/os/Message;)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4823
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4824
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4825
    const/16 v1, 0x806

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4827
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " endIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4831
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readUPBAasList(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4834
    goto :goto_0

    .line 4832
    :catch_0
    move-exception v2

    .line 4833
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readUPBAasList"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4836
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readUPBAnrEntry(IILandroid/os/Message;)V
    .locals 4
    .param p1, "adnIndex"    # I
    .param p2, "fileIndex"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4799
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4800
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4801
    const/16 v1, 0x805

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4803
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4807
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readUPBAnrEntry(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4810
    goto :goto_0

    .line 4808
    :catch_0
    move-exception v2

    .line 4809
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readUPBAnrEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4812
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readUPBEmailEntry(IILandroid/os/Message;)V
    .locals 4
    .param p1, "adnIndex"    # I
    .param p2, "fileIndex"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4751
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4752
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4753
    const/16 v1, 0x803

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4755
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4759
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readUPBEmailEntry(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4762
    goto :goto_0

    .line 4760
    :catch_0
    move-exception v2

    .line 4761
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readUPBEmailEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4764
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readUPBGasList(IILandroid/os/Message;)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4519
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4520
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4521
    const/16 v1, 0x7fa

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4525
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":  startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " endIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4529
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readUPBGasList(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4532
    goto :goto_0

    .line 4530
    :catch_0
    move-exception v2

    .line 4531
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readUPBGasList"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4534
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readUPBGrpEntry(ILandroid/os/Message;)V
    .locals 4
    .param p1, "adnIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 4544
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4545
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4546
    const/16 v1, 0x7fb

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4550
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":  adnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4554
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readUPBGrpEntry(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4557
    goto :goto_0

    .line 4555
    :catch_0
    move-exception v2

    .line 4556
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readUPBGrpEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4559
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist readUPBSneEntry(IILandroid/os/Message;)V
    .locals 4
    .param p1, "adnIndex"    # I
    .param p2, "fileIndex"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4775
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4776
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4777
    const/16 v1, 0x804

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4779
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4783
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->readUPBSneEntry(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4786
    goto :goto_0

    .line 4784
    :catch_0
    move-exception v2

    .line 4785
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "readUPBSneEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4788
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist registerForAttachApnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4163
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4165
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4166
    return-void
.end method

.method public blacklist registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3076
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3077
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3078
    return-void
.end method

.method public blacklist registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3052
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3053
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call registerForCallForwardingInfo, Handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3057
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3058
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3060
    :cond_0
    return-void
.end method

.method public blacklist registerForCardDetectedInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1549
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1550
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1552
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCardDetected:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1554
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1556
    :cond_0
    return-void
.end method

.method public blacklist registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3115
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3116
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3117
    return-void
.end method

.method public blacklist registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4015
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4016
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4017
    return-void
.end method

.method public blacklist registerForCsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1367
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1369
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1370
    return-void
.end method

.method public blacklist registerForDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2979
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2980
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2981
    return-void
.end method

.method public blacklist registerForDedicatedBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5257
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5258
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5259
    return-void
.end method

.method public blacklist registerForDedicatedBearerDeactivationed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5277
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5278
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5279
    return-void
.end method

.method public blacklist registerForDedicatedBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5267
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5268
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5269
    return-void
.end method

.method public blacklist registerForDsbpStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5572
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5573
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5574
    return-void
.end method

.method public blacklist registerForDsdaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5726
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5727
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5728
    return-void
.end method

.method public blacklist registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5056
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5057
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5058
    return-void
.end method

.method public blacklist registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2443
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2444
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2445
    return-void
.end method

.method public blacklist registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3898
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3899
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3900
    return-void
.end method

.method public blacklist registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1503
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1504
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1505
    return-void
.end method

.method public blacklist registerForIccidChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 6116
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 6117
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 6119
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6121
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 6123
    :cond_0
    return-void
.end method

.method public blacklist registerForImsiRefreshDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1512
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1513
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1514
    return-void
.end method

.method public blacklist registerForMccMncChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5166
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5167
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5168
    return-void
.end method

.method public blacklist registerForMdDataRetryCountReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5014
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5015
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5016
    return-void
.end method

.method public blacklist registerForMobileDataUsage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 6072
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 6073
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 6074
    return-void
.end method

.method public blacklist registerForModulation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2420
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    move-result-object v0

    .line 2421
    .local v0, "rilOp":Lcom/mediatek/internal/telephony/IMtkRilOp;
    if-eqz v0, :cond_0

    .line 2422
    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkRilOp;->registerForModulation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2423
    return-void

    .line 2425
    :cond_0
    return-void
.end method

.method public blacklist registerForNetworkEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2397
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2398
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2399
    return-void
.end method

.method public blacklist registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2680
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2681
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2682
    return-void
.end method

.method public blacklist registerForNetworkReject(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2408
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2409
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2410
    return-void
.end method

.method public blacklist registerForNwLimitState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 6083
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 6084
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 6085
    return-void
.end method

.method public blacklist registerForPcoDataAfterAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4945
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4946
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4947
    return-void
.end method

.method public blacklist registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4282
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4283
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call registerForPhbReady Handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4285
    return-void
.end method

.method public blacklist registerForPlmnData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 6133
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 6134
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 6135
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_0

    .line 6137
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 6139
    :cond_0
    return-void
.end method

.method public blacklist registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2670
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2671
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2672
    return-void
.end method

.method public blacklist registerForPseudoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3680
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3681
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3682
    return-void
.end method

.method public blacklist registerForQualifiedNetworkTypesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5737
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5738
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5739
    return-void
.end method

.method public blacklist registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5042
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5043
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5044
    return-void
.end method

.method public blacklist registerForResetAttachApn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4154
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4155
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4156
    return-void
.end method

.method public blacklist registerForRsuSimLockChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1530
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1531
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1532
    return-void
.end method

.method public blacklist registerForSignalStrengthWithWcdmaEcioChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1387
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1388
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1389
    return-void
.end method

.method public blacklist registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4197
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4198
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4199
    return-void
.end method

.method public blacklist registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4179
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4180
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4181
    return-void
.end method

.method public blacklist registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4188
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4189
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4190
    return-void
.end method

.method public blacklist registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4224
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4225
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4226
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4227
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 4229
    :cond_0
    return-void
.end method

.method public blacklist registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4206
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4207
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4208
    return-void
.end method

.method public blacklist registerForSimTrayPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4006
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4007
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4008
    return-void
.end method

.method public blacklist registerForSmlSlotLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4243
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4244
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4245
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4246
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 4248
    :cond_0
    return-void
.end method

.method public blacklist registerForSmsInfoExt(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2481
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2482
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2483
    return-void
.end method

.method public blacklist registerForSmsReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2467
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2468
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2470
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsSmsReady:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2472
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2474
    :cond_0
    return-void
.end method

.method public blacklist registerForTxPower(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5494
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5495
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5496
    return-void
.end method

.method public blacklist registerForTxPowerStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5509
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5510
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5511
    return-void
.end method

.method public blacklist registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1494
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1495
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1496
    return-void
.end method

.method public blacklist registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1485
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1486
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1487
    return-void
.end method

.method public blacklist registerForVsimIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5177
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5178
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    const-string v1, "registerForVsimIndication called..."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5179
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5180
    return-void
.end method

.method public blacklist reloadModemType(ILandroid/os/Message;)V
    .locals 4
    .param p1, "modemType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3956
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3957
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3958
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3962
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " modemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", applyType:1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3967
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->modifyModemType(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3970
    goto :goto_0

    .line 3968
    :catch_0
    move-exception v2

    .line 3969
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "modifyModemType"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3972
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist removeCellBroadcastMsg(IILandroid/os/Message;)V
    .locals 4
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2567
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2568
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2569
    const/16 v1, 0x7df

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2573
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2577
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->removeCbMsg(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2580
    goto :goto_0

    .line 2578
    :catch_0
    move-exception v2

    .line 2579
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "removeCellBroadcastMsg"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2582
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resetAllConnections(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 5401
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5402
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5403
    const/16 v1, 0x862

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5407
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5411
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->resetAllConnections(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5414
    goto :goto_0

    .line 5412
    :catch_0
    move-exception v2

    .line 5413
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "resetAllConnections"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5416
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resetMdDataRetryCount(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 4997
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4998
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5000
    const/16 v1, 0x80f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5003
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5004
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5003
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5007
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->resetMdDataRetryCount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5010
    goto :goto_0

    .line 5008
    :catch_0
    move-exception v2

    .line 5009
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "resetMdDataRetryCount"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5012
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected blacklist resetMtkProxyAndRequestList()V
    .locals 2

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 741
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 742
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 743
    return-void
.end method

.method public blacklist restartRILD(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4043
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4044
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4045
    const/16 v1, 0x866

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4049
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4053
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->restartRILD(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4056
    goto :goto_0

    .line 4054
    :catch_0
    move-exception v2

    .line 4055
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "restartRILD"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4058
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZIILandroid/os/Message;)V
    .locals 8
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 2952
    invoke-virtual {p0, p6}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v6

    .line 2953
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 2954
    const/16 v0, 0x84f

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p6, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 2958
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2959
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nafFqdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nafSecureProtocolId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " forceRun = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2958
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2967
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    goto :goto_0

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "runGbaAuthentication"

    invoke-virtual {p0, v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2973
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist searchRat([ILandroid/os/Message;)V
    .locals 5
    .param p1, "rat"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 2263
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2264
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 2265
    const/16 v1, 0x894

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2269
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2272
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2273
    .local v2, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 2274
    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2277
    .end local v3    # "i":I
    :cond_0
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSearchRat(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    goto :goto_1

    .line 2278
    :catch_0
    move-exception v3

    .line 2279
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "searchRat"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2282
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist searchStoredFrequencyInfo(III[ILandroid/os/Message;)V
    .locals 9
    .param p1, "operation"    # I
    .param p2, "plmnId"    # I
    .param p3, "rat"    # I
    .param p4, "freq"    # [I
    .param p5, "result"    # Landroid/os/Message;

    .line 2241
    invoke-virtual {p0, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v6

    .line 2242
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v6, :cond_1

    .line 2243
    const/16 v0, 0x893

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 2246
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " plmnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2250
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 2251
    .local v8, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 2252
    aget v1, p4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2255
    .end local v0    # "i":I
    :cond_0
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    goto :goto_1

    .line 2256
    :catch_0
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "searchStoredFrequencyInfo"

    invoke-virtual {p0, v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2260
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v8    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 2074
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2075
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_2

    .line 2076
    const/16 v1, 0x809

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2080
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgRat()I

    move-result v2

    .line 2084
    .local v2, "act":I
    const/16 v4, 0xe

    if-ne v2, v4, :cond_0

    .line 2085
    const/4 v2, 0x7

    goto :goto_0

    .line 2086
    :cond_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 2087
    const/4 v2, 0x2

    goto :goto_0

    .line 2089
    :cond_1
    const/4 v2, 0x0

    .line 2092
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " csgId="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " plmn="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgRat()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " act="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2092
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2096
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2097
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2098
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2099
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2096
    invoke-interface {v0, v3, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    goto :goto_1

    .line 2100
    :catch_0
    move-exception v3

    .line 2101
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "selectFemtoCell"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2104
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "act":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist sendCNAP(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "cnapssMessage"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2785
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2786
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2787
    const/16 v1, 0x83a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2791
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CNAP string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2796
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendCnap(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2799
    goto :goto_0

    .line 2797
    :catch_0
    move-exception v2

    .line 2798
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendCNAP"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2801
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist sendDtmfQueueRR(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 12
    .param p1, "dqrr"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 3209
    iget-object v0, p1, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    .line 3210
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 3211
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    const-string v2, "] request: "

    const-string v3, "get RadioProxy null. (["

    const-string v4, ")"

    if-nez v1, :cond_0

    .line 3212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 3213
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3212
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLoge(Ljava/lang/String;)V

    .line 3214
    return-void

    .line 3217
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (by DtmfQueueRR)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3221
    const/4 v5, 0x0

    .line 3222
    .local v5, "params":[Ljava/lang/Object;
    :try_start_0
    iget v6, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0xf

    if-eq v6, v7, :cond_8

    const/16 v7, 0x10

    if-eq v6, v7, :cond_7

    const/16 v7, 0x31

    const-string v8, " params error. ("

    const-string v9, "request "

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v7, :cond_5

    const/16 v7, 0x32

    if-eq v6, v7, :cond_4

    const/16 v7, 0x34

    if-eq v6, v7, :cond_2

    const/16 v7, 0x48

    if-eq v6, v7, :cond_1

    .line 3256
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 3257
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3256
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLoge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3240
    :cond_1
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V

    .line 3241
    goto/16 :goto_0

    .line 3230
    :cond_2
    iget-object v2, p1, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 3231
    .end local v5    # "params":[Ljava/lang/Object;
    .local v2, "params":[Ljava/lang/Object;
    array-length v3, v2

    if-eq v3, v11, :cond_3

    .line 3232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3233
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3232
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 3235
    :cond_3
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3236
    .local v3, "gsmIndex":I
    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v5, v3}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V

    .line 3238
    .end local v3    # "gsmIndex":I
    goto :goto_0

    .line 3253
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v5    # "params":[Ljava/lang/Object;
    :cond_4
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V

    .line 3254
    goto :goto_0

    .line 3243
    :cond_5
    iget-object v2, p1, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 3244
    .end local v5    # "params":[Ljava/lang/Object;
    .restart local v2    # "params":[Ljava/lang/Object;
    array-length v3, v2

    if-eq v3, v11, :cond_6

    .line 3245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3245
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 3248
    :cond_6
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 3249
    .local v3, "c":C
    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V

    .line 3251
    .end local v3    # "c":C
    goto :goto_0

    .line 3227
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v5    # "params":[Ljava/lang/Object;
    :cond_7
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V

    .line 3228
    goto :goto_0

    .line 3224
    :cond_8
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3225
    nop

    .line 3262
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 3259
    :catch_0
    move-exception v2

    .line 3260
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DtmfQueueRR("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 3261
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3260
    invoke-virtual {p0, v0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3263
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public blacklist sendEmbmsAtCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2991
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2992
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2993
    const/16 v1, 0x80c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2996
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3001
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendEmbmsAtCommand(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3004
    goto :goto_0

    .line 3002
    :catch_0
    move-exception v2

    .line 3003
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "sendEmbmsAtCommand"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3006
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "rri"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 6151
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 6152
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6153
    const/16 v1, 0x89c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 6157
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> RIL_REQUEST_SML_RSU_REQUEST opId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->opId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->requestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 6162
    nop

    .line 6163
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v2

    .line 6165
    .local v2, "radioProxyV2_0":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6168
    goto :goto_0

    .line 6166
    :catch_0
    move-exception v3

    .line 6167
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "sendRsuRequest"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6170
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxyV2_0":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist sendSarIndicator(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "sarCmdType"    # I
    .param p2, "sarParameter"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 6092
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 6094
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 6095
    const/16 v1, 0x899

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 6099
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sarCmdType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sarParameter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 6103
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendSarIndicator(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6106
    goto :goto_0

    .line 6104
    :catch_0
    move-exception v2

    .line 6105
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendSarIndicator"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6108
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist sendVsimNotification(IIILandroid/os/Message;)Z
    .locals 5
    .param p1, "transactionId"    # I
    .param p2, "eventId"    # I
    .param p3, "simType"    # I
    .param p4, "message"    # Landroid/os/Message;

    .line 5189
    const/4 v0, 0x1

    .line 5191
    .local v0, "result":Z
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v1

    .line 5192
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 5193
    const/16 v2, 0x841

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p4, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 5197
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", eventId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simTpye: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5203
    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendVsimNotification(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5207
    goto :goto_0

    .line 5204
    :catch_0
    move-exception v3

    .line 5205
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "sendVsimNotification"

    invoke-virtual {p0, v2, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5206
    const/4 v0, 0x0

    .line 5208
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 5209
    :cond_0
    const/4 v0, 0x0

    .line 5212
    :goto_1
    return v0
.end method

.method public blacklist sendVsimOperation(IIII[BLandroid/os/Message;)Z
    .locals 17
    .param p1, "transactionId"    # I
    .param p2, "eventId"    # I
    .param p3, "message"    # I
    .param p4, "dataLength"    # I
    .param p5, "data"    # [B
    .param p6, "response"    # Landroid/os/Message;

    .line 5217
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/4 v4, 0x1

    .line 5219
    .local v4, "result":Z
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v12

    .line 5220
    .local v12, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v12, :cond_1

    .line 5221
    const/16 v0, 0x842

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v13

    .line 5225
    .local v13, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", eventId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", length: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 5235
    .local v11, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 5236
    aget-byte v5, v2, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5240
    .end local v0    # "i":I
    :cond_0
    :try_start_0
    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v12

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v16, v11

    .end local v11    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local v16, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_1
    invoke-interface/range {v5 .. v11}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendVsimOperation(IIIIILjava/util/ArrayList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5245
    goto :goto_2

    .line 5242
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v16    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v11    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_1
    move-exception v0

    move-object/from16 v16, v11

    .line 5243
    .end local v11    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_1
    const-string v5, "sendVsimOperation"

    invoke-virtual {v1, v13, v5, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5244
    const/4 v4, 0x0

    .line 5246
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v16    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_2
    goto :goto_3

    .line 5247
    :cond_1
    move/from16 v14, p2

    move/from16 v15, p4

    const/4 v4, 0x0

    .line 5250
    :goto_3
    return v4
.end method

.method public blacklist sendWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "associated"    # Z
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "apMac"    # Ljava/lang/String;
    .param p5, "mtuSize"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 6020
    invoke-virtual {p0, p6}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v7

    .line 6021
    .local v7, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v7, :cond_1

    .line 6022
    const/16 v0, 0x89e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p6, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 6026
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ifName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " associated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mtu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 6031
    :try_start_0
    iget v1, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 6032
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6031
    :goto_0
    move-object v0, v7

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6035
    goto :goto_1

    .line 6033
    :catch_0
    move-exception v0

    .line 6034
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "sendWifiAssociated"

    invoke-virtual {p0, v8, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6037
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist sendWifiEnabled(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "isWifiEnabled"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 6000
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 6001
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 6002
    const/16 v1, 0x89d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 6006
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isWifiEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 6011
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendWifiEnabled(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6014
    goto :goto_0

    .line 6012
    :catch_0
    move-exception v2

    .line 6013
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendWifiEnabled"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6016
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist sendWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "ipv4Addr"    # Ljava/lang/String;
    .param p3, "ipv6Addr"    # Ljava/lang/String;
    .param p4, "ipv4PrefixLen"    # I
    .param p5, "ipv6PrefixLen"    # I
    .param p6, "ipv4Gateway"    # Ljava/lang/String;
    .param p7, "ipv6Gateway"    # Ljava/lang/String;
    .param p8, "dnsCount"    # I
    .param p9, "dnsAddresses"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 6042
    move-object/from16 v1, p0

    move-object/from16 v2, p10

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v14

    .line 6043
    .local v14, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v14, :cond_0

    .line 6044
    const/16 v0, 0x89f

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v15

    .line 6048
    .local v15, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipv4PrefixLen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ipv6PrefixLen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ipv4Gateway: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipv6Gateway: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dnsCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dnsAddresses: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 6058
    :try_start_0
    iget v4, v15, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v3, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v3 .. v13}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6064
    goto :goto_0

    .line 6062
    :catch_0
    move-exception v0

    .line 6063
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "sendWifiIpAddress"

    invoke-virtual {v1, v15, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6066
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .locals 5
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3339
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3340
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3341
    const/16 v1, 0x34

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3344
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " gsmIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3347
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3348
    .local v2, "params":[Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V

    .line 3350
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public blacklist setApcMode(IZILandroid/os/Message;)V
    .locals 5
    .param p1, "apcMode"    # I
    .param p2, "reportOn"    # Z
    .param p3, "reportInterval"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3690
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3691
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 3692
    const/16 v1, 0x7e5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3696
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3701
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    move v3, v2

    :cond_0
    move v2, v3

    .line 3702
    .local v2, "reportMode":I
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, p1, v2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setApcMode(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3705
    .end local v2    # "reportMode":I
    goto :goto_0

    .line 3703
    :catch_0
    move-exception v2

    .line 3704
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setApcMode"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3707
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setAtInfoNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3036
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3037
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3038
    return-void
.end method

.method public blacklist setBackgroundSearchTimer(ILandroid/os/Message;)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2285
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2286
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2287
    const/16 v1, 0x895

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2290
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2294
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setBgsrchDeltaSleepTimer(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    goto :goto_0

    .line 2295
    :catch_0
    move-exception v2

    .line 2296
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setBackgroundSearchTimer"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2299
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setCDMACardInitalEsnMeid(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2661
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 2662
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2663
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2665
    :cond_0
    return-void
.end method

.method public blacklist setCLIP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2721
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2722
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2723
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2727
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clipEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2732
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    goto :goto_0

    .line 2733
    :catch_0
    move-exception v2

    .line 2734
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIP"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2737
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setCOLP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2830
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2831
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2832
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2836
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colpEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2841
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2844
    goto :goto_0

    .line 2842
    :catch_0
    move-exception v2

    .line 2843
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLP"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2846
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2808
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2809
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2810
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2814
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colrEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2819
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2822
    goto :goto_0

    .line 2820
    :catch_0
    move-exception v2

    .line 2821
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLR"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2824
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "result"    # Landroid/os/Message;

    .line 2890
    const-string v0, ""

    .line 2891
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 2894
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p6, :cond_1

    array-length v2, p6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2895
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p6

    if-ge v2, v3, :cond_1

    .line 2896
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p6, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 2897
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2898
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2900
    if-nez v2, :cond_0

    .line 2901
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2903
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2895
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2908
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p7}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v2

    .line 2909
    .local v2, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v2, :cond_2

    .line 2910
    const/16 v3, 0x84e

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p7, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2914
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cfReason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeSeconds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "timeSlot = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2920
    new-instance v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 2922
    .local v4, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p1, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->status:I

    .line 2923
    iput p2, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 2924
    iput p3, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 2925
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 2926
    invoke-static {p4}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 2927
    iput p5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 2928
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 2929
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 2932
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v5, v4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    goto :goto_2

    .line 2933
    :catch_0
    move-exception v5

    .line 2934
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "setCallForwardInTimeSlot"

    invoke-virtual {p0, v3, v6, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2938
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v4    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist setCallIndication(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNumber"    # I
    .param p4, "cause"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3457
    invoke-virtual {p0, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v6

    .line 3458
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 3459
    const/16 v0, 0x7e0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 3463
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3468
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallIndication(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    goto :goto_0

    .line 3469
    :catch_0
    move-exception v0

    .line 3470
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setCallIndication"

    invoke-virtual {p0, v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3473
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setCallSubAddress(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 3568
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3570
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3571
    const/16 v1, 0x8a0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3575
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3579
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallSubAddress(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3582
    goto :goto_0

    .line 3580
    :catch_0
    move-exception v2

    .line 3581
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallSubAddress error"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3584
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setCallValidTimer(ILandroid/os/Message;)V
    .locals 4
    .param p1, "timer"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5605
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5607
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5608
    const/16 v1, 0x885

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5612
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5617
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallValidTimer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5620
    goto :goto_0

    .line 5618
    :catch_0
    move-exception v2

    .line 5619
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallValidTimer"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5622
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setDisable2G(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 5474
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    move-result-object v0

    .line 5475
    .local v0, "rilOp":Lcom/mediatek/internal/telephony/IMtkRilOp;
    if-eqz v0, :cond_0

    .line 5476
    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkRilOp;->setDisable2G(ZLandroid/os/Message;)V

    .line 5477
    return-void

    .line 5479
    :cond_0
    return-void
.end method

.method public blacklist setEccMode(Ljava/lang/String;IIILandroid/os/Message;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "airplaneMode"    # I
    .param p4, "imsReg"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3519
    invoke-virtual {p0, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v6

    .line 3520
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 3521
    const/16 v0, 0x7f3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 3525
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " airplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imsReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3533
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setEccMode(ILjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3536
    goto :goto_0

    .line 3534
    :catch_0
    move-exception v0

    .line 3535
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setEccMode"

    invoke-virtual {p0, v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3538
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setEccNum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eccListWithCard"    # Ljava/lang/String;
    .param p2, "eccListNoCard"    # Ljava/lang/String;

    .line 3637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v1

    .line 3638
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 3639
    const/16 v2, 0x864

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3643
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " eccListWithCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", eccListNoCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3649
    :try_start_0
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3652
    goto :goto_0

    .line 3650
    :catch_0
    move-exception v2

    .line 3651
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEccNum"

    invoke-virtual {p0, v0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3654
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setEccPreferredRat(ILandroid/os/Message;)V
    .locals 4
    .param p1, "phoneType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3547
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3548
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3549
    const/16 v1, 0x83e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3553
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " phoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3558
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->eccPreferredRat(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3561
    goto :goto_0

    .line 3559
    :catch_0
    move-exception v2

    .line 3560
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEccPreferredRat"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3563
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setEmbmsSessionStatusNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3015
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3016
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3017
    return-void
.end method

.method public blacklist setEtws(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2551
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2552
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2553
    const/16 v1, 0x7de

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2556
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2559
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setEtws(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2562
    goto :goto_0

    .line 2560
    :catch_0
    move-exception v2

    .line 2561
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEtws"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2564
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setFdMode(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "para1"    # I
    .param p3, "para2"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3780
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3781
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3782
    const/16 v1, 0x7e9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3786
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3790
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setFdMode(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3793
    goto :goto_0

    .line 3791
    :catch_0
    move-exception v2

    .line 3792
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setFdMode"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3795
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setFemtoCellSystemSelectionMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2134
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2135
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2136
    const/16 v1, 0x80b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2140
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2145
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setFemtoCellSystemSelectionMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2148
    goto :goto_0

    .line 2146
    :catch_0
    move-exception v2

    .line 2147
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setFemtoCellSystemSelectionMode"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2150
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setGsmBroadcastLangs(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2604
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2605
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2606
    const/16 v1, 0x7d9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2609
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lang:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2613
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setGsmBroadcastLangs(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2616
    goto :goto_0

    .line 2614
    :catch_0
    move-exception v2

    .line 2615
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setGsmBroadcastLangs"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2618
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setGwsdMode(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "kaMode"    # Ljava/lang/String;
    .param p3, "kaCycle"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 5581
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5583
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5584
    const/16 v1, 0x884

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5588
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5592
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5593
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5594
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5597
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setGwsdMode(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5600
    goto :goto_0

    .line 5598
    :catch_0
    move-exception v3

    .line 5599
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setGwsdMode"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5602
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setIgnoreSameNumberInterval(ILandroid/os/Message;)V
    .locals 4
    .param p1, "interval"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5625
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5627
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5628
    const/16 v1, 0x886

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5632
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5637
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setIgnoreSameNumberInterval(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5640
    goto :goto_0

    .line 5638
    :catch_0
    move-exception v2

    .line 5639
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setIgnoreSameNumberInterval"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5642
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2386
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2387
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2388
    return-void
.end method

.method public blacklist setKeepAliveByIpData(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 5665
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5667
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5668
    const/16 v1, 0x898

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5672
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5677
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setKeepAliveByIpData(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5680
    goto :goto_0

    .line 5678
    :catch_0
    move-exception v2

    .line 5679
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setKeepAliveByIpData"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5682
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setKeepAliveByPDCPCtrlPDU(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 5645
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5647
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5648
    const/16 v1, 0x897

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5652
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5657
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5660
    goto :goto_0

    .line 5658
    :catch_0
    move-exception v2

    .line 5659
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setKeepAliveByPDCPCtrlPDU"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5662
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setLteReleaseVersion(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5114
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5115
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5116
    const/16 v1, 0x867

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5120
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5125
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setLteReleaseVersion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5128
    goto :goto_0

    .line 5126
    :catch_0
    move-exception v2

    .line 5127
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setLteReleaseVersion"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5130
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setModemPower(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "isOn"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Modem power as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2361
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 2362
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2363
    const/16 v2, 0x7d3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p2, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 2366
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v2, 0x7d4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p2, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2371
    .restart local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2376
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setModemPower(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    goto :goto_1

    .line 2377
    :catch_0
    move-exception v2

    .line 2378
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setModemPower"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2381
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "category"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .line 4106
    move-object v1, p0

    move-object/from16 v2, p7

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v11

    .line 4107
    .local v11, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v11, :cond_4

    .line 4108
    const/16 v0, 0x814

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 4111
    .local v12, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4113
    const-string v0, ""

    if-nez p3, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    .line 4114
    .end local p3    # "password":Ljava/lang/String;
    .local v7, "password":Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_1

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p4

    .line 4115
    .end local p4    # "data_imsi":Ljava/lang/String;
    .local v8, "data_imsi":Ljava/lang/String;
    :goto_1
    if-nez p5, :cond_2

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p5

    .line 4116
    .end local p5    # "gid1":Ljava/lang/String;
    .local v9, "gid1":Ljava/lang/String;
    :goto_2
    if-nez p6, :cond_3

    move-object v10, v0

    goto :goto_3

    :cond_3
    move-object/from16 v10, p6

    .line 4118
    .end local p6    # "gid2":Ljava/lang/String;
    .local v10, "gid2":Ljava/lang/String;
    :goto_3
    :try_start_0
    iget v4, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v3, v11

    move v5, p1

    move v6, p2

    invoke-interface/range {v3 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4122
    goto :goto_4

    .line 4120
    :catch_0
    move-exception v0

    .line 4121
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setNetworkLock"

    invoke-virtual {p0, v12, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 4107
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "data_imsi":Ljava/lang/String;
    .end local v9    # "gid1":Ljava/lang/String;
    .end local v10    # "gid2":Ljava/lang/String;
    .end local v12    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "data_imsi":Ljava/lang/String;
    .restart local p5    # "gid1":Ljava/lang/String;
    .restart local p6    # "gid2":Ljava/lang/String;
    :cond_4
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 4124
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "data_imsi":Ljava/lang/String;
    .end local p5    # "gid1":Ljava/lang/String;
    .end local p6    # "gid2":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    .restart local v8    # "data_imsi":Ljava/lang/String;
    .restart local v9    # "gid1":Ljava/lang/String;
    .restart local v10    # "gid2":Ljava/lang/String;
    :goto_4
    return-void
.end method

.method public blacklist setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1947
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1948
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1949
    const/16 v1, 0x7d5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1953
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1958
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1959
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1960
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1958
    invoke-interface {v0, v2, v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    goto :goto_0

    .line 1961
    :catch_0
    move-exception v2

    .line 1962
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setNetworkSelectionModeManual"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1965
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setOnBipProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4064
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4065
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4066
    return-void
.end method

.method public blacklist setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3098
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 3099
    return-void
.end method

.method public blacklist setOnEtwsNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2498
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 2499
    return-void
.end method

.method public blacklist setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3068
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 3069
    return-void
.end method

.method public blacklist setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2490
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 2491
    return-void
.end method

.method public blacklist setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3845
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3846
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3847
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 3849
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3851
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3852
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 3854
    :cond_0
    monitor-exit v1

    .line 3855
    return-void

    .line 3854
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3872
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 3873
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 3875
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3877
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3879
    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 3881
    :cond_0
    monitor-exit v0

    .line 3882
    return-void

    .line 3881
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4078
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4079
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4080
    return-void
.end method

.method public blacklist setOnSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3087
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 3088
    return-void
.end method

.method public blacklist setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5419
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 5420
    return-void
.end method

.method public blacklist setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 4920
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4921
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4922
    const/16 v1, 0x83d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4926
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4930
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setPOLEntry(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4933
    goto :goto_0

    .line 4931
    :catch_0
    move-exception v2

    .line 4932
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setPOLEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4935
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setPhoneBookMemStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 4635
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4636
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4637
    const/16 v1, 0x7ff

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4640
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4643
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4644
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4645
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4643
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4648
    goto :goto_0

    .line 4646
    :catch_0
    move-exception v2

    .line 4647
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "writeUPBGrpEntry"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4650
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setPhonebookReady(ILandroid/os/Message;)V
    .locals 4
    .param p1, "ready"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 4844
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4845
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4846
    const/16 v1, 0x86d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4850
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ready = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4855
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setPhonebookReady(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4858
    goto :goto_0

    .line 4856
    :catch_0
    move-exception v2

    .line 4857
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setPhonebookReady"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4860
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5747
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 5748
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 5749
    const/16 v1, 0x49

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5753
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5756
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPreferredNetworkType:I

    .line 5757
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    .line 5759
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkRIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5761
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setPreferredNetworkType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5762
    :catch_0
    move-exception v2

    .line 5763
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setPreferredNetworkType"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5764
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 5765
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkRIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5766
    move-object v2, v0

    check-cast v2, Landroid/hardware/radio/V1_4/IRadio;

    .line 5769
    .local v2, "radioProxy14":Landroid/hardware/radio/V1_4/IRadio;
    :try_start_1
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 5771
    invoke-static {p1}, Landroid/telephony/MtkRadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    .line 5770
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->convertToHalRadioAccessFamily(I)I

    move-result v4

    .line 5769
    invoke-interface {v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio;->setPreferredNetworkTypeBitmap(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5774
    goto :goto_1

    .line 5772
    :catch_1
    move-exception v3

    .line 5773
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setPreferredNetworkTypeBitmap"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5777
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "radioProxy14":Landroid/hardware/radio/V1_4/IRadio;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setRemoveRestrictEutranMode(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 5024
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5025
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5027
    const/16 v1, 0x834

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5030
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    move v2, p1

    .line 5031
    .local v2, "type":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5032
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5031
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5035
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setRemoveRestrictEutranMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5038
    goto :goto_0

    .line 5036
    :catch_0
    move-exception v3

    .line 5037
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setRemoveRestrictEutranMode"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5040
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "type":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected blacklist setResponseFunctions()V
    .locals 3

    .line 684
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkRadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioResponse:Lcom/mediatek/internal/telephony/MtkRadioResponse;

    .line 685
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRadioIndication;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkRadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioIndication:Lcom/mediatek/internal/telephony/MtkRadioIndication;

    .line 687
    :try_start_0
    const-string v0, "override response functions"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioResponse:Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioIndication:Lcom/mediatek/internal/telephony/MtkRadioIndication;

    invoke-interface {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override response function error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLoge(Ljava/lang/String;)V

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setResumeRegistration(ILandroid/os/Message;)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3908
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3909
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3910
    const/16 v1, 0x7d0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3914
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3919
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setResumeRegistration(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3922
    goto :goto_0

    .line 3920
    :catch_0
    move-exception v2

    .line 3921
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setResumeRegistration"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3924
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setRoamingEnable([ILandroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 5066
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5067
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 5068
    const/16 v1, 0x83f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5072
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5075
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5076
    .local v2, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 5077
    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5076
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5081
    .end local v3    # "i":I
    :cond_0
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setRoamingEnable(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5084
    goto :goto_1

    .line 5082
    :catch_0
    move-exception v3

    .line 5083
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setRoamingEnable"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5086
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setRxTestConfig(ILandroid/os/Message;)V
    .locals 1
    .param p1, "AntType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 4867
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    move-result-object v0

    .line 4868
    .local v0, "rilOp":Lcom/mediatek/internal/telephony/IMtkRilOp;
    if-eqz v0, :cond_0

    .line 4869
    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkRilOp;->setRxTestConfig(ILandroid/os/Message;)V

    .line 4870
    return-void

    .line 4872
    :cond_0
    return-void
.end method

.method public blacklist setServiceStateToModem(IIIIIILandroid/os/Message;)V
    .locals 16
    .param p1, "voiceRegState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "voiceRoamingType"    # I
    .param p4, "dataRoamingType"    # I
    .param p5, "rilVoiceRegState"    # I
    .param p6, "rilDataRegState"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 5339
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v11

    .line 5340
    .local v11, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v11, :cond_0

    .line 5341
    const/16 v0, 0x852

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 5345
    .local v12, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " voiceRegState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dataRegState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " voiceRoamingType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dataRoamingType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rilVoiceRegState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rilDataRegState:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5355
    :try_start_0
    iget v4, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object v3, v11

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setServiceStateToModem(IIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5360
    goto :goto_0

    .line 5358
    :catch_0
    move-exception v0

    .line 5359
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setServiceStateToModem"

    invoke-virtual {v1, v12, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 5340
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    .line 5362
    :goto_0
    return-void
.end method

.method public blacklist setSimPower(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1463
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1464
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1465
    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1468
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1471
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSimPower(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    goto :goto_0

    .line 1472
    :catch_0
    move-exception v2

    .line 1473
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setSimPower"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1476
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setSmsParameters(Lmediatek/telephony/MtkSmsParameters;Landroid/os/Message;)V
    .locals 5
    .param p1, "params"    # Lmediatek/telephony/MtkSmsParameters;
    .param p2, "result"    # Landroid/os/Message;

    .line 2528
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2529
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2530
    const/16 v1, 0x7dd

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2533
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2535
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 2536
    .local v2, "smsp":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    iget v3, p1, Lmediatek/telephony/MtkSmsParameters;->dcs:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->dcs:I

    .line 2537
    iget v3, p1, Lmediatek/telephony/MtkSmsParameters;->format:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->format:I

    .line 2538
    iget v3, p1, Lmediatek/telephony/MtkSmsParameters;->pid:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->pid:I

    .line 2539
    iget v3, p1, Lmediatek/telephony/MtkSmsParameters;->vp:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->vp:I

    .line 2541
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    goto :goto_0

    .line 2542
    :catch_0
    move-exception v3

    .line 2543
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setSmsParameters"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2546
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "smsp":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setSuppServProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 5550
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5552
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5553
    const/16 v1, 0x878

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5557
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToStringEx(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5562
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5565
    goto :goto_0

    .line 5563
    :catch_0
    move-exception v2

    .line 5564
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setSuppServProperty"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5567
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setTrm(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1400
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 1401
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1402
    const/16 v1, 0x7ec

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1406
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 1410
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setTrm(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    goto :goto_0

    .line 1411
    :catch_0
    move-exception v2

    .line 1412
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setTrm"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1415
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setTxPower(ILandroid/os/Message;)V
    .locals 4
    .param p1, "power"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2224
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 2225
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2226
    const/16 v1, 0x892

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2229
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " power="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 2233
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setTxPower(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    goto :goto_0

    .line 2234
    :catch_0
    move-exception v2

    .line 2235
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setTxPower"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2238
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setTxPowerStatus(ILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 5521
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 5522
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 5523
    const/16 v1, 0x86e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5527
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5531
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setTxPowerStatus(II)V

    .line 5532
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5533
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5534
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 5535
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5538
    nop

    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 5536
    :catch_0
    move-exception v2

    .line 5537
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setTxPowerStatus"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5540
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "setting"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 4025
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4026
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4027
    const/16 v1, 0x87d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4031
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4035
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4038
    goto :goto_0

    .line 4036
    :catch_0
    move-exception v2

    .line 4037
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4040
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setVoicePreferStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .line 3612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v1

    .line 3613
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 3614
    const/16 v2, 0x863

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3618
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3623
    :try_start_0
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVoicePreferStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3626
    goto :goto_0

    .line 3624
    :catch_0
    move-exception v2

    .line 3625
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVoicePreferStatus"

    invoke-virtual {p0, v0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3628
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 3368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 3369
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 3370
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 3371
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3372
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v1

    .line 3373
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 3374
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p2, v3, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3377
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->start()V

    .line 3378
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v4

    move-object v4, v5

    .line 3379
    .local v4, "param":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v5, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 3381
    .local v5, "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->add(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3383
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 3384
    const-string v3, "send start dtmf"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendDtmfQueueRR(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3391
    .end local v1    # "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v4    # "param":[Ljava/lang/Object;
    .end local v5    # "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 3392
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 3393
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3392
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3396
    :cond_2
    :goto_0
    monitor-exit v0

    .line 3398
    return-void

    .line 3396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 9
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 5857
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 5858
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_3

    .line 5859
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkRIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5860
    new-instance v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 5862
    .local v1, "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 5863
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 5864
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 5865
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 5866
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v2

    iput-boolean v2, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 5868
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 5869
    .local v6, "ras":Landroid/telephony/RadioAccessSpecifier;
    nop

    .line 5870
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkConvertRadioAccessSpecifierToRadioHAL_1_5(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    move-result-object v7

    .line 5871
    .local v7, "rasInHalFormat":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    if-nez v7, :cond_0

    .line 5872
    return-void

    .line 5874
    :cond_0
    iget-object v8, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5868
    .end local v6    # "ras":Landroid/telephony/RadioAccessSpecifier;
    .end local v7    # "rasInHalFormat":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5877
    :cond_1
    iget-object v2, v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5878
    const/16 v2, 0x8e

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 5882
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 5886
    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_5/IRadio;

    .line 5888
    .local v3, "radioProxy15":Landroid/hardware/radio/V1_5/IRadio;
    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v4, v1}, Landroid/hardware/radio/V1_5/IRadio;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5891
    .end local v3    # "radioProxy15":Landroid/hardware/radio/V1_5/IRadio;
    goto :goto_1

    .line 5889
    :catch_0
    move-exception v3

    .line 5890
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "startNetworkScan"

    invoke-virtual {p0, v2, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5892
    .end local v1    # "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 5893
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    .line 5896
    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 3404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 3405
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 3406
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 3407
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3408
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v1

    .line 3409
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 3410
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3412
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->stop()V

    .line 3413
    const/4 v3, 0x0

    .line 3414
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3416
    .local v4, "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->add(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3417
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3418
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->sendDtmfQueueRR(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3424
    .end local v1    # "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 3425
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 3426
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3425
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3429
    :cond_2
    :goto_0
    monitor-exit v0

    .line 3431
    return-void

    .line 3429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist storeModemType(ILandroid/os/Message;)V
    .locals 4
    .param p1, "modemType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3932
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3933
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3934
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3938
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " modemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", applyType:2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3943
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->modifyModemType(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3946
    goto :goto_0

    .line 3944
    :catch_0
    move-exception v2

    .line 3945
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "modifyModemType"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3948
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4133
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4134
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4135
    const/16 v1, 0x85f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4139
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " netpin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 4144
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->supplyDepersonalization(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4148
    goto :goto_0

    .line 4146
    :catch_0
    move-exception v2

    .line 4147
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyNetworkDepersonalization"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4150
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist supplyDeviceNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 4255
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4256
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4257
    const/16 v1, 0x87b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4262
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 4265
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4266
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4265
    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4269
    goto :goto_0

    .line 4267
    :catch_0
    move-exception v2

    .line 4268
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "supplyDeviceNetworkDepersonalization"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4271
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3315
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3316
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3317
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3319
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3320
    const/4 v2, 0x0

    .line 3321
    .local v2, "params":[Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V

    .line 3323
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public blacklist syncDataSettingsToMd([ILandroid/os/Message;)V
    .locals 5
    .param p1, "dataSetting"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 4969
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4970
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 4972
    const/16 v1, 0x80e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4976
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4980
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4981
    .local v2, "settingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 4982
    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4981
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4986
    .end local v3    # "i":I
    :cond_0
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->syncDataSettingsToMd(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4989
    goto :goto_1

    .line 4987
    :catch_0
    move-exception v3

    .line 4988
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "syncDataSettingsToMd"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4991
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "settingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist triggerModeSwitchByEcc(ILandroid/os/Message;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3736
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 3737
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3738
    const/16 v1, 0x7e7

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3742
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 3746
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->triggerModeSwitchByEcc(II)V

    .line 3747
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3748
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3749
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3750
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3753
    nop

    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3751
    :catch_0
    move-exception v2

    .line 3752
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "triggerModeSwitchByEcc"

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3755
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist unSetAtInfoNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3042
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3043
    return-void
.end method

.method public blacklist unSetEmbmsSessionStatusNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3024
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3025
    return-void
.end method

.method public blacklist unSetInvalidSimInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2392
    return-void
.end method

.method public blacklist unSetOnBipProactiveCmd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4069
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4070
    return-void
.end method

.method public blacklist unSetOnCallRelatedSuppSvc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 3103
    return-void
.end method

.method public blacklist unSetOnEtwsNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 2503
    return-void
.end method

.method public blacklist unSetOnMeSmsFull(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2494
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 2495
    return-void
.end method

.method public blacklist unSetOnPlmnChangeNotification(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 3859
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 3860
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3861
    monitor-exit v0

    .line 3862
    return-void

    .line 3861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unSetOnRegistrationSuspended(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 3885
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 3886
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 3887
    monitor-exit v0

    .line 3888
    return-void

    .line 3887
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unSetOnStkSetupMenuReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4083
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4084
    return-void
.end method

.method public blacklist unSetOnSuppServiceNotificationEx(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3091
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 3093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 3095
    :cond_0
    return-void
.end method

.method public blacklist unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5423
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 5424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 5425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 5427
    :cond_0
    return-void
.end method

.method public blacklist unregisterForAttachApnChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4169
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4170
    return-void
.end method

.method public blacklist unregisterForCallAdditionalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3081
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3082
    return-void
.end method

.method public blacklist unregisterForCallForwardingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3063
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3064
    return-void
.end method

.method public blacklist unregisterForCardDetectedInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1562
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1563
    return-void
.end method

.method public blacklist unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3126
    return-void
.end method

.method public blacklist unregisterForCommonSlotNoChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4020
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4021
    return-void
.end method

.method public blacklist unregisterForCsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1373
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1374
    return-void
.end method

.method public blacklist unregisterForDataAllowed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3046
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDataAllowedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3047
    return-void
.end method

.method public blacklist unregisterForDedicatedBearerActivated(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5263
    return-void
.end method

.method public blacklist unregisterForDedicatedBearerDeactivationed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5283
    return-void
.end method

.method public blacklist unregisterForDedicatedBearerModified(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5273
    return-void
.end method

.method public blacklist unregisterForDsbpStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5577
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5578
    return-void
.end method

.method public blacklist unregisterForDsdaStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5731
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5732
    return-void
.end method

.method public blacklist unregisterForEconfSrvcc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5061
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5062
    return-void
.end method

.method public blacklist unregisterForFemtoCellInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2452
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2453
    return-void
.end method

.method public blacklist unregisterForIMEILock(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1509
    return-void
.end method

.method public blacklist unregisterForIccidChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 6126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 6127
    return-void
.end method

.method public blacklist unregisterForImsiRefreshDone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1517
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1518
    return-void
.end method

.method public blacklist unregisterForMccMncChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5172
    return-void
.end method

.method public blacklist unregisterForMdDataRetryCountReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5018
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5019
    return-void
.end method

.method public blacklist unregisterForMobileDataUsage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 6077
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 6078
    return-void
.end method

.method public blacklist unregisterForModulation(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2429
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRilOp()Lcom/mediatek/internal/telephony/IMtkRilOp;

    move-result-object v0

    .line 2430
    .local v0, "rilOp":Lcom/mediatek/internal/telephony/IMtkRilOp;
    if-eqz v0, :cond_0

    .line 2431
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/IMtkRilOp;->unregisterForModulation(Landroid/os/Handler;)V

    .line 2432
    return-void

    .line 2434
    :cond_0
    return-void
.end method

.method public blacklist unregisterForNetworkEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2402
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2403
    return-void
.end method

.method public blacklist unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2686
    return-void
.end method

.method public blacklist unregisterForNetworkReject(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2414
    return-void
.end method

.method public blacklist unregisterForNwLimitState(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 6088
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 6089
    return-void
.end method

.method public blacklist unregisterForPcoDataAfterAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4954
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4955
    return-void
.end method

.method public blacklist unregisterForPhbReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4294
    return-void
.end method

.method public blacklist unregisterForPlmnData(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 6141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 6142
    return-void
.end method

.method public blacklist unregisterForPsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2675
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2676
    return-void
.end method

.method public blacklist unregisterForPseudoCellInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3686
    return-void
.end method

.method public blacklist unregisterForQualifiedNetworkTypesChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5742
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5743
    return-void
.end method

.method public blacklist unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5046
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5047
    return-void
.end method

.method public blacklist unregisterForResetAttachApn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4160
    return-void
.end method

.method public blacklist unregisterForRsuSimLockChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1540
    return-void
.end method

.method public blacklist unregisterForSimMissing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4203
    return-void
.end method

.method public blacklist unregisterForSimPlugIn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4185
    return-void
.end method

.method public blacklist unregisterForSimPlugOut(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4194
    return-void
.end method

.method public blacklist unregisterForSimPower(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4236
    return-void
.end method

.method public blacklist unregisterForSimRecovery(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4212
    return-void
.end method

.method public blacklist unregisterForSimTrayPlugIn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4012
    return-void
.end method

.method public blacklist unregisterForSmlSlotLockInfoChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4251
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4252
    return-void
.end method

.method public blacklist unregisterForSmsInfoExt(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2486
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2487
    return-void
.end method

.method public blacklist unregisterForSmsReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2478
    return-void
.end method

.method public blacklist unregisterForTxPower(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5503
    return-void
.end method

.method public blacklist unregisterForTxPowerStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5517
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5518
    return-void
.end method

.method public blacklist unregisterForVirtualSimOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1499
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1500
    return-void
.end method

.method public blacklist unregisterForVirtualSimOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1491
    return-void
.end method

.method public blacklist unregisterForVsimIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 5183
    const-string v0, "unregisterForVsimIndication called..."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 5184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5185
    return-void
.end method

.method public blacklist unregisterForignalStrengthWithWcdmaEcioChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1393
    return-void
.end method

.method public blacklist unsetOnIncomingCallIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3072
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->clear()V

    .line 3073
    return-void
.end method

.method public blacklist writePhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;Landroid/os/Message;)V
    .locals 5
    .param p1, "entry"    # Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .param p2, "result"    # Landroid/os/Message;

    .line 4356
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4357
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4358
    const/16 v1, 0x7f5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4362
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertToHalPhbEntryStructure(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    move-result-object v2

    .line 4365
    .local v2, "pes":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4368
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4371
    goto :goto_0

    .line 4369
    :catch_0
    move-exception v3

    .line 4370
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "writePhbEntry"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4373
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "pes":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist writePhoneBookEntryExt(Lcom/mediatek/internal/telephony/phb/PBEntry;Landroid/os/Message;)V
    .locals 5
    .param p1, "entry"    # Lcom/mediatek/internal/telephony/phb/PBEntry;
    .param p2, "result"    # Landroid/os/Message;

    .line 4699
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4700
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4701
    const/16 v1, 0x801

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4704
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4706
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->convertToHalPhbEntryExt(Lcom/mediatek/internal/telephony/phb/PBEntry;)Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    move-result-object v2

    .line 4709
    .local v2, "pee":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    :try_start_0
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4712
    goto :goto_0

    .line 4710
    :catch_0
    move-exception v3

    .line 4711
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "writePhoneBookEntryExt"

    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4714
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "pee":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist writeUPBGrpEntry(I[ILandroid/os/Message;)V
    .locals 6
    .param p1, "adnIndex"    # I
    .param p2, "grpIds"    # [I
    .param p3, "result"    # Landroid/os/Message;

    .line 4569
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    .line 4570
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 4571
    const/16 v1, 0x7fc

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4573
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v2, p2

    .line 4575
    .local v2, "nLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":  adnIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 4578
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4579
    .local v3, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 4580
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4579
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4583
    .end local v4    # "i":I
    :cond_0
    :try_start_0
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v4, p1, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->writeUPBGrpEntry(IILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4586
    goto :goto_1

    .line 4584
    :catch_0
    move-exception v4

    .line 4585
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "writeUPBGrpEntry"

    invoke-virtual {p0, v1, v5, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->handleMtkRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4588
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "nLen":I
    .end local v3    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
