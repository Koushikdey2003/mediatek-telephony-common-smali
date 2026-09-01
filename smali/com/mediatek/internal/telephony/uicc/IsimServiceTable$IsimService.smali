.class public final enum Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
.super Ljava/lang/Enum;
.source "IsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsimService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 26
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 28
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "GBA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 30
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "HTTP_DIGEST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 31
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "GBA_LOCAL_KEY_ESTABLISHMENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 32
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_DISCOVERY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 33
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SMS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 34
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SMSR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 35
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SM_OVER_IP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 36
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "COMMUNICATION_CONTROL_BY_ISIM"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 37
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "UICC_ACCESS_IMS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 25
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v12, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v12, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    .locals 1

    .line 25
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method
