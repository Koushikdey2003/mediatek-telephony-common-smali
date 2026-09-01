.class public Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
.super Landroid/os/Handler;
.source "SmartDataSwitchAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist EVENT_CALL_ENDED:I = 0x14

.field private static final blacklist EVENT_CALL_STARTED:I = 0xa

.field private static final blacklist EVENT_ID_INTVL:I = 0xa

.field private static final blacklist EVENT_SERVICE_STATE_CHANGED:I = 0x28

.field private static final blacklist EVENT_SRVCC_STATE_CHANGED:I = 0x1e

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SmartDataSwitch"

.field private static final blacklist TEMP_DATA_MODE:Ljava/lang/String; = "temp_data_mode"

.field public static final blacklist TEMP_DATA_MODE_DEFAULT:I = 0x0

.field public static final blacklist TEMP_DATA_MODE_EXCEPT_CSFB:I = 0x2

.field public static final blacklist TEMP_DATA_MODE_ONLY_VOLTE:I = 0x1

.field private static blacklist mOperatorSpec:Ljava/lang/String;

.field private static blacklist sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;


# instance fields
.field private final blacklist PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

.field protected blacklist mInCallPhoneId:I

.field private blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected blacklist mPhoneNum:I

.field protected blacklist mPhones:[Lcom/android/internal/telephony/Phone;

.field private final blacklist mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mResolver:Landroid/content/ContentResolver;

.field private blacklist mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mInCallPhoneId:I

    .line 73
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 77
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    const-string v0, "persist.sys.oplus.radio.data_enable_temp_dds"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

    .line 157
    const-string v0, " is created"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 158
    iput-object p2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 159
    array-length v0, p2

    iput v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    .line 160
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mResolver:Landroid/content/ContentResolver;

    .line 162
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, "OM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mOperatorSpec:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->registerEvents()V

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->initOpSmartDataSwitchAssistant(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0, p0}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->init(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V

    .line 174
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 176
    const-string v0, "init done"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)Lcom/android/internal/telephony/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 60
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method

.method private blacklist findPhoneById(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "phoneId"    # I

    .line 420
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const-string v0, "findPhoneById: invalid phoneId"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    return-object v0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    .locals 2

    .line 150
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    if-eqz v0, :cond_0

    .line 153
    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not be called before sSmartDataSwitchAssistant"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private blacklist getWifiOffLoadService()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_2

    .line 342
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 343
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 344
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_1

    .line 346
    :cond_0
    const-string v1, "mwis"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_1

    .line 349
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_0

    .line 351
    :cond_1
    const-string v1, "getWifiOffLoadService: No MwiService exist"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    goto :goto_1

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiOffLoadService: can\'t get MwiService error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 359
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method private blacklist initOpSmartDataSwitchAssistant(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    nop

    .line 182
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 183
    nop

    .line 184
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSmartDataSwitchAssistantOpExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mSmartDataOpExt init fail"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist isSmartDataSwitchSupport()Z
    .locals 2

    .line 363
    const-string v0, "persist.vendor.radio.smart.data.switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 453
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method protected static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 459
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method protected static blacklist logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 465
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method protected static blacklist logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 447
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public static blacklist makeSmartDataSwitchAssistant(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 136
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 140
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->updatePhones([Lcom/android/internal/telephony/Phone;)V

    .line 145
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeSDSA: X sSDSA ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist registerEvents()V
    .locals 1

    .line 199
    const-string v0, "registerEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private blacklist setInCallPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 438
    iput p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mInCallPhoneId:I

    .line 439
    return-void
.end method

.method private blacklist unregisterEvents()V
    .locals 1

    .line 203
    const-string v0, "unregisterEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 204
    return-void
.end method


# virtual methods
.method public blacklist checkIsSwitchAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 392
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const-string v0, "checkIsSwitchAvailable: not have TempDataSwitchCapability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->checkIsSwitchAvailable(I)Z

    move-result v0

    return v0
.end method

.method public blacklist dispose()V
    .locals 1

    .line 192
    const-string v0, "SmartDataSwitchAssistant.dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregisterEvents()V

    .line 196
    :cond_0
    return-void
.end method

.method public blacklist getAospTemporaryDataSettings(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 405
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 406
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    return v1

    .line 411
    :cond_0
    const-string v2, "persist.sys.oplus.radio.data_enable_temp_dds"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    const-string v2, "PROPERTY_TEMP_DDSSWITCH is true"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 413
    return v1

    .line 416
    :cond_1
    return v3
.end method

.method public blacklist getInCallPhoneId()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mInCallPhoneId:I

    return v0
.end method

.method public blacklist getTemporaryDataMode()I
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "temp_data_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, "mode":I
    return v0
.end method

.method public blacklist getVoiceNetworkType(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 299
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 300
    const-string v0, "updateCallType() invalid Phone Id!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    return v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    return v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v0, v0, 0xa

    .line 211
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    sub-int/2addr v1, v0

    .line 213
    .local v1, "eventId":I
    const/16 v2, 0x1e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onServiceStateChanged(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    const-string v2, "EVENT_SERVICE_STATE_CHANGED: notify"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 215
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onSrvccStateChanged()V

    .line 217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 218
    nop

    .line 229
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist isVoLteCalling(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 291
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v0, p1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v1, :cond_0

    .line 292
    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    return v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoLteCalling: mPhones["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifcCalling(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist onDsdaStateChanged()V
    .locals 1

    .line 400
    const-string v0, "onDsdaStateChanged: notify"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 402
    return-void
.end method

.method public blacklist onHandoverToCellular()V
    .locals 1

    .line 321
    const-string v0, "onHandoverToCellular()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public blacklist onHandoverToWifi()V
    .locals 1

    .line 316
    const-string v0, "onHandoverToWifi()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public blacklist onServiceStateChanged(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onServiceStateChanged(I)Z

    move-result v0

    return v0
.end method

.method public blacklist onSrvccStateChanged()V
    .locals 1

    .line 307
    const-string v0, "onSrvccStateChanged()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onSrvccStateChanged()V

    .line 309
    return-void
.end method

.method public blacklist regImsHandoverEvent()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getWifiOffLoadService()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_2

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;-><init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "regImsHandoverEvent(): RemoteException mWfoService()"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist regServiceStateChangedEvent()V
    .locals 4

    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x28

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist regSrvccEvent()V
    .locals 4

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist registerReEvaluateEvent(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "phoneId"    # I

    .line 367
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const-string v0, "registerReEvaluateEvent: not have TempDataSwitchCapability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 369
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    const-string v1, "registerReEvaluateEvent()"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->setInCallPhoneId(I)V

    .line 374
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->regImsHandoverEvent()V

    .line 376
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v1}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onCallStarted()V

    .line 377
    return-void
.end method

.method public blacklist unregImsHandoverEvent()V
    .locals 2

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unregImsHandoverEvent: RemoteException mWfoService()"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist unregServiceStateChangedEvent()V
    .locals 2

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist unregSrvccEvent()V
    .locals 2

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist unregisterReEvaluateEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 380
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const-string v0, "unregisterReEvaluateEvent: not have TempDataSwitchCapability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 382
    return-void

    .line 384
    :cond_0
    const-string v0, "unregisterReEvaluateEvent()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 385
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->setInCallPhoneId(I)V

    .line 386
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregImsHandoverEvent()V

    .line 388
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onCallEnded()V

    .line 389
    return-void
.end method

.method public blacklist updatePhones([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhones: prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    array-length v1, p1

    if-le v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    .line 127
    .local v0, "prevPhoneNum":I
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 128
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->registerEvents()V

    .line 132
    :cond_1
    return-void
.end method
