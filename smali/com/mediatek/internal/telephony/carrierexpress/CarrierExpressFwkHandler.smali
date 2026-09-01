.class public Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;
.super Landroid/os/Handler;
.source "CarrierExpressFwkHandler.java"


# static fields
.field private static final blacklist ACTION_CXP_RESET_MODEM:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_reset_modem"

.field private static final blacklist ACTION_CXP_SET_VENDOR_PROP:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_set_vendor_prop"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CarrierExpress"

.field private static blacklist sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;


# instance fields
.field private final blacklist mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    new-instance v0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;-><init>(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get default phone from PhoneFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierExpress"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default phone is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mContext:Landroid/content/Context;

    .line 79
    const-string v1, "missing Context"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.common.carrierexpress.cxp_reset_modem"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.mediatek.common.carrierexpress.cxp_set_vendor_prop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkRIL;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 58
    iput-object p1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->startResetModem()V

    return-void
.end method

.method public static blacklist init()V
    .locals 4

    .line 90
    const-class v0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    goto :goto_0

    .line 94
    :cond_0
    const-string v1, "CarrierExpress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist startResetModem()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "CarrierExpress"

    if-eqz v0, :cond_0

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 135
    const-string v0, "Reset modem"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_0
    const-string v0, "MtkRIL is null, cannot reset modem"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist dispose()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    return-void
.end method
