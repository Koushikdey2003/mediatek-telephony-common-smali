.class public Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.super Landroid/os/Handler;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;,
        Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_SYSTEM_UPDATE_SUCCESSFUL:Ljava/lang/String; = "com.mediatek.systemupdate.UPDATE_SUCCESSFUL"

.field private static final blacklist CFU_QUERY_WHEN_IMS_REGISTERED_DEFAULT:Z = false

.field private static final blacklist CFU_SETTING_ALWAYS_NOT_QUERY:Ljava/lang/String; = "1"

.field private static final blacklist CFU_SETTING_ALWAYS_QUERY:Ljava/lang/String; = "2"

.field private static final blacklist CFU_SETTING_DEFAULT:Ljava/lang/String; = "0"

.field private static final blacklist CFU_SETTING_QUERY_IF_EFCFIS_INVALID:Ljava/lang/String; = "3"

.field private static final blacklist DBG:Z = true

.field private static final blacklist EFCFIS_STATUS_INVALID:I = 0x3

.field private static final blacklist EFCFIS_STATUS_NOT_READY:I = 0x0

.field private static final blacklist EFCFIS_STATUS_VALID:I = 0x2

.field private static final blacklist EVENT_CALL_FORWARDING_STATUS_FROM_MD:I = 0x6

.field private static final blacklist EVENT_CARRIER_CONFIG_LOADED:I = 0xf

.field private static final blacklist EVENT_CFU_STATUS_FROM_MD:I = 0x8

.field public static final blacklist EVENT_CLEAN_CFU_STATUS:I = 0x10

.field private static final blacklist EVENT_DATA_CONNECTION_ATTACHED:I = 0x2

.field private static final blacklist EVENT_DATA_CONNECTION_DETACHED:I = 0x3

.field private static final blacklist EVENT_GET_CALL_FORWARD_BY_GSM_DONE:I = 0x4

.field private static final blacklist EVENT_GET_CALL_FORWARD_BY_IMS_DONE:I = 0x5

.field private static final blacklist EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_GSM_DONE:I = 0xa

.field private static final blacklist EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_IMS_DONE:I = 0xb

.field private static final blacklist EVENT_ICCRECORDS_READY:I = 0x1

.field private static final blacklist EVENT_ICC_CHANGED:I = 0xd

.field private static final blacklist EVENT_QUERY_CFU_OVER_CS:I = 0x7

.field private static final blacklist EVENT_QUERY_CFU_OVER_CS_AFTER_DATA_NOT_ATTACHED:I = 0xe

.field private static final blacklist EVENT_REGISTERED_TO_NETWORK:I = 0x0

.field private static final blacklist EVENT_SIM_RECORDS_LOADED:I = 0xc

.field private static final blacklist EVENT_SS_RESET:I = 0x9

.field private static final blacklist IMS_NOT_QUERY_YET:Ljava/lang/String; = "1"

.field private static final blacklist IMS_NO_NEED_QUERY:Ljava/lang/String; = "0"

.field private static final blacklist IMS_QUERY_DONE:Ljava/lang/String; = "2"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SuppServHelper"

.field private static final blacklist QUERY_OVER_GSM:I = 0x0

.field private static final blacklist QUERY_OVER_GSM_OVER_UT:I = 0x1

.field private static final blacklist QUERY_OVER_IMS:I = 0x2

.field private static final blacklist SDBG:Z

.field private static final blacklist SIM_CHANGED:Ljava/lang/String; = "1"

.field private static final blacklist SIM_NO_CHANGED:Ljava/lang/String; = "0"

.field private static final blacklist TASK_CLEAN_CFU_STATUS:I = 0x4

.field private static final blacklist TASK_QUERY_CFU:I = 0x0

.field private static final blacklist TASK_QUERY_CFU_OVER_GSM:I = 0x1

.field private static final blacklist TASK_QUERY_CFU_OVER_IMS:I = 0x2

.field private static final blacklist TASK_SET_CW_STATUS:I = 0x5

