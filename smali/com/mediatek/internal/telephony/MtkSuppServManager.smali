.class public Lcom/mediatek/internal/telephony/MtkSuppServManager;
.super Ljava/lang/Object;
.source "MtkSuppServManager.java"


# static fields
.field private static final blacklist DBG:Z = true

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "SuppServManager"

.field private static blacklist instance:Lcom/mediatek/internal/telephony/MtkSuppServManager;

.field private static blacklist mSuppServConf:[Lcom/mediatek/internal/telephony/MtkSuppServConf;

.field private static blacklist mSuppServHelper:[Lcom/mediatek/internal/telephony/MtkSuppServHelper;

.field private static blacklist mSuppServQueueHelper:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->instance:Lcom/mediatek/internal/telephony/MtkSuppServManager;

    .line 60
    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServQueueHelper:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    .line 61
    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServHelper:[Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 62
    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServConf:[Lcom/mediatek/internal/telephony/MtkSuppServConf;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 67
    return-void
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/MtkSuppServManager;
    .locals 1

    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->instance:Lcom/mediatek/internal/telephony/MtkSuppServManager;

    return-object v0
.end method

.method public static blacklist getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;
    .locals 2
    .param p0, "phoneId"    # I

    .line 111
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServConf:[Lcom/mediatek/internal/telephony/MtkSuppServConf;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p0, :cond_0

    if-ltz p0, :cond_0

    .line 112
    aget-object v0, v0, p0

    return-object v0

    .line 114
    :cond_0
    const-string v0, "SuppServManager"

    const-string v1, "Get MtkSuppServConf instance failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .locals 2
    .param p0, "phoneId"    # I

    .line 101
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServHelper:[Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p0, :cond_0

    if-ltz p0, :cond_0

    .line 102
    aget-object v0, v0, p0

    return-object v0

    .line 104
    :cond_0
    const-string v0, "SuppServManager"

    const-string v1, "Get MtkSuppServHelper instance failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    .locals 2

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServQueueHelper:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    if-eqz v0, :cond_0

    .line 92
    return-object v0

    .line 94
    :cond_0
    const-string v0, "SuppServManager"

    const-string v1, "Get MtkSuppServQueueHelper instance failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist makeSuppServManager(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/MtkSuppServManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 74
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->instance:Lcom/mediatek/internal/telephony/MtkSuppServManager;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create MtkSuppServManager singleton instance, phones.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->instance:Lcom/mediatek/internal/telephony/MtkSuppServManager;

    goto :goto_0

    .line 83
    :cond_1
    iput-object p0, v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p1, v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 86
    :goto_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->instance:Lcom/mediatek/internal/telephony/MtkSuppServManager;

    return-object v0

    .line 75
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist supportMdAutoSetupIms()Z
    .locals 3

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 151
    const-string v0, "SuppServManager"

    const-string v1, "dispose."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 153
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 154
    return-void
.end method

.method public blacklist init()V
    .locals 7

    .line 120
    const-string v0, "SuppServManager"

    const-string v1, "Initialize MtkSuppServManager!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtkSuppServManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 128
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->makeSuppServQueueHelper(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServQueueHelper:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    .line 131
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->init(Landroid/os/Looper;)V

    .line 134
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 136
    .local v1, "numPhones":I
    new-array v2, v1, [Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    sput-object v2, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServHelper:[Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 138
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServHelper:[Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v4, Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    invoke-direct {v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    aput-object v4, v3, v2

    .line 140
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServHelper:[Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->init(Landroid/os/Looper;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    :cond_1
    new-array v2, v1, [Lcom/mediatek/internal/telephony/MtkSuppServConf;

    sput-object v2, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServConf:[Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 144
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 145
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServConf:[Lcom/mediatek/internal/telephony/MtkSuppServConf;

    new-instance v4, Lcom/mediatek/internal/telephony/MtkSuppServConf;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    invoke-direct {v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkSuppServConf;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    aput-object v4, v3, v2

    .line 146
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSuppServManager;->mSuppServConf:[Lcom/mediatek/internal/telephony/MtkSuppServConf;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->init(Landroid/os/Looper;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
