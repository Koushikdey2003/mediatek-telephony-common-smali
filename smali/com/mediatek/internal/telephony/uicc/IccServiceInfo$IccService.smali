.class public final enum Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;
.super Ljava/lang/Enum;
.source "IccServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IccServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist CFIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist CHV1_DISABLE_FUNCTION:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist EPLMN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist MWIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist OPL:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist OPLMNwACT:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist PLMNsel:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist PNN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist SMSP:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist SPDI:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum blacklist UNSUPPORTED_SERVICE:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "CHV1_DISABLE_FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->CHV1_DISABLE_FUNCTION:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 51
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "SPN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 52
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "PNN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->PNN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 53
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "OPL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->OPL:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 54
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "MWIS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->MWIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 55
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "CFIS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->CFIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 56
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "SPDI"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPDI:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 57
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "EPLMN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->EPLMN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 58
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "SMSP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SMSP:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 59
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "FDN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 61
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "PLMNsel"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->PLMNsel:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 62
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "OPLMNwACT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->OPLMNwACT:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 64
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "UNSUPPORTED_SERVICE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->UNSUPPORTED_SERVICE:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 49
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    sget-object v15, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->CHV1_DISABLE_FUNCTION:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v15, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->PNN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->OPL:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->MWIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->CFIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPDI:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->EPLMN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SMSP:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->PLMNsel:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->OPLMNwACT:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;
    .locals 1

    .line 49
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    return-object v0
.end method


# virtual methods
.method public blacklist getIndex()I
    .locals 3

    .line 67
    const/4 v0, -0x1

    .line 68
    .local v0, "nIndex":I
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$1;->$SwitchMap$com$mediatek$internal$telephony$uicc$IccServiceInfo$IccService:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    const/16 v0, 0xa

    .line 109
    goto :goto_0

    .line 104
    :pswitch_1
    const/16 v0, 0xb

    .line 105
    goto :goto_0

    .line 101
    :pswitch_2
    const/16 v0, 0xa

    .line 102
    goto :goto_0

    .line 97
    :pswitch_3
    const/16 v0, 0x9

    .line 98
    goto :goto_0

    .line 94
    :pswitch_4
    const/16 v0, 0x8

    .line 95
    goto :goto_0

    .line 91
    :pswitch_5
    const/4 v0, 0x7

    .line 92
    goto :goto_0

    .line 88
    :pswitch_6
    const/4 v0, 0x6

    .line 89
    goto :goto_0

    .line 85
    :pswitch_7
    const/4 v0, 0x5

    .line 86
    goto :goto_0

    .line 82
    :pswitch_8
    const/4 v0, 0x4

    .line 83
    goto :goto_0

    .line 79
    :pswitch_9
    const/4 v0, 0x3

    .line 80
    goto :goto_0

    .line 76
    :pswitch_a
    const/4 v0, 0x2

    .line 77
    goto :goto_0

    .line 73
    :pswitch_b
    const/4 v0, 0x1

    .line 74
    goto :goto_0

    .line 70
    :pswitch_c
    const/4 v0, 0x0

    .line 71
    nop

    .line 113
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
