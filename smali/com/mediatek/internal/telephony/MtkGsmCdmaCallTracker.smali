.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
.super Lcom/android/internal/telephony/GsmCdmaCallTracker;
.source "MtkGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;,
        Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_CALL_ADDITIONAL_INFO:I = 0x3ee

.field protected static final blacklist EVENT_CDMA_CALL_ACCEPTED:I = 0x3ec

.field protected static final blacklist EVENT_DIAL_CALL_RESULT:I = 0x3ea

.field protected static final blacklist EVENT_ECONF_SRVCC_INDICATION:I = 0x3ed

.field protected static final blacklist EVENT_HANG_UP_RESULT:I = 0x3eb

.field protected static final blacklist EVENT_INCOMING_CALL_INDICATION:I = 0x3e8

.field protected static final blacklist EVENT_MTK_BASE:I = 0x3e8

.field protected static final blacklist EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3e9

.field private static final blacklist MIN_CONNECTIONS_IN_CDMA_CONFERENCE:I = 0x2

.field private static final blacklist PROP_LOG_TAG:Ljava/lang/String; = "GsmCdmaCallTkr"

.field private static blacklist TYPE_CALLIN:I

.field private static blacklist TYPE_CALLOUT:I

.field private static blacklist TYPE_PS:I

.field private static blacklist TYPE_SMSIN:I

.field private static blacklist TYPE_SMSOUT:I


