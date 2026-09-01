.class final enum Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;
.super Ljava/lang/Enum;
.source "MtkSimulatedCommandsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimFdnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum blacklist NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum blacklist REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum blacklist REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum blacklist SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 91
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v1, "REQUIRE_PIN2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 92
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v1, "REQUIRE_PUK2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v1, "SIM_PERM_LOCKED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 89
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sget-object v6, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->$VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;
    .locals 1

    .line 89
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->$VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-object v0
.end method
