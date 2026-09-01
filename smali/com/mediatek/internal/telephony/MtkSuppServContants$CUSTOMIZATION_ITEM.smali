.class public final enum Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
.super Ljava/lang/Enum;
.source "MtkSuppServContants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOMIZATION_ITEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum blacklist TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 17

    .line 45
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "GSM_UT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 46
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "TBCLIR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 47
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "IMS_NW_CW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 48
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NOT_SUPPORT_XCAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 49
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NOT_SUPPORT_OCB"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 50
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "ENABLE_XCAP_HTTP_RESPONSE_409"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 51
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "TRANSFER_XCAP_404"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 52
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NOT_SUPPORT_WFC_UT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 53
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NOT_SUPPORT_CALL_IDENTITY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 54
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "RE_REGISTER_FOR_CF"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 55
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "SUPPORT_SAVE_CF_NUMBER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 56
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "QUERY_CFU_AGAIN_AFTER_SET"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 57
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NEED_CHECK_DATA_ENABLE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 58
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NEED_CHECK_DATA_ROAMING"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 59
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "NEED_CHECK_IMS_WHEN_ROAMING"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 44
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    sget-object v16, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v16, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    aput-object v2, v1, v14

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->$VALUES:[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .locals 1

    .line 44
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->$VALUES:[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    return-object v0
.end method
