.class final enum Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;
.super Ljava/lang/Enum;
.source "MtkSimulatedCommandsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field public static final enum blacklist NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field public static final enum blacklist REQUIRE_PIN:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field public static final enum blacklist REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field public static final enum blacklist SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 83
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 84
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const-string v1, "REQUIRE_PIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PIN:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 85
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const-string v1, "REQUIRE_PUK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 86
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const-string v1, "SIM_PERM_LOCKED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 82
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v6, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PIN:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->$VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;
    .locals 1

    .line 82
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->$VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    return-object v0
.end method