.field private static final blacklist TASK_TIME_SLOT_FAILED:I = 0x3

.field private static final blacklist TIMER_FOR_RETRY_QUERY_CFU:I = 0x4e20

.field private static final blacklist TIMER_FOR_WAIT_DATA_ATTACHED:I = 0x4e20

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCarrierConfigLoaded:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field private blacklist mMtkSuppServHelper:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

.field private blacklist mNeeedSyncForOTA:I

.field private blacklist mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field private blacklist mSimRecordsLoaded:Z

.field private blacklist mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

.field private blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 134
    nop

    .line 133
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->VDBG:Z

    .line 136
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->SDBG:Z

    .line 136
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 397
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 143
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 145
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mMtkSuppServHelper:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 149
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    .line 151
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    .line 152
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    .line 154
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    .line 728
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 856
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 398
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    .line 399
    move-object v0, p2

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 401
    new-instance v0, Lcom/android/ims/FeatureConnector;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 402
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    new-instance v4, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;

    invoke-direct {v4, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 419
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    const-string v6, "MtkSuppServHelper"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 420
    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 421
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->registerEvent()V

    .line 422
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->registerBroadcastReceiver()V

    .line 424
    const-string v0, "MtkSuppServHelper init done."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isMDSupportIMSSuppServ()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 129
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->makeMtkSuppServUtTest(Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->taskDone()V

    return-void
.end method

.method static synthetic blacklist access$402(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .param p1, "x1"    # Lcom/android/ims/ImsManager;

    .line 129
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setImsCallback()V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unSetImsCallback()V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSubinfoUpdate()V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isResetCSFBStatusAfterFlightMode()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSupportSuppServUTTest()Z

    move-result v0

    return v0
.end method

.method private blacklist checkEfCfis()I
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 800
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    if-eqz v1, :cond_1

    .line 802
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->checkEfCfis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const/4 v1, 0x2

    return v1

    .line 805
    :cond_0
    const/4 v1, 0x3

    return v1

    .line 810
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist checkInitCriteria(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "criteriaFailReason"    # Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSubInfoReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    const-string v0, "SubInfo not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    return v1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIccCardMncMccAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    const-string v0, "MCC MNC not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    return v1

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIccRecordsAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    const-string v0, "Icc record available, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    return v1

    .line 448
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isVoiceInService()Z

    move-result v0

    if-nez v0, :cond_3

    .line 449
    const-string v0, "Network is not registered, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    return v1

    .line 453
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getSimRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 454
    const-string v0, "Sim not loaded, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    return v1

    .line 458
    :cond_4
    const-string v0, "All Criteria ready."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1064
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 1065
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/4 v1, 0x0

    .line 1067
    .local v1, "textByte":[B
    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "null"

    return-object v2

    .line 1069
    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1073
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v2

    .line 1071
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1072
    const/4 v1, 0x0

    .line 1075
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_1

    const-string v2, ""

    return-object v2

    .line 1077
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "encryptedString":Ljava/lang/String;
    return-object v2
.end method

.method private blacklist getCarrierConfigLoaded()Z
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierConfigLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 478
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    return v0
.end method

.method private blacklist getSIMChangedRecordFromSystemProp()Z
    .locals 4

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.change."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "isChangedProp":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "isChanged":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMChangedRecordFromSystemProp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 637
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const/4 v2, 0x1

    return v2

    .line 640
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist getSimRecordsLoaded()Z
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 468
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    return v0
.end method

.method private blacklist getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appFamily"    # I

    .line 463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleSubinfoUpdate()V
    .locals 1

    .line 487
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSuppServInit()V

    .line 494
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIccRecordsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    return-void

    .line 497
    :cond_1
    return-void
.end method

.method private blacklist handleSuppServIfSimChanged()V
    .locals 7

    .line 603
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getSIMChangedRecordFromSystemProp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->reset()V

    .line 606
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 608
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    const/4 v3, 0x5

    const-string v4, "Sim Changed"

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;IZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->appendTask(Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;)V

    .line 612
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 615
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    .line 616
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 617
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_sub_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 618
    .local v2, "clirSetting":I
    if-eq v2, v5, :cond_0

    .line 619
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 620
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    const-string v3, "failed to commit the removal of CLIR preference"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->loge(Ljava/lang/String;)V

    .line 626
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v3, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    invoke-direct {v3, p0, v1, v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;IZLjava/lang/String;)V

    move-object v1, v3

    .line 627
    .local v1, "task":Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->appendTask(Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;)V

    .line 629
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "task":Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    .end local v2    # "clirSetting":I
    :cond_1
    return-void
.end method

.method private blacklist handleSuppServInit()V
    .locals 7

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.iccid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "mySettingName":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "oldIccId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 574
    .local v2, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v3, 0x0

    .line 575
    .local v3, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 576
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 582
    :cond_0
    if-nez v3, :cond_1

    .line 583
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "newIccId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 587
    return-void

    .line 590
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mySubId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mySettingName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->SDBG:Z

    .line 591
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " old iccid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " new iccid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logw(Ljava/lang/String;)V

    .line 594
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.vendor.radio.cfu.change."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "isChanged":Ljava/lang/String;
    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSuppServIfSimChanged()V

    .line 600
    .end local v4    # "newIccId":Ljava/lang/String;
    .end local v5    # "isChanged":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private blacklist isIMSRegistered()Z
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 645
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 648
    const/4 v1, 0x1

    return v1

    .line 650
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isIccCardMncMccAvailable(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 532
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 533
    .local v0, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 534
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 535
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "mccMnc":Ljava/lang/String;
    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 538
    .end local v4    # "mccMnc":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private blacklist isIccRecordsAvailable()Z
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 543
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 544
    const/4 v1, 0x1

    return v1

    .line 546
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isMDSupportIMSSuppServ()Z
    .locals 3

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const/4 v0, 0x1

    .line 897
    :cond_0
    return v0
.end method

.method private blacklist isNoNeedToCSFBWhenIMSRegistered()Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNoNeedToCSFBWhenIMSRegistered()Z

    move-result v0

    return v0
.end method

.method private blacklist isNotMachineTest()Z
    .locals 7

    .line 500
    const-string v0, "0"

    .line 502
    .local v0, "isTestSim":Ljava/lang/String;
    const/4 v1, 0x0

    .line 503
    .local v1, "isRRMEnv":Z
    const/4 v2, 0x0

    .line 505
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "0"

    if-nez v3, :cond_0

    .line 506
    const-string v3, "vendor.gsm.sim.ril.testsim"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 509
    const-string v3, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_2

    const-string v3, "46602"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    const/4 v1, 0x1

    .line 521
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTestSIM : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isRRMEnv : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method private blacklist isNotSupportUtToCS()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCSforCFUQuery()Z

    move-result v0

    return v0
.end method

.method private blacklist isResetCSFBStatusAfterFlightMode()Z
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isResetCSFBStatusAfterFlightMode()Z

    move-result v0

    return v0
.end method

.method private blacklist isSubInfoReady()Z
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 559
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .line 560
    .local v1, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 561
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 563
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 564
    const/4 v2, 0x1

    return v2

    .line 566
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isSupportCFUTimeSlot()Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportCFUTimeSlot()Z

    move-result v0

    return v0
.end method

.method private blacklist isSupportSuppServUTTest()Z
    .locals 2

    .line 884
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "persist.vendor.volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 886
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 884
    :goto_0
    return v0
.end method

.method private blacklist isVoiceInService()Z
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 551
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method private blacklist makeMtkSuppServUtTest(Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 917
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {v0, v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method private blacklist notifyCdmaCallForwardingIndicator()V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 922
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 925
    :cond_0
    return-void
.end method

.method private blacklist registerBroadcastReceiver()V
    .locals 6

    .line 702
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 703
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v1, "com.mediatek.systemupdate.UPDATE_SUCCESSFUL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 713
    .local v1, "utTestFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.mediatek.permission.SUPPLEMENTARY_SERVICE_UT_TEST"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 716
    return-void
.end method

.method private blacklist registerEvent()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 678
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 681
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 682
    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 685
    return-void
.end method

.method private blacklist reset()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->clearPendingTask()V

    .line 854
    return-void
.end method

.method private blacklist setCarrierConfigLoaded(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mCarrierConfigLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 483
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    .line 484
    return-void
.end method

.method private blacklist setImsCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "ie":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsManager addRegistrationCallback failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 663
    .end local v0    # "ie":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method private blacklist setSimRecordsLoaded(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mSimRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 473
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    .line 474
    return-void
.end method

.method private blacklist syncSysPropToSIMforOTA()Z
    .locals 5

    .line 814
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSysPropToSIMforOTA: No need to sync (sim change): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 817
    return v1

    .line 818
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncSysPropToSIMforOTA: No need to sync (unknown): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 821
    return v3

    .line 824
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getSimRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 825
    const-string v0, "syncSysPropToSIMforOTA: SIM not loaded."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 826
    return v3

    .line 829
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->checkEfCfis()I

    move-result v0

    .line 830
    .local v0, "checkEfCfis":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncSysPropToSIMforOTA: checkEfCfis = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 831
    if-nez v0, :cond_3

    .line 832
    return v3

    .line 833
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 834
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v2

    .line 835
    .local v2, "cfuStatus":Z
    if-eqz v2, :cond_4

    .line 836
    const-string v3, "syncSysPropToSIMforOTA: true from system preference."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 837
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const-string v4, ""

    invoke-virtual {v3, v1, v2, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 839
    :cond_4
    return v1

    .line 840
    .end local v2    # "cfuStatus":Z
    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 841
    return v1

    .line 844
    :cond_6
    return v1
.end method

.method private blacklist taskDone()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "ssmsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    return-void
.end method

.method private blacklist toEventString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 1001
    packed-switch p1, :pswitch_data_0

    .line 1038
    const-string v0, "UNKNOWN_EVENT_ID"

    return-object v0

    .line 1035
    :pswitch_0
    const-string v0, "EVENT_CLEAN_CFU_STATUS"

    return-object v0

    .line 1031
    :pswitch_1
    const-string v0, "EVENT_CARRIER_CONFIG_LOADED"

    return-object v0

    .line 1033
    :pswitch_2
    const-string v0, "EVENT_QUERY_CFU_OVER_CS_AFTER_DATA_NOT_ATTACHED"

    return-object v0

    .line 1029
    :pswitch_3
    const-string v0, "EVENT_ICC_CHANGED"

    return-object v0

    .line 1027
    :pswitch_4
    const-string v0, "EVENT_SIM_RECORDS_LOADED"

    return-object v0

    .line 1025
    :pswitch_5
    const-string v0, "EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_IMS_DONE"

    return-object v0

    .line 1023
    :pswitch_6
    const-string v0, "EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_GSM_DONE"

    return-object v0

    .line 1021
    :pswitch_7
    const-string v0, "EVENT_SS_RESET"

    return-object v0

    .line 1019
    :pswitch_8
    const-string v0, "EVENT_CFU_STATUS_FROM_MD"

    return-object v0

    .line 1017
    :pswitch_9
    const-string v0, "EVENT_QUERY_CFU_OVER_CS"

    return-object v0

    .line 1015
    :pswitch_a
    const-string v0, "EVENT_CALL_FORWARDING_STATUS_FROM_MD"

    return-object v0

    .line 1013
    :pswitch_b
    const-string v0, "EVENT_GET_CALL_FORWARD_BY_IMS_DONE"

    return-object v0

    .line 1011
    :pswitch_c
    const-string v0, "EVENT_GET_CALL_FORWARD_BY_GSM_DONE"

    return-object v0

    .line 1009
    :pswitch_d
    const-string v0, "EVENT_DATA_CONNECTION_DETACHED"

    return-object v0

    .line 1007
    :pswitch_e
    const-string v0, "EVENT_DATA_CONNECTION_ATTACHED"

    return-object v0

    .line 1005
    :pswitch_f
    const-string v0, "EVENT_ICCRECORDS_READY"

    return-object v0

    .line 1003
    :pswitch_10
    const-string v0, "EVENT_REGISTERED_TO_NETWORK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist toReasonString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 982
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 997
    const-string v0, "Unknown reason, should not be here."

    return-object v0

    .line 994
    :cond_0
    const-string v0, "Clean CFU status"

    return-object v0

    .line 992
    :cond_1
    const-string v0, "Carrier config loaded"

    return-object v0

    .line 990
    :cond_2
    const-string v0, "SIM records loaded"

    return-object v0

    .line 984
    :cond_3
    const-string v0, "Data Attached"

    return-object v0

    .line 988
    :cond_4
    const-string v0, "ICCRecords ready"

    return-object v0

    .line 986
    :cond_5
    const-string v0, "CS in service"

    return-object v0
.end method

.method private blacklist unRegisterBroadReceiver()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 720
    return-void
.end method

.method private blacklist unRegisterEvent()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 689
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(ILandroid/os/Handler;)V

    .line 691
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 692
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(ILandroid/os/Handler;)V

    .line 694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 695
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 696
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 697
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 698
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForCallForwardingInfo(Landroid/os/Handler;)V

    .line 699
    return-void
.end method

.method private blacklist unSetImsCallback()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 669
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 723
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unRegisterEvent()V

    .line 724
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unRegisterBroadReceiver()V

    .line 725
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 726
    return-void
.end method

.method public blacklist getIMSRegistered()Z
    .locals 1

    .line 654
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIMSRegistered()Z

    move-result v0

    return v0
.end method

.method public blacklist getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;
    .locals 10
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.gsm.radio.ss.errormsg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "propNamePrefix":Ljava/lang/String;
    const-string v1, ""

    .line 931
    .local v1, "fullErrorMsg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 933
    .local v2, "errorMsg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 934
    .local v3, "idx":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, "propName":Ljava/lang/String;
    const-string v6, ""

    .line 937
    .local v6, "propValue":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 940
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 941
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    add-int/lit8 v3, v3, 0x1

    .line 944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 945
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 948
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fullErrorMsg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 950
    const-string v5, ""

    .line 951
    .local v5, "errorCode":Ljava/lang/String;
    sget-object v7, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v9, 0x2

    if-eq v7, v9, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    const/4 v9, 0x5

    if-eq v7, v9, :cond_1

    .line 968
    return-object v2

    .line 965
    :cond_1
    const-string v5, "503"

    .line 966
    goto :goto_1

    .line 962
    :cond_2
    const-string v5, "500"

    .line 963
    goto :goto_1

    .line 959
    :cond_3
    const-string v5, "415"

    .line 960
    goto :goto_1

    .line 956
    :cond_4
    const-string v5, "412"

    .line 957
    goto :goto_1

    .line 953
    :cond_5
    const-string v5, "409"

    .line 954
    nop

    .line 971
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 972
    return-object v2

    .line 975
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 976
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "errorMsg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 978
    return-object v2
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->toEventString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 774
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 775
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bypass msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setCarrierConfigLoaded(Z)V

    .line 788
    goto :goto_0

    .line 780
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setSimRecordsLoaded(Z)V

    .line 782
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->notifyCdmaCallForwardingIndicator()V

    .line 784
    goto :goto_0

    .line 777
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 778
    nop

    .line 795
    :goto_0
    return-void
.end method

.method public blacklist init(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 428
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    .line 429
    return-void
.end method

.method public blacklist notifyCarrierConfigLoaded()V
    .locals 1

    .line 878
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 880
    return-void
.end method

.method public blacklist setIccRecordsReady()V
    .locals 1

    .line 848
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 849
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 850
    return-void
.end method
