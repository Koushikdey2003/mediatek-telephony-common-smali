.class public Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;
.super Ljava/lang/Object;
.source "MtkRsuSmlFactory.java"


# static fields
.field private static final blacklist OP08_POLICY:I = 0xf

.field private static final blacklist TAG:Ljava/lang/String; = "MtkRsuSmlFactory"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAndMakeRsuSml(Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .locals 1
    .param p0, "rsu"    # Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "operator"    # Ljava/lang/String;

    .line 108
    if-nez p0, :cond_0

    .line 109
    invoke-static {p1, p2, p3}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->isOperatorRsu(Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    return-object p0

    .line 114
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;-><init>()V

    return-object v0
.end method

.method public static blacklist isOperatorRsu(Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rsu"    # Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .param p1, "operator"    # Ljava/lang/String;

    .line 81
    const-string v0, ""

    .line 82
    .local v0, "op":Ljava/lang/String;
    instance-of v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 85
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 119
    const-string v0, "MtkRsuSmlFactory"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public static blacklist makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 70
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    .line 71
    .local v0, "policy":I
    const-string v1, "ro.vendor.sim_me_lock_mode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "mode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RSU-SIMLOCK] mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ci="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->logD(Ljava/lang/String;)V

    .line 73
    const-string v2, "800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v2

    return-object v2

    .line 74
    :cond_1
    :goto_0
    new-instance v2, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v2
.end method

.method public static blacklist makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "operator"    # Ljava/lang/String;

    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "OP08"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "Create new OP08 rsu instance."

    invoke-static {v0}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->logD(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
