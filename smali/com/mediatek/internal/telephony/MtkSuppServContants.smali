.class public Lcom/mediatek/internal/telephony/MtkSuppServContants;
.super Ljava/lang/Object;
.source "MtkSuppServContants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    }
.end annotation


# static fields
.field public static final blacklist SYS_PROP_BOOL_CONFIG:Ljava/lang/String; = "persist.vendor.ss.cfg.boolconfig"

.field public static final blacklist SYS_PROP_BOOL_VALUE:Ljava/lang/String; = "persist.vendor.ss.cfg.boolvalue"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 63
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$1;->$SwitchMap$com$mediatek$internal$telephony$MtkSuppServContants$CUSTOMIZATION_ITEM:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    const-string v0, "UNKNOWN_ITEM"

    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "NEED_CHECK_IMS_WHEN_ROAMING"

    return-object v0

    .line 91
    :pswitch_1
    const-string v0, "NEED_CHECK_DATA_ROAMING"

    return-object v0

    .line 89
    :pswitch_2
    const-string v0, "NEED_CHECK_DATA_ENABLE"

    return-object v0

    .line 87
    :pswitch_3
    const-string v0, "NOT_SUPPORT_WFC_UT"

    return-object v0

    .line 85
    :pswitch_4
    const-string v0, "NOT_SUPPORT_OCB"

    return-object v0

    .line 83
    :pswitch_5
    const-string v0, "QUERY_CFU_AGAIN_AFTER_SET"

    return-object v0

    .line 81
    :pswitch_6
    const-string v0, "SUPPORT_SAVE_CF_NUMBER"

    return-object v0

    .line 79
    :pswitch_7
    const-string v0, "RE_REGISTER_FOR_CF"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "NOT_SUPPORT_CALL_IDENTITY"

    return-object v0

    .line 75
    :pswitch_9
    const-string v0, "TRANSFER_XCAP_404"

    return-object v0

    .line 73
    :pswitch_a
    const-string v0, "ENABLE_XCAP_HTTP_RESPONSE_409"

    return-object v0

    .line 71
    :pswitch_b
    const-string v0, "IMS_NW_CW"

    return-object v0

    .line 69
    :pswitch_c
    const-string v0, "TBCLIR"

    return-object v0

    .line 67
    :pswitch_d
    const-string v0, "NOT_SUPPORT_XCAP"

    return-object v0

    .line 65
    :pswitch_e
    const-string v0, "GSM_UT_SUPPORT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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
