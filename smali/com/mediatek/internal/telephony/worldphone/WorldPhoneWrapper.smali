.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;
.super Ljava/lang/Object;
.source "WorldPhoneWrapper.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static blacklist sOperatorSpec:I

.field private static blacklist sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

.field private static blacklist sWorldPhoneUtil:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sOperatorSpec:I

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 46
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneUtil:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static blacklist getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .locals 3

    .line 52
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_2

    .line 53
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "optr":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "OP01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sOperatorSpec:I

    goto :goto_0

    .line 57
    :cond_0
    const/4 v2, 0x0

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sOperatorSpec:I

    .line 59
    :goto_0
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneUtil:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;

    .line 60
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sOperatorSpec:I

    if-ne v2, v1, :cond_1

    .line 61
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    goto :goto_1

    .line 62
    :cond_1
    if-nez v2, :cond_2

    .line 63
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 66
    .end local v0    # "optr":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sOperatorSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sOperatorSpec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLteSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->logd(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPO_WRAPPER]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method


# virtual methods
.method public blacklist notifyRadioCapabilityChange(I)V
    .locals 0
    .param p1, "capailitySimId"    # I

    .line 81
    return-void
.end method

.method public blacklist setModemSelectionMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 73
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sOperatorSpec:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "Unknown World Phone Spec"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->sWorldPhoneInstance:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->setModemSelectionMode(II)V

    .line 78
    :goto_1
    return-void
.end method
