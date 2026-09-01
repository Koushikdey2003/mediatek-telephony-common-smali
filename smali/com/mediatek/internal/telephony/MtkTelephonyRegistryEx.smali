.class public Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;
.super Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;
.source "MtkTelephonyRegistryEx.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist DBG_LOC:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkTelephonyRegistryEx"

.field private static final blacklist VDBG:Z = false

.field private static blacklist sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;-><init>()V

    .line 69
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->publish()V

    .line 70
    return-void
.end method

.method private static blacklist dataStateToStringEx(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 95
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 99
    :cond_1
    const-string v0, "SUSPENDED"

    return-object v0

    .line 98
    :cond_2
    const-string v0, "CONNECTED"

    return-object v0

    .line 97
    :cond_3
    const-string v0, "CONNECTING"

    return-object v0

    .line 96
    :cond_4
    const-string v0, "DISCONNECTED"

    return-object v0
.end method

.method private static blacklist idMatchEx(IIIII)Z
    .locals 3
    .param p0, "rSubId"    # I
    .param p1, "subId"    # I
    .param p2, "dSubId"    # I
    .param p3, "rPhoneId"    # I
    .param p4, "phoneId"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idMatchEx: rSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyRegistryEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 85
    if-ne p3, p4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 87
    :cond_1
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_3

    .line 88
    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    .line 90
    :cond_3
    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0
.end method

.method static blacklist init()Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;
    .locals 4

    .line 58
    const-class v0, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    goto :goto_0

    .line 62
    :cond_0
    const-string v1, "MtkTelephonyRegistryEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist publish()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyRegistryEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "telephony.mtkregistry"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 76
    return-void
.end method