# instance fields
.field private blacklist mEconfSrvccConnectionIds:[I

.field private blacklist mHasPendingCheckAndEnableData:Z

.field blacklist mHasPendingSwapRequest:Z

.field private blacklist mHasPendingUpdatePhoneType:Z

.field public blacklist mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

.field protected blacklist mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

.field private blacklist mImsConfParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field protected blacklist mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

.field protected blacklist mNeedWaitImsEConfSrvcc:Z

.field private blacklist mPhoneType:I

.field blacklist mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field blacklist mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

.field blacklist mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

.field blacklist mWaitPollAfterHangupPendingMO:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_CALLIN:I

    .line 152
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_CALLOUT:I

    .line 153
    const/4 v0, 0x2

    sput v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_SMSIN:I

    .line 154
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_SMSOUT:I

    .line 155
    const/4 v0, 0x4

    sput v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_PS:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 125
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 126
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    .line 130
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    .line 131
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    .line 135
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    .line 141
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    .line 146
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 187
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 192
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    .line 349
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 351
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 352
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 354
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 356
    const/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ee

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3e9

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;-><init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    .line 366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ed

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 370
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 371
    nop

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeMtkGsmCdmaCallTrackerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "mMtkGsmCdmaCallTrackerExt init fail"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method private blacklist disableDataCallInEmergencyCall(Z)V
    .locals 1
    .param p1, "isEmergencyCall"    # Z

    .line 1921
    if-eqz p1, :cond_0

    .line 1922
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setIsInEmergencyCall()V

    .line 1925
    :cond_0
    return-void
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 2

    .line 1719
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1720
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1721
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleCallAccepted()V
    .locals 4

    .line 2148
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 2149
    .local v0, "connections":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2150
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallAccepted, fgcall count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsmCdmaCallTkr"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2152
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2153
    .local v2, "c":Lcom/android/internal/telephony/GsmCdmaConnection;
    instance-of v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    instance-of v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v3, :cond_0

    .line 2155
    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onCdmaCallAccepted()Z

    .line 2158
    .end local v2    # "c":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    return-void
.end method

.method private blacklist hasC2kOverImsModem()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasC2kOverImsModem()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 167
    return v2

    .line 169
    :cond_0
    return v1
.end method

.method private blacklist needToConvert(Ljava/lang/String;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 2193
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, "target":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist noAnyCallFromModemExist(Landroid/os/AsyncResult;)Z
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1706
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1707
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "polledCalls":Ljava/util/List;
    goto :goto_0

    .line 1711
    .end local v0    # "polledCalls":Ljava/util/List;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .restart local v0    # "polledCalls":Ljava/util/List;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private blacklist processPlusCodeForDriverCall(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isMt"    # Z
    .param p3, "typeOfAddress"    # I

    .line 2163
    if-eqz p2, :cond_1

    const/16 v0, 0x91

    if-ne p3, v0, :cond_1

    .line 2164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 2165
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2167
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2169
    :cond_1
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2170
    return-object p1
.end method

.method private blacklist processPlusCodeForWaitingCall(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .line 2182
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, "format":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2184
    move-object p1, v0

    .line 2185
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    .line 2186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2189
    :cond_0
    return-object p1
.end method

.method private blacklist processPlusCodeForWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 2
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2174
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 2176
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2177
    iget v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->processPlusCodeForWaitingCall(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 2179
    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist restoreConferenceParticipantAddress()Z
    .locals 10

    monitor-enter p0

    .line 2346
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2347
    const-string v0, "GsmCdmaCallTkr"

    const-string v2, "SRVCC: restoreConferenceParticipantAddress():ignore because mEconfSrvccConnectionIds is empty"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2349
    monitor-exit p0

    return v1

    .line 2352
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    :cond_0
    const/4 v0, 0x0

    .line 2355
    .local v0, "finishRestore":Z
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    aget v1, v2, v1

    .line 2356
    .local v1, "numOfParticipants":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_0
    if-gt v2, v1, :cond_5

    .line 2358
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    aget v3, v3, v2

    .line 2359
    .local v3, "participantCallId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    add-int/lit8 v5, v3, -0x1

    aget-object v4, v4, v5

    .line 2361
    .local v4, "participantConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v4, :cond_4

    .line 2362
    const-string v5, "GsmCdmaCallTkr"

    const-string v6, "SRVCC: found conference connections!"

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    const/4 v5, 0x0

    .line 2365
    .local v5, "hostConnection":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    iget-object v6, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    instance-of v6, v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v6, :cond_3

    .line 2366
    iget-object v6, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    check-cast v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    move-object v5, v6

    .line 2373
    if-nez v5, :cond_1

    .line 2374
    const-string v6, "GsmCdmaCallTkr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: no host, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    goto :goto_1

    .line 2379
    :cond_1
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v6

    .line 2380
    .local v6, "address":Ljava/lang/String;
    instance-of v7, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    if-eqz v7, :cond_2

    .line 2381
    move-object v7, v4

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 2382
    invoke-virtual {v7, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 2384
    :cond_2
    const/4 v0, 0x1

    .line 2386
    const-string v7, "GsmCdmaCallTkr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SRVCC: restore Connection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with address:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2368
    .end local v6    # "address":Ljava/lang/String;
    :cond_3
    const-string v6, "GsmCdmaCallTkr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: host is abnormal, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2356
    .end local v3    # "participantCallId":I
    .end local v4    # "participantConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v5    # "hostConnection":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2391
    .end local v2    # "index":I
    :cond_5
    monitor-exit p0

    return v0

    .line 2345
    .end local v0    # "finishRestore":Z
    .end local v1    # "numOfParticipants":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist resumeBackgroundAfterDialFailed()V
    .locals 4

    .line 1910
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1912
    .local v0, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1913
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1915
    .local v3, "conn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->resumeHoldAfterDialFailed()V

    .line 1912
    .end local v3    # "conn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1917
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    return-void
.end method

.method private blacklist shouldNotifyWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z
    .locals 4
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2200
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 2201
    .local v0, "address":Ljava/lang/String;
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "shouldNotifyWaitingCall"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2203
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 2204
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2205
    .local v2, "lastRingConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v2, :cond_0

    .line 2206
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2207
    const-string v3, "handleCallWaitingInfo, skip duplicate waiting call!"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/4 v1, 0x0

    return v1

    .line 2212
    .end local v2    # "lastRingConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist updatePhoneType(ZZ)V
    .locals 5
    .param p1, "duringInit"    # Z
    .param p2, "duringPollCallsResult"    # Z

    .line 386
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 387
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 392
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 397
    const-string v2, "GsmCdmaCallTracker"

    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_3

    .line 398
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 399
    const-string v3, "[updatePhoneType]mHasPendingUpdatePhoneType = true"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-nez v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 407
    :cond_2
    return-void

    .line 411
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->reset()V

    .line 417
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasC2kOverImsModem()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 419
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 420
    .local v3, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_5

    if-eqz v3, :cond_4

    .line 421
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 424
    :cond_4
    const-string v4, "not trigger pollCall since imsCall exists"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 430
    .end local v3    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_6
    :goto_1
    invoke-super {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    .line 433
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 434
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-nez v1, :cond_7

    .line 435
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 437
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 439
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    goto :goto_2

    .line 441
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-nez v0, :cond_9

    .line 442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 444
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    .line 450
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist checkForDialIssues(Z)V
    .locals 4
    .param p1, "isEmergencyCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1725
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 1727
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1736
    :cond_0
    return-void

    .line 1728
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check pendingMO operations before dial ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string v2, "t,"

    const-string v3, "f,"

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    if-eqz v1, :cond_4

    const-string v1, "t"

    goto :goto_3

    :cond_4
    const-string v1, "f"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1733
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "A call is already dialing.."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected blacklist dialCdma(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 25
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1932
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 1934
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1935
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 1938
    .local v8, "isEmergencyCall":Z
    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 1940
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1941
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1942
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v10, p1

    .line 1943
    .local v10, "origNumber":Ljava/lang/String;
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v11

    .line 1944
    .local v11, "operatorIsoContry":Ljava/lang/String;
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v12

    .line 1945
    .local v12, "simIsoContry":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v1, :cond_0

    .line 1946
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1947
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v13

    goto :goto_0

    :cond_0
    move v1, v14

    .line 1948
    .local v1, "internationalRoaming":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 1949
    const-string v2, "us"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "vi"

    if-eqz v3, :cond_2

    .line 1950
    if-eqz v1, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v13

    goto :goto_1

    :cond_1
    move v2, v14

    :goto_1
    move v1, v2

    move v15, v1

    goto :goto_3

    .line 1951
    :cond_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1952
    if-eqz v1, :cond_3

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v13

    goto :goto_2

    :cond_3
    move v2, v14

    :goto_2
    move v1, v2

    move v15, v1

    goto :goto_3

    .line 1955
    :cond_4
    move v15, v1

    .end local v1    # "internationalRoaming":Z
    .local v15, "internationalRoaming":Z
    :goto_3
    if-eqz v15, :cond_5

    .line 1956
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    goto :goto_4

    .line 1955
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_5
    move-object v5, v0

    .line 1959
    .end local p1    # "dialString":Ljava/lang/String;
    .local v5, "dialString":Ljava/lang/String;
    :goto_4
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v16

    .line 1962
    .local v16, "isPhoneInEcmMode":Z
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v16, :cond_7

    if-eqz v8, :cond_6

    goto :goto_5

    .line 1964
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in ECBM"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1969
    :cond_7
    :goto_5
    if-eqz v16, :cond_8

    if-eqz v8, :cond_8

    .line 1970
    invoke-virtual {v6, v13}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 1976
    :cond_8
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_9

    .line 1977
    invoke-virtual {v6, v5, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 1980
    :cond_9
    new-instance v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v0, v4

    move-object v2, v5

    move-object/from16 v17, v3

    move-object/from16 v3, p0

    move-object v13, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v5

    .end local v5    # "dialString":Ljava/lang/String;
    .local v18, "dialString":Ljava/lang/String;
    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v13, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1982
    if-eqz v7, :cond_a

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialGsm - emergency dialer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 1988
    :cond_a
    iput-boolean v14, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1989
    invoke-virtual {v6, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1991
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1992
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    move/from16 v0, p2

    move-object/from16 v2, v18

    goto/16 :goto_7

    .line 2001
    :cond_b
    invoke-virtual {v6, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setMute(Z)V

    .line 2004
    invoke-direct {v6, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->disableDataCallInEmergencyCall(Z)V

    .line 2007
    if-eqz v16, :cond_d

    if-eqz v16, :cond_c

    if-eqz v8, :cond_c

    move/from16 v0, p2

    move-object/from16 v2, v18

    goto :goto_6

    .line 2026
    :cond_c
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    .line 2028
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v1, 0xe

    move-object/from16 v2, v18

    .end local v18    # "dialString":Ljava/lang/String;
    .local v2, "dialString":Ljava/lang/String;
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2030
    move/from16 v0, p2

    iput v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 2031
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    goto :goto_8

    .line 2007
    .end local v2    # "dialString":Ljava/lang/String;
    .restart local v18    # "dialString":Ljava/lang/String;
    :cond_d
    move/from16 v0, p2

    move-object/from16 v2, v18

    .line 2009
    .end local v18    # "dialString":Ljava/lang/String;
    .restart local v2    # "dialString":Ljava/lang/String;
    :goto_6
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2010
    .local v1, "tmpStr":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasC2kOverImsModem()Z

    move-result v3

    if-nez v3, :cond_e

    .line 2011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2014
    :cond_e
    iget-object v3, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v20

    iget-object v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2015
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v21

    iget-object v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2016
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v22

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v24

    .line 2014
    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move/from16 v23, p2

    invoke-interface/range {v18 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 2020
    invoke-direct {v6, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2021
    iget-object v3, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2022
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2021
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 2025
    .end local v1    # "tmpStr":Ljava/lang/String;
    :cond_f
    goto :goto_8

    .line 1991
    .end local v2    # "dialString":Ljava/lang/String;
    .restart local v18    # "dialString":Ljava/lang/String;
    :cond_10
    move/from16 v0, p2

    move-object/from16 v2, v18

    .line 1994
    .end local v18    # "dialString":Ljava/lang/String;
    .restart local v2    # "dialString":Ljava/lang/String;
    :goto_7
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v3, 0x7

    iput v3, v1, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 2035
    :goto_8
    iget-boolean v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v1, :cond_11

    .line 2036
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 2037
    iput-boolean v14, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    .line 2040
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 2041
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 2043
    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v1
.end method

.method public declared-synchronized blacklist dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 19
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p4

    monitor-enter p0

    .line 1746
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 1749
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    move v9, v1

    .line 1751
    .local v9, "isEmergencyCall":Z
    invoke-virtual {v7, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 1753
    move-object/from16 v10, p1

    .line 1754
    .local v10, "origNumber":Ljava/lang/String;
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1759
    .end local p1    # "dialString":Ljava/lang/String;
    .local v3, "dialString":Ljava/lang/String;
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1766
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->setToRedial()V

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1774
    const-wide/16 v0, 0xfa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1777
    goto :goto_0

    .line 1775
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    :catch_0
    move-exception v0

    .line 1783
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 1798
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v1, v0

    move-object/from16 v4, p0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1800
    if-eqz v8, :cond_1

    .line 1801
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialGsm - emergency dialer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 1806
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1807
    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1808
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V

    .line 1811
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1812
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1811
    invoke-interface {v1, v8, v2}, Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;->convertDialString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, "newDialString":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1814
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    .line 1818
    :cond_2
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1819
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    goto/16 :goto_4

    .line 1832
    :cond_3
    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setMute(Z)V

    .line 1835
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1836
    :try_start_3
    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->isWaitToRedial()Z

    move-result v4

    const/4 v11, 0x1

    if-nez v4, :cond_5

    .line 1838
    if-eqz v1, :cond_4

    .line 1839
    iput-boolean v11, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    goto :goto_1

    .line 1841
    :cond_4
    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1843
    :goto_1
    iget-object v11, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v13

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1844
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v14

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1845
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v15

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v18

    .line 1843
    move-object v12, v1

    move/from16 v16, p2

    move-object/from16 v17, p3

    invoke-interface/range {v11 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_3

    .line 1850
    :cond_5
    if-eqz v1, :cond_6

    .line 1851
    iput-boolean v11, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    goto :goto_2

    .line 1853
    :cond_6
    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1855
    :goto_2
    iget-object v11, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1856
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v13

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1857
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v14

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1858
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v15

    .line 1855
    move-object v12, v1

    move/from16 v16, p2

    move-object/from16 v17, p3

    invoke-virtual/range {v11 .. v17}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->setToRedial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    .line 1861
    :goto_3
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1821
    :cond_7
    :goto_4
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 1824
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1865
    :goto_5
    iget-boolean v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v2, :cond_8

    .line 1866
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1867
    iput-boolean v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    .line 1870
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1871
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1873
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1745
    .end local v1    # "newDialString":Ljava/lang/String;
    .end local v3    # "dialString":Ljava/lang/String;
    .end local v9    # "isEmergencyCall":Z
    .end local v10    # "origNumber":Ljava/lang/String;
    .end local p2    # "clirMode":I
    .end local p3    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local p4    # "intentExtras":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected blacklist dialThreeWay(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .line 2048
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2050
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 2053
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mIsInEmergencyCall:Z

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2056
    if-eqz p2, :cond_0

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialThreeWay - emergency dialer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2064
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2065
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 2066
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    .line 2067
    nop

    .line 2068
    const-string v2, "cdma_3waycall_flash_delay_int"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    goto :goto_0

    .line 2071
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 2073
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez v2, :cond_2

    .line 2075
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x14

    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2080
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2081
    .local v2, "tmpStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2083
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    .line 2084
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2083
    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 2086
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2087
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2088
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2087
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 2092
    .end local v2    # "tmpStr":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v2

    .line 2094
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist dumpState()V
    .locals 5

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing call: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1184
    .local v0, "l":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1185
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1188
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1191
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "s":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1192
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1195
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1198
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "s":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1199
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1203
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1204
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->LogState()V

    .line 1207
    :cond_3
    return-void
.end method

.method public blacklist getHandoverConnectionSize()I
    .locals 1

    .line 2417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected blacklist getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 2290
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2291
    return-object v0

    .line 2298
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 2299
    const/4 v2, 0x0

    aget v1, v1, v2

    .line 2300
    .local v1, "numOfParticipants":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_0
    if-gt v2, v1, :cond_3

    .line 2301
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2

    .line 2302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SRVCC: getHoConnection for call-id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in a conference is found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GsmCdmaCallTkr"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    if-nez v3, :cond_1

    .line 2305
    const-string v3, "SRVCC: but mImsConfHostConnection is null, try to find by callState"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    goto :goto_1

    .line 2310
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC: ret= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    return-object v0

    .line 2300
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2319
    .end local v1    # "numOfParticipants":I
    .end local v2    # "index":I
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    const-string v2, "getHoConnection: Handover connection match found = "

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2321
    .local v3, "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHoConnection - compare number: hoConn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2324
    return-object v3

    .line 2326
    .end local v3    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_4
    goto :goto_2

    .line 2328
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2329
    .restart local v3    # "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHoConnection: compare state hoConn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v5}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2332
    return-object v3

    .line 2334
    .end local v3    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_6
    goto :goto_3

    .line 2335
    :cond_7
    return-object v0
.end method

.method public blacklist getMaxConnections()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/16 v0, 0x13

    goto :goto_0

    .line 177
    :cond_0
    const/16 v0, 0x8

    .line 175
    :goto_0
    return v0
.end method

.method protected blacklist handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 5
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handleCallinControlwithCdmaCW(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    return-void

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handlDuplicateCdmaCW(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    return-void

    .line 2115
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->processPlusCodeForWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 2119
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->shouldNotifyWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2120
    return-void

    .line 2128
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 2129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 2130
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2131
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 2132
    goto :goto_1

    .line 2134
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    :cond_3
    goto :goto_0

    .line 2139
    :cond_4
    :goto_1
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 2140
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 2143
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 2144
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->LogerMessage(I)V

    .line 1217
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0xe

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 1494
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 1223
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->handleCallAdditionalInfo(Landroid/os/AsyncResult;)V

    .line 1224
    goto/16 :goto_4

    .line 1466
    :pswitch_1
    const-string v0, "Receives EVENT_ECONF_SRVCC_INDICATION"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1468
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1469
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1472
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 1473
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_4

    .line 1457
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_CDMA_CALL_ACCEPTED"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1459
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1b

    .line 1460
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handleCallAccepted()V

    goto/16 :goto_4

    .line 1312
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->operationComplete()V

    .line 1313
    goto/16 :goto_4

    .line 1240
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1241
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1242
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "dial call failed!!"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->operationComplete()V

    .line 1245
    goto/16 :goto_4

    .line 1228
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-nez v0, :cond_1b

    .line 1233
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v0, v2, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1235
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    goto/16 :goto_4

    .line 1220
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;)V

    .line 1221
    goto/16 :goto_4

    .line 1415
    :cond_1
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_THREE_WAY_DIAL_BLANK_FLASH"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1418
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1420
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1422
    .local v1, "dialString":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;Ljava/lang/String;)V

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1444
    .end local v1    # "dialString":Ljava/lang/String;
    goto/16 :goto_4

    .line 1445
    :cond_2
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1446
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "exception happened on Blank Flash for 3-way call"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1449
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not handled by phone type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1450
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    goto/16 :goto_4

    .line 1479
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1480
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1481
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v1, :cond_1b

    .line 1483
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1484
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    goto/16 :goto_4

    .line 1487
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not handled by phone type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1488
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    goto/16 :goto_4

    .line 1374
    :cond_6
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_EXIT_ECM_RESPONSE_CDMA"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v0, :cond_a

    .line 1377
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1379
    .local v0, "dialString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_7

    .line 1380
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    const/4 v9, 0x0

    move-object v4, v1

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1385
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1387
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, "tmpStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1390
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v7

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1391
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1392
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v9

    iget v10, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 1393
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v11

    .line 1390
    move-object v6, v1

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 1395
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1396
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1397
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1396
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1400
    .end local v1    # "tmpStr":Ljava/lang/String;
    :cond_8
    goto :goto_0

    .line 1401
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originally unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1402
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1404
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v7

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1405
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v8

    iget v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallClirMode:I

    const/4 v10, 0x0

    .line 1407
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v11

    .line 1403
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1409
    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1411
    .end local v0    # "dialString":Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1412
    goto/16 :goto_4

    .line 1248
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1249
    const/4 v0, 0x0

    .line 1250
    .local v0, "isResumeDial":Z
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1251
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_f

    .line 1253
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->isWaitToRedial()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1256
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v5, :cond_c

    .line 1257
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 1258
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 1259
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1260
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1261
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1262
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1265
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1266
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1267
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 1270
    :cond_d
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v1, :cond_e

    .line 1271
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1272
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_e

    .line 1273
    const-string v5, "android.telecom.event.CALL_SWITCH_FAILED"

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1277
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_2

    .line 1280
    :cond_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    monitor-enter v1

    .line 1281
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->isWaitToRedial()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1282
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->access$000(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;)Z

    move-result v2

    move v0, v2

    .line 1283
    const-string v2, "GsmCdmaCallTkr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch success, then resume dial. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    if-eqz v0, :cond_10

    const-string v6, "(t)"

    goto :goto_1

    :cond_10
    const-string v6, "(f)"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1283
    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    :goto_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isWaitToHangup()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1290
    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_13

    .line 1291
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1292
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "Switch ends, found waiting hangup. switch fg/bg call."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_12

    .line 1295
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_3

    .line 1296
    :cond_12
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_13

    .line 1297
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1301
    :cond_13
    :goto_3
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "Switch ends, wait for poll call done to hangup"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setHoldDone()V

    .line 1305
    :cond_14
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    .line 1307
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->operationComplete()V

    .line 1308
    .end local v0    # "isResumeDial":Z
    goto :goto_4

    .line 1286
    .restart local v0    # "isResumeDial":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1316
    .end local v0    # "isResumeDial":Z
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_15
    const-string v0, "GsmCdmaCallTracker"

    const-string v4, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_1b

    .line 1319
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v0, :cond_16

    const-string v0, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1321
    :cond_16
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedsPoll:Z

    .line 1322
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1328
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1329
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->noAnyCallFromModemExist(Landroid/os/AsyncResult;)Z

    move-result v2

    .line 1330
    .local v2, "bNoCallExists":Z
    if-nez v2, :cond_17

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    if-eqz v4, :cond_17

    .line 1333
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 1334
    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneType(ZZ)V

    .line 1335
    const-string v4, "GsmCdmaCallTracker"

    const-string v5, "[EVENT_POLL_CALLS_RESULT]!bNoCallExists"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_17
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1345
    if-eqz v2, :cond_18

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    if-eqz v4, :cond_18

    .line 1347
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 1348
    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneType(ZZ)V

    .line 1349
    const-string v1, "GsmCdmaCallTracker"

    const-string v4, "[EVENT_POLL_CALLS_RESULT]bNoCallExists"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_18
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    if-eqz v1, :cond_1a

    .line 1356
    if-eqz v2, :cond_19

    .line 1357
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1359
    :cond_19
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    .line 1364
    :cond_1a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isHoldDone()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1365
    const-string v1, "GsmCdmaCallTkr"

    const-string v3, "Switch ends, and poll call done, then resume hangup"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$200(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Z

    .line 1496
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "bNoCallExists":Z
    :cond_1b
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized blacklist handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 28
    .param p1, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 499
    :try_start_0
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 502
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    :cond_0
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 503
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "polledCalls":Ljava/util/List;
    goto :goto_0

    .line 504
    .end local v3    # "polledCalls":Ljava/util/List;
    :cond_1
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 507
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .restart local v3    # "polledCalls":Ljava/util/List;
    :goto_0
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v5

    if-nez v5, :cond_2

    .line 518
    const-string v4, "GsmCdmaCallTkr"

    const-string v5, "SRVCC: +ECONFSRVCC is still not arrival, skip this poll call."

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 523
    :cond_2
    const/4 v5, 0x0

    .line 524
    .local v5, "newRinging":Lcom/android/internal/telephony/Connection;
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v6, "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x0

    .line 526
    .local v7, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    const/4 v8, 0x0

    .line 528
    .local v8, "hasNonHangupStateChanged":Z
    const/4 v9, 0x0

    .line 529
    .local v9, "hasAnyCallDisconnected":Z
    const/4 v10, 0x0

    .line 530
    .local v10, "needsPollDelay":Z
    const/4 v11, 0x0

    .line 531
    .local v11, "unknownConnectionAppeared":Z
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 534
    .local v12, "handoverConnectionsSize":I
    const/4 v13, 0x1

    .line 536
    .local v13, "noConnectionExists":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_3

    .line 537
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v14, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setGwsdCall(Z)V

    .line 540
    :cond_3
    const/4 v14, 0x0

    .local v14, "i":I
    const/4 v15, 0x0

    .local v15, "curDC":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v17, v16

    .line 541
    .local v17, "dcSize":I
    :goto_1
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v4, v4

    move-object/from16 v18, v7

    .end local v7    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v18, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    if-ge v14, v4, :cond_34

    .line 542
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v4, v4, v14

    .line 543
    .local v4, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/16 v19, 0x0

    .line 546
    .local v19, "dc":Lcom/android/internal/telephony/DriverCall;
    move/from16 v7, v17

    .end local v17    # "dcSize":I
    .local v7, "dcSize":I
    if-ge v15, v7, :cond_6

    .line 547
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/DriverCall;

    move-object/from16 v19, v17

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v17

    if-nez v17, :cond_4

    .line 551
    move/from16 v17, v7

    move/from16 v21, v9

    move-object/from16 v7, v19

    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v17    # "dcSize":I
    .local v21, "hasAnyCallDisconnected":Z
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move/from16 v22, v11

    .end local v11    # "unknownConnectionAppeared":Z
    .local v22, "unknownConnectionAppeared":Z
    iget-boolean v11, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v23, v12

    .end local v12    # "handoverConnectionsSize":I
    .local v23, "handoverConnectionsSize":I
    iget v12, v7, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-direct {v1, v9, v11, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->processPlusCodeForDriverCall(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    goto :goto_2

    .line 550
    .end local v17    # "dcSize":I
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v22    # "unknownConnectionAppeared":Z
    .end local v23    # "handoverConnectionsSize":I
    .local v7, "dcSize":I
    .restart local v9    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v12    # "handoverConnectionsSize":I
    .restart local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_4
    move/from16 v17, v7

    move/from16 v21, v9

    move/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v7, v19

    .line 556
    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v12    # "handoverConnectionsSize":I
    .end local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v17    # "dcSize":I
    .restart local v21    # "hasAnyCallDisconnected":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    .restart local v23    # "handoverConnectionsSize":I
    :goto_2
    iget v9, v7, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v11, v14, 0x1

    if-ne v9, v11, :cond_5

    .line 557
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 559
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    goto :goto_3

    .line 546
    .end local v17    # "dcSize":I
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v22    # "unknownConnectionAppeared":Z
    .end local v23    # "handoverConnectionsSize":I
    .local v7, "dcSize":I
    .restart local v9    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v12    # "handoverConnectionsSize":I
    :cond_6
    move/from16 v17, v7

    move/from16 v21, v9

    move/from16 v22, v11

    move/from16 v23, v12

    .end local v7    # "dcSize":I
    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v12    # "handoverConnectionsSize":I
    .restart local v17    # "dcSize":I
    .restart local v21    # "hasAnyCallDisconnected":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    .restart local v23    # "handoverConnectionsSize":I
    move-object/from16 v7, v19

    .line 564
    .end local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    :goto_3
    if-nez v4, :cond_7

    if-eqz v7, :cond_8

    .line 565
    :cond_7
    const/4 v9, 0x0

    .end local v13    # "noConnectionExists":Z
    .local v9, "noConnectionExists":Z
    move v13, v9

    .line 568
    .end local v9    # "noConnectionExists":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_8
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "poll: conn[i="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", dc="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 571
    :cond_9
    if-nez v4, :cond_1d

    if-eqz v7, :cond_1d

    .line 574
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_a

    const-string v9, "case 1 : new Call appear"

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 577
    :cond_a
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v9, :cond_e

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 579
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "poll: pendingMO="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 582
    :cond_b
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v11, v9, v14

    .line 583
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v14, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 584
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 585
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 588
    iget-boolean v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v9, :cond_d

    .line 589
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 593
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 594
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :cond_c
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 600
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 601
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v9, v9, v14

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    goto :goto_4

    .line 602
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 603
    .local v9, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string v11, "GsmCdmaCallTracker"

    const-string v12, "unexpected error on hangup"

    invoke-static {v11, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 609
    .end local v9    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_4
    monitor-exit p0

    return-void

    .line 588
    :cond_d
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    goto/16 :goto_7

    .line 613
    :cond_e
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pendingMo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", dc="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 617
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v9, :cond_f

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 618
    const-string v9, "GsmCdmaCallTkr"

    const-string v11, "MO/MT conflict! MO should be hangup by MD"

    invoke-static {v9, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_f
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v11, v12, v7, v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v11, v9, v14

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 627
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v9, v14, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V

    .line 631
    :cond_10
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 632
    .local v9, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_1a

    .line 635
    instance-of v11, v9, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v11, :cond_11

    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 636
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isMultipartyBeforeHandover()Z

    move-result v11

    if-eqz v11, :cond_11

    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 637
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isConfHostBeforeHandover()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v11

    if-nez v11, :cond_11

    .line 639
    const-string v11, "GsmCdmaCallTracker"

    const-string v12, "SRVCC: goes to conference case."

    invoke-static {v11, v12}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    iput-object v9, v11, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 641
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    goto/16 :goto_7

    .line 643
    :cond_11
    const-string v11, "GsmCdmaCallTracker"

    const-string v12, "SRVCC: goes to normal call case."

    invoke-static {v11, v12}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 648
    iget-object v11, v9, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_12

    iget-object v11, v9, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_12

    iget-object v11, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v12, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v11, v12, :cond_12

    .line 651
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 654
    :cond_12
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 659
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v12

    invoke-interface {v11, v12, v14}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handlePendingHangupSRVCC(Lcom/android/internal/telephony/CallTracker;I)V

    .line 663
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 664
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 665
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 666
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/Connection;

    .line 667
    .local v12, "c":Lcom/android/internal/telephony/Connection;
    move/from16 v19, v13

    .end local v13    # "noConnectionExists":Z
    .local v19, "noConnectionExists":Z
    const-string v13, "GsmCdmaCallTracker"

    move/from16 v24, v15

    .end local v15    # "curDC":I
    .local v24, "curDC":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v10

    .end local v10    # "needsPollDelay":Z
    .local v25, "needsPollDelay":Z
    const-string v10, "HO Conn state is "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v10, v12, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    if-ne v10, v13, :cond_14

    .line 669
    const-string v10, "GsmCdmaCallTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing HO conn "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 673
    .end local v12    # "c":Lcom/android/internal/telephony/Connection;
    :cond_14
    move/from16 v13, v19

    move/from16 v15, v24

    move/from16 v10, v25

    goto :goto_5

    .line 665
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :cond_15
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    goto :goto_6

    .line 663
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :cond_16
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .line 677
    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    :goto_6
    iget-boolean v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v10, :cond_17

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 678
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 679
    const-string v10, "GsmCdmaCallTracker"

    const-string v11, "Ecm timer has been canceled in IMS, so set setEcmCanceledForEmergency(true) directly"

    invoke-static {v10, v11}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->setEcmCanceledForEmergency(Z)V

    .line 688
    :cond_17
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->oemMigrateFrom()V

    .line 691
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->hasHoRegistrants()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 693
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 698
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    const-string v11, "android.telecom.event.CALL_REMOTELY_UNHELD"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 730
    .end local v9    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :goto_7
    move/from16 v11, v22

    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    goto :goto_8

    .line 702
    .restart local v9    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_18
    const/4 v11, 0x1

    .line 703
    .end local v22    # "unknownConnectionAppeared":Z
    .local v11, "unknownConnectionAppeared":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 704
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 706
    :cond_19
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    move-object/from16 v18, v10

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v10, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_8

    .line 716
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .local v10, "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_1a
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    invoke-interface {v10, v14, v7}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handleCallinControlwithCsHangup(ILcom/android/internal/telephony/DriverCall;)Z

    .line 719
    invoke-virtual {v1, v7, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v10

    move-object v5, v10

    .line 720
    if-nez v5, :cond_1c

    .line 721
    const/4 v11, 0x1

    .line 722
    .end local v22    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 723
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 725
    :cond_1b
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    move-object/from16 v18, v10

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v10, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_8

    .line 720
    .end local v10    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_1c
    move/from16 v11, v22

    .line 730
    .end local v9    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v22    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_8
    const/4 v8, 0x1

    move-object/from16 v7, v18

    goto/16 :goto_11

    .line 571
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .local v10, "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_1d
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .line 731
    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    if-eqz v4, :cond_27

    if-nez v7, :cond_27

    .line 734
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_1e

    const-string v9, "GsmCdmaCallTkr"

    const-string v10, "case 2 : old Call disappear"

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-eqz v9, :cond_23

    iget v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_23

    .line 740
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v9, v10, :cond_1f

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 741
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1f

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 742
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v9

    if-nez v9, :cond_20

    .line 743
    :cond_1f
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v9, v10, :cond_21

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 744
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 745
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_21

    :cond_20
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 746
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_21

    .line 747
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v10, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 753
    :cond_21
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 758
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 763
    :cond_22
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v10, 0x0

    aput-object v10, v9, v14

    .line 766
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationEnd()V

    .line 771
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v9, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->clearForwardingAddressVariables(I)V

    goto/16 :goto_b

    .line 778
    :cond_23
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 779
    .local v9, "count":I
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_9
    if-ge v10, v9, :cond_24

    .line 781
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding fgCall cn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to droppedDuringPoll"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 782
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v11, v11, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 783
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 784
    .local v11, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    nop

    .end local v11    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 786
    .end local v10    # "n":I
    :cond_24
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v10, v10, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v10

    .line 789
    const/4 v10, 0x0

    .restart local v10    # "n":I
    :goto_a
    if-ge v10, v9, :cond_25

    .line 791
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding rgCall cn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to droppedDuringPoll"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 792
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v11, v11, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 793
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 794
    .restart local v11    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    nop

    .end local v11    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 798
    .end local v10    # "n":I
    :cond_25
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v10

    if-eqz v10, :cond_26

    .line 799
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 802
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 806
    .end local v9    # "count":I
    :goto_b
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v10, 0x0

    aput-object v10, v9, v14

    goto/16 :goto_10

    .line 807
    :cond_27
    if-eqz v4, :cond_2b

    if-eqz v7, :cond_2b

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 810
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_28

    const-string v9, "GsmCdmaCallTkr"

    const-string v10, "case 3 : old Call replaced"

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_28
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v9, :cond_29

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 820
    const-string v9, "GsmCdmaCallTkr"

    const-string v10, "ringing disc not updated yet & replaced by pendingMo"

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v10, v9, v14

    .line 823
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v14, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 824
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 825
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_c

    .line 827
    :cond_29
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v10, v11, v7, v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v10, v9, v14

    .line 831
    :goto_c
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v9, v9, v14

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v9, v10, :cond_2a

    .line 832
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v9, v9, v14

    move-object v5, v9

    .line 834
    :cond_2a
    const/4 v8, 0x1

    move-object/from16 v7, v18

    move/from16 v11, v22

    goto/16 :goto_11

    .line 835
    :cond_2b
    if-eqz v4, :cond_33

    if-eqz v7, :cond_33

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-nez v9, :cond_2f

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v9

    iget-boolean v10, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v9, v10, :cond_2f

    .line 838
    iget-boolean v9, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2e

    .line 840
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v10, v11, v7, v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v10, v9, v14

    .line 843
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/IOplusCallManager;->DEFAULT:Lcom/android/internal/telephony/IOplusCallManager;

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v12}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IOplusCallManager;

    .line 850
    .local v9, "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    sget v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_CALLIN:I

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/IOplusCallManager;->isRestricted(II)Z

    move-result v10

    if-nez v10, :cond_2c

    .line 851
    invoke-virtual {v1, v7, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v10

    move-object v5, v10

    .line 854
    :cond_2c
    if-nez v5, :cond_2d

    .line 855
    const/4 v11, 0x1

    .line 856
    .end local v22    # "unknownConnectionAppeared":Z
    .local v11, "unknownConnectionAppeared":Z
    move-object v10, v4

    move-object/from16 v18, v10

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v10, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_d

    .line 854
    .end local v10    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_2d
    move/from16 v11, v22

    .line 858
    .end local v22    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 859
    .end local v9    # "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    move-object/from16 v7, v18

    goto :goto_11

    .line 864
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_2e
    const-string v9, "GsmCdmaCallTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in RIL, Phantom call appeared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 869
    :cond_2f
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_30

    const-string v9, "GsmCdmaCallTkr"

    const-string v10, "case 4 : old Call update"

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_30
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    .line 873
    .local v9, "changed":Z
    if-nez v8, :cond_32

    if-eqz v9, :cond_31

    goto :goto_e

    :cond_31
    const/16 v20, 0x0

    goto :goto_f

    :cond_32
    :goto_e
    const/16 v20, 0x1

    :goto_f
    move/from16 v8, v20

    move-object/from16 v7, v18

    move/from16 v11, v22

    goto :goto_11

    .line 541
    .end local v4    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v9    # "changed":Z
    :cond_33
    :goto_10
    move-object/from16 v7, v18

    move/from16 v11, v22

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v22    # "unknownConnectionAppeared":Z
    .local v7, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_11
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v19

    move/from16 v9, v21

    move/from16 v12, v23

    move/from16 v15, v24

    move/from16 v10, v25

    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v7    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v19    # "noConnectionExists":Z
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v23    # "handoverConnectionsSize":I
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .local v9, "hasAnyCallDisconnected":Z
    .local v10, "needsPollDelay":Z
    .local v12, "handoverConnectionsSize":I
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :cond_34
    move/from16 v21, v9

    move/from16 v25, v10

    move/from16 v22, v11

    move/from16 v23, v12

    .line 898
    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v10    # "needsPollDelay":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v12    # "handoverConnectionsSize":I
    .end local v14    # "i":I
    .end local v15    # "curDC":I
    .end local v17    # "dcSize":I
    .restart local v21    # "hasAnyCallDisconnected":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    .restart local v23    # "handoverConnectionsSize":I
    .restart local v25    # "needsPollDelay":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_35

    if-eqz v13, :cond_35

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 905
    :cond_35
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v4, :cond_38

    .line 906
    const-string v4, "GsmCdmaCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pending MO dropped before poll fg state:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 907
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 906
    invoke-static {v4, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 911
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 912
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 915
    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v7, :cond_36

    .line 916
    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 919
    :cond_36
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 920
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 924
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_38

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 930
    :cond_38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3a

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v4, v4

    if-nez v4, :cond_3a

    .line 931
    const-string v4, "check whether fgCall or ringCall have mConnections"

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 937
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 938
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_12
    if-ge v7, v4, :cond_39

    .line 939
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding fgCall cn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to droppedDuringPoll"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 940
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 941
    .local v9, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    nop

    .end local v9    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 944
    .end local v7    # "n":I
    :cond_39
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v7, v7, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 947
    const/4 v7, 0x0

    .restart local v7    # "n":I
    :goto_13
    if-ge v7, v4, :cond_3a

    .line 948
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding rgCall cn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to droppedDuringPoll"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 949
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 950
    .restart local v9    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    nop

    .end local v9    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 956
    .end local v4    # "count":I
    .end local v7    # "n":I
    :cond_3a
    if-eqz v5, :cond_3b

    .line 959
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/IOplusCallManager;->DEFAULT:Lcom/android/internal/telephony/IOplusCallManager;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IOplusCallManager;

    .line 960
    .local v4, "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    const-string v7, "true"

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/IOplusCallManager;->checkVoocState(Ljava/lang/String;)V

    .line 967
    sget v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_CALLIN:I

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    invoke-interface {v4, v7, v9}, Lcom/android/internal/telephony/IOplusCallManager;->isRestricted(II)Z

    move-result v7

    if-nez v7, :cond_3b

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    .line 968
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-interface {v7, v9, v10}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handleCallInControl(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 969
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 972
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-interface {v7, v9}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handleAutoAnswer(Lcom/android/internal/telephony/Phone;)V

    .line 981
    .end local v4    # "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    :cond_3b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v4, "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    move-object/from16 v9, v18

    move/from16 v11, v22

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v22    # "unknownConnectionAppeared":Z
    .local v7, "i":I
    .local v9, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_14
    if-ltz v7, :cond_42

    .line 983
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 985
    .local v10, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v12, 0x0

    .line 988
    .local v12, "wasDisconnected":Z
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 989
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 990
    const/16 v14, 0xe

    invoke-virtual {v10, v14}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v14

    or-int v14, v21, v14

    .line 991
    .end local v21    # "hasAnyCallDisconnected":Z
    .local v14, "hasAnyCallDisconnected":Z
    const/4 v12, 0x1

    move/from16 v21, v14

    goto :goto_16

    .line 993
    .end local v14    # "hasAnyCallDisconnected":Z
    .restart local v21    # "hasAnyCallDisconnected":Z
    :cond_3c
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v14

    const/4 v15, 0x3

    if-eqz v14, :cond_3e

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    move-result-wide v17

    const-wide/16 v26, 0x0

    cmp-long v14, v17, v26

    if-nez v14, :cond_3e

    .line 996
    iget v14, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-ne v14, v15, :cond_3d

    .line 997
    const/16 v14, 0x10

    .local v14, "cause":I
    goto :goto_15

    .line 999
    .end local v14    # "cause":I
    :cond_3d
    const/4 v14, 0x1

    .line 1003
    .restart local v14    # "cause":I
    :goto_15
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missed/rejected call, conn.cause="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting cause to "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1006
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1007
    invoke-virtual {v10, v14}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v2

    or-int v2, v21, v2

    .line 1008
    .end local v21    # "hasAnyCallDisconnected":Z
    .local v2, "hasAnyCallDisconnected":Z
    const/4 v12, 0x1

    .line 1009
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    move/from16 v21, v2

    .end local v14    # "cause":I
    goto :goto_16

    .end local v2    # "hasAnyCallDisconnected":Z
    .restart local v21    # "hasAnyCallDisconnected":Z
    :cond_3e
    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-eq v2, v15, :cond_3f

    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    const/4 v14, 0x7

    if-ne v2, v14, :cond_40

    .line 1012
    :cond_3f
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1013
    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v2

    or-int v2, v21, v2

    .line 1014
    .end local v21    # "hasAnyCallDisconnected":Z
    .restart local v2    # "hasAnyCallDisconnected":Z
    const/4 v12, 0x1

    .line 1015
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v21, v2

    .line 1018
    .end local v2    # "hasAnyCallDisconnected":Z
    .restart local v21    # "hasAnyCallDisconnected":Z
    :cond_40
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_41

    if-eqz v12, :cond_41

    if-eqz v11, :cond_41

    if-ne v10, v9, :cond_41

    .line 1020
    const/4 v2, 0x0

    .line 1021
    .end local v11    # "unknownConnectionAppeared":Z
    .local v2, "unknownConnectionAppeared":Z
    const/4 v9, 0x0

    move v11, v2

    .line 982
    .end local v2    # "unknownConnectionAppeared":Z
    .end local v10    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v12    # "wasDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    :cond_41
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v2, p1

    goto/16 :goto_14

    .line 1024
    .end local v7    # "i":I
    :cond_42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 1025
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    .line 1026
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v10

    .line 1025
    invoke-virtual {v2, v7, v4, v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1032
    :cond_43
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_47

    .line 1033
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1034
    .local v2, "hostConn":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x2

    if-lt v7, v10, :cond_44

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->restoreConferenceParticipantAddress()Z

    .line 1040
    const-string v7, "GsmCdmaCallTkr"

    const-string v10, "SRVCC: notify new participant connections"

    invoke-static {v7, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    goto :goto_17

    .line 1042
    :cond_44
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_46

    .line 1044
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1049
    .local v7, "participant":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v2, v10}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 1050
    .local v10, "address":Ljava/lang/String;
    const-string v12, "GsmCdmaCallTkr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SRVCC: restore participant connection with address: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "GsmCdmaCallTkr"

    .line 1052
    invoke-static {v15, v10}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1050
    invoke-static {v12, v14}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    instance-of v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    if-eqz v12, :cond_45

    .line 1054
    move-object v12, v7

    check-cast v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1055
    invoke-virtual {v12, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 1058
    :cond_45
    const-string v12, "GsmCdmaCallTkr"

    const-string v14, "SRVCC: only one connection, consider it as a normal call SRVCC"

    invoke-static {v12, v14}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 1061
    .end local v7    # "participant":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v10    # "address":Ljava/lang/String;
    goto :goto_17

    .line 1062
    :cond_46
    const-string v7, "GsmCdmaCallTkr"

    const-string v10, "SRVCC: abnormal case, no participant connections."

    invoke-static {v7, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :goto_17
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1065
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 1066
    iput-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1070
    .end local v2    # "hostConn":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :cond_47
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1071
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1072
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 1073
    .local v7, "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlePollCalls - disconnect hoConn= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hoConn.State= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1073
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_48

    .line 1076
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_19

    .line 1078
    :cond_48
    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 1081
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1082
    .end local v7    # "hoConnection":Lcom/android/internal/telephony/Connection;
    goto :goto_18

    .line 1085
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_49
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4a

    .line 1086
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v7, 0x5

    .line 1087
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1086
    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1090
    :cond_4a
    if-eqz v25, :cond_4b

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsAfterDelay()V

    .line 1099
    :cond_4b
    if-nez v5, :cond_4c

    if-nez v8, :cond_4c

    if-eqz v21, :cond_4d

    :cond_4c
    iget-boolean v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    if-nez v2, :cond_4d

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->internalClearDisconnected()V

    .line 1108
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1112
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v7, :cond_4e

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    instance-of v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v2, :cond_4e

    .line 1113
    const-string v2, "Phone in IDLE State, reset that CRSS msg"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1114
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCachedCrss()Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 1115
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->resetCachedCrss()V

    .line 1120
    :cond_4e
    if-eqz v11, :cond_52

    .line 1121
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/IOplusCallManager;->DEFAULT:Lcom/android/internal/telephony/IOplusCallManager;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOplusCallManager;

    .line 1122
    .local v2, "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1123
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Connection;

    .line 1124
    .local v10, "c":Lcom/android/internal/telephony/Connection;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notify unknown for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1129
    sget v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_CALLIN:I

    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v14

    invoke-interface {v2, v12, v14}, Lcom/android/internal/telephony/IOplusCallManager;->isRestricted(II)Z

    move-result v12

    if-nez v12, :cond_4f

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    .line 1130
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-interface {v12, v14, v15}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handleCallInControl(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-nez v12, :cond_4f

    .line 1131
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1134
    .end local v10    # "c":Lcom/android/internal/telephony/Connection;
    :cond_4f
    goto :goto_1a

    :cond_50
    goto :goto_1b

    .line 1140
    :cond_51
    sget v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->TYPE_CALLIN:I

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v10

    invoke-interface {v2, v7, v10}, Lcom/android/internal/telephony/IOplusCallManager;->isRestricted(II)Z

    move-result v7

    if-nez v7, :cond_52

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mInterfaceImpl:Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;

    .line 1141
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-interface {v7, v10, v12}, Lcom/android/internal/telephony/IOplusGsmCdmaCallTracker;->handleCallInControl(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 1142
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1148
    .end local v2    # "callManagerImpl":Lcom/android/internal/telephony/IOplusCallManager;
    :cond_52
    :goto_1b
    if-nez v8, :cond_53

    if-nez v5, :cond_53

    if-eqz v21, :cond_54

    .line 1149
    :cond_53
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1150
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 1154
    :cond_54
    if-lez v23, :cond_55

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_55

    .line 1155
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1156
    .local v2, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_55

    .line 1157
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 1163
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v2, :cond_56

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v2

    const/16 v7, 0x13

    if-ne v2, v7, :cond_56

    .line 1165
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->getCurrentTotalConnections()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_56

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1166
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v7, :cond_56

    .line 1167
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v7, v2, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1173
    :cond_56
    monitor-exit p0

    return-void

    .line 511
    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v4    # "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    .end local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v6    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v8    # "hasNonHangupStateChanged":Z
    .end local v9    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "noConnectionExists":Z
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v23    # "handoverConnectionsSize":I
    .end local v25    # "needsPollDelay":Z
    :cond_57
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 498
    .end local p1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1590
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1594
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1595
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1600
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1601
    .local v0, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    instance-of v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    const/16 v2, 0x3eb

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1602
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getRejectWithCause()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    move-object v4, v0

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1604
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getRejectWithCause()I

    move-result v4

    .line 1605
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1603
    invoke-virtual {v1, v3, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hangupConnectionWithCause(IILandroid/os/Message;)V

    goto :goto_0

    .line 1607
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1610
    .end local v0    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :goto_0
    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_6

    .line 1611
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1613
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto/16 :goto_2

    .line 1629
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1633
    const-string v0, "(foregnd) hangup active"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1635
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1636
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1638
    .local v2, "address":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1639
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 1640
    .local v3, "isEmergencyCall":Z
    if-eqz v3, :cond_3

    .line 1641
    const-string v4, "GsmCdmaCallTkr"

    const-string v5, "(foregnd) hangup active ECC call by connection index"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_1

    .line 1647
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isWaitToHangup()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1648
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_1

    .line 1650
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1654
    .end local v0    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "isEmergencyCall":Z
    :goto_1
    goto :goto_2

    .line 1655
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_2

    .line 1658
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_9

    .line 1659
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1661
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_2

    .line 1665
    :cond_7
    const-string v0, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isWaitToHangup()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1669
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_2

    .line 1671
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1680
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1682
    return-void

    .line 1676
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1521
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_2

    .line 1526
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-ne p1, v0, :cond_0

    .line 1530
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    goto :goto_0

    .line 1533
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1534
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1535
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 1547
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    .line 1549
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1550
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1551
    return-void

    .line 1554
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    .line 1555
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 1554
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    const/16 v2, 0x3eb

    .line 1559
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1558
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    goto :goto_0

    .line 1560
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 1569
    return-void

    .line 1522
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hangupAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1505
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "hangupAll"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->hangupAll(Landroid/os/Message;)V

    .line 1508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1515
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1517
    :cond_2
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground()V
    .locals 2

    .line 1694
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1699
    return-void
.end method

.method public blacklist hangupWaitingOrBackground()V
    .locals 2

    .line 1685
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1689
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1691
    return-void
.end method

.method blacklist hasParsingCEPCapability()Z
    .locals 4

    .line 2395
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2397
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 2398
    .local v1, "mccmnc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasParsingCEPCapability - mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2402
    const-string v2, "25099"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "732103"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2403
    const-string v2, "732111"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "24001"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2407
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 2408
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 2409
    .local v2, "modem":Lcom/mediatek/internal/telephony/MtkHardwareConfig;
    if-nez v2, :cond_1

    .line 2410
    return v3

    .line 2412
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasParsingCEPCapability()Z

    move-result v3

    return v3

    .line 2404
    .end local v2    # "modem":Lcom/mediatek/internal/telephony/MtkHardwareConfig;
    :cond_2
    :goto_0
    return v3
.end method

.method protected blacklist notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Call$SrvccState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 2265
    .local p2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 2267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2270
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2272
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v2, :cond_0

    .line 2273
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2274
    const-string v2, "srvcc: mNeedWaitImsEConfSrvcc set True"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 2276
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 2278
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 2280
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq p1, v0, :cond_3

    .line 2283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2285
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState: mHandoverConnections= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2286
    return-void
.end method

.method protected blacklist reset()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setGwsdCall(Z)V

    .line 457
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasC2kOverImsModem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    .line 460
    return-void

    .line 465
    :cond_0
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "reset"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 468
    .local v3, "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v3, :cond_1

    .line 474
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 467
    .end local v3    # "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 488
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 489
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 490
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 491
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_3

    .line 1881
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1885
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    if-nez v0, :cond_2

    .line 1886
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup()V

    .line 1887
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1888
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1887
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1889
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    goto :goto_0

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1894
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_0

    .line 1900
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1904
    :cond_2
    :goto_0
    return-void

    .line 1879
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist updatePhoneState()V
    .locals 4

    .line 2219
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2220
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2221
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 2222
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 2223
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2226
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2232
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2

    .line 2233
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 2235
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 2224
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2238
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 2239
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 2241
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 2242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2246
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_6

    .line 2249
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 2250
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 2253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_6

    .line 2254
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeSwitchPending()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2255
    const-string v1, "update phone state, to deal with pending PhoneType SWITCHING"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2257
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->clearPhoneTypeSwitchPending()V

    .line 2262
    :cond_6
    return-void
.end method

.method protected blacklist updatePhoneType(Z)V
    .locals 1
    .param p1, "duringInit"    # Z

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneType(ZZ)V

    .line 382
    return-void
.end method

.method blacklist updateWaitPollAfterAbortPendingMO(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 1573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(ZZ)V

    .line 1574
    return-void
.end method

.method blacklist updateWaitPollAfterAbortPendingMO(ZZ)V
    .locals 4
    .param p1, "newValue"    # Z
    .param p2, "forceUpdate"    # Z

    .line 1577
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    .line 1578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mWaitPollAfterHangupPendingMO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    const-string v2, "t"

    const-string v3, "f"

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    if-eqz p2, :cond_3

    const-string v1, " (forceUpdate)"

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1578
    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    .line 1584
    :cond_4
    return-void
.end method
