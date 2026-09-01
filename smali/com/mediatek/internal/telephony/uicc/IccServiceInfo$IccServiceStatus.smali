.class public final enum Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
.super Ljava/lang/Enum;
.source "IccServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IccServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccServiceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum blacklist ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum blacklist INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum blacklist NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum blacklist NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum blacklist UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 42
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v1, "NOT_EXIST_IN_SIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 43
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v1, "NOT_EXIST_IN_USIM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 44
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v1, "ACTIVATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 45
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v1, "INACTIVATED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 46
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 41
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    sget-object v7, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    aput-object v7, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .locals 1

    .line 41
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    return-object v0
.end method
