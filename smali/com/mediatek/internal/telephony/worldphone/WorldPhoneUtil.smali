.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final blacklist ACTIVE_MD_TYPE_LTG:I = 0x4

.field private static final blacklist ACTIVE_MD_TYPE_LWCG:I = 0x5

.field private static final blacklist ACTIVE_MD_TYPE_LWG:I = 0x3

.field private static final blacklist ACTIVE_MD_TYPE_LfWG:I = 0x7

.field private static final blacklist ACTIVE_MD_TYPE_LtTG:I = 0x6

.field private static final blacklist ACTIVE_MD_TYPE_TG:I = 0x2

.field private static final blacklist ACTIVE_MD_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist ACTIVE_MD_TYPE_WG:I = 0x1

.field public static final blacklist CARD_TYPE_CSIM:I = 0x8

.field public static final blacklist CARD_TYPE_NONE:I = 0x0

.field public static final blacklist CARD_TYPE_RUIM:I = 0x4

.field public static final blacklist CARD_TYPE_SIM:I = 0x1

.field public static final blacklist CARD_TYPE_USIM:I = 0x2

.field public static final blacklist CSFB_ON_SLOT:I = -0x1

.field private static final blacklist IS_WORLD_MODE_SUPPORT:Z

.field private static final blacklist PROJECT_SIM_NUM:I

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final blacklist RADIO_TECH_MODE_CSFB:I = 0x2

.field public static final blacklist RADIO_TECH_MODE_SVLTE:I = 0x3

.field public static final blacklist RADIO_TECH_MODE_UNKNOWN:I = 0x1

.field public static final blacklist SVLTE_ON_SLOT_0:I = 0x0

.field public static final blacklist SVLTE_ON_SLOT_1:I = 0x1

.field public static final blacklist SVLTE_PROP:Ljava/lang/String; = "persist.vendor.radio.svlte_slot"

.field public static final blacklist UTRAN_DIVISION_DUPLEX_MODE_FDD:I = 0x1

.field public static final blacklist UTRAN_DIVISION_DUPLEX_MODE_TDD:I = 0x2

.field public static final blacklist UTRAN_DIVISION_DUPLEX_MODE_UNKNOWN:I

.field private static blacklist mC2KWPCardtype:[I

.field private static blacklist sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sCardModes:[I

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static blacklist sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field public static blacklist sSimSwitching:Z

.field public static blacklist sToModem:I

.field private static blacklist sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 71
    nop

    .line 72
    const-string v0, "ro.vendor.mtk_md_world_mode_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 74
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 76
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 79
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sToModem:I

    .line 80
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sSimSwitching:Z

    .line 92
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->initCardModes()[I

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sCardModes:[I

    .line 98
    const-string v1, "vendor.gsm.ril.fulluicctype"

    const-string v2, "vendor.gsm.ril.fulluicctype.2"

    const-string v3, "vendor.gsm.ril.fulluicctype.3"

    const-string v4, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->mC2KWPCardtype:[I

    .line 115
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 122
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    goto :goto_1

    .line 127
    :cond_1
    const-string v0, "DefaultPhone = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 129
    :goto_1
    return-void
.end method

.method public static blacklist get3GDivisionDuplexMode()I
    .locals 4

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "duplexMode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveModemType()I

    move-result v1

    .line 239
    .local v1, "activeMdType":I
    packed-switch v1, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :pswitch_0
    const/4 v0, 0x2

    .line 250
    goto :goto_0

    .line 244
    :pswitch_1
    const/4 v0, 0x1

    .line 245
    nop

    .line 255
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get3GDivisionDuplexMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 256
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getActiveModemType()I
    .locals 5

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "modemType":I
    const/4 v1, 0x0

    .line 262
    .local v1, "activeMdType":I
    const/4 v2, -0x1

    .line 263
    .local v2, "activeMode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v3

    if-nez v3, :cond_4

    .line 264
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 265
    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    .line 279
    const/4 v1, 0x0

    .line 280
    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x4

    .line 277
    goto :goto_0

    .line 273
    :cond_1
    const/4 v1, 0x3

    .line 274
    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x2

    .line 271
    goto :goto_0

    .line 267
    :cond_3
    const/4 v1, 0x1

    .line 268
    goto :goto_0

    .line 283
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->getWorldMode()I

    move-result v0

    .line 284
    const/4 v3, 0x0

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    const-string v4, "vendor.ril.nw.worldmode.activemode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 287
    packed-switch v0, :pswitch_data_0

    .line 323
    const/4 v1, 0x0

    goto :goto_0

    .line 320
    :pswitch_0
    const/4 v1, 0x7

    .line 321
    goto :goto_0

    .line 317
    :pswitch_1
    const/4 v1, 0x6

    .line 318
    goto :goto_0

    .line 313
    :pswitch_2
    const/4 v1, 0x5

    .line 314
    goto :goto_0

    .line 300
    :pswitch_3
    if-lez v2, :cond_6

    .line 301
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 303
    const/4 v1, 0x3

    goto :goto_0

    .line 304
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 306
    const/4 v1, 0x4

    goto :goto_0

    .line 296
    :pswitch_4
    const/4 v1, 0x3

    .line 297
    goto :goto_0

    .line 292
    :pswitch_5
    const/4 v1, 0x4

    .line 293
    nop

    .line 327
    :cond_6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveModemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 328
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist getActiveSvlteModeSlotId()I
    .locals 4

    .line 400
    const/4 v0, -0x1

    .line 401
    .local v0, "svlteSlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    const-string v1, "[getActiveSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 403
    return v0

    .line 405
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sCardModes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 406
    aget v2, v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 407
    move v0, v1

    .line 405
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getActiveSvlteModeSlotId] slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 411
    return v0
.end method

.method public static blacklist getC2KWPCardType()[I
    .locals 3

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->mC2KWPCardtype:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 388
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getFullCardType(I)I

    move-result v2

    aput v2, v1, v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getC2KWPCardType mC2KWPCardtype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->mC2KWPCardtype:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static blacklist getFullCardType(I)I
    .locals 6
    .param p0, "slotId"    # I

    .line 364
    if-ltz p0, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_2

    .line 368
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "cardType":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 371
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 372
    aget-object v4, v1, v3

    const-string v5, "USIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 374
    :cond_1
    aget-object v4, v1, v3

    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    :cond_2
    aget-object v4, v1, v3

    const-string v5, "CSIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 377
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 378
    :cond_3
    aget-object v4, v1, v3

    const-string v5, "RUIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    or-int/lit8 v2, v2, 0x4

    .line 371
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFullCardType fullType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cardType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 383
    return v2

    .line 365
    .end local v0    # "cardType":Ljava/lang/String;
    .end local v1    # "appType":[Ljava/lang/String;
    .end local v2    # "fullType":I
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFullCardType invalid slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getMajorSim()I
    .locals 5

    .line 155
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v0

    const/16 v1, -0x63

    if-nez v0, :cond_1

    .line 156
    const-string v0, "persist.vendor.radio.simswitch"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "currMajorSim":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMajorSim]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WORLDMODE"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v1

    .line 172
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 173
    return v1

    .line 176
    .end local v0    # "currMajorSim":Ljava/lang/String;
    :cond_1
    const-string v0, "[getMajorSim]: radio capability is switching"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 177
    return v1
.end method

.method public static blacklist getModemSelectionMode()I
    .locals 2

    .line 182
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 183
    const-string v0, "sContext = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 184
    return v1

    .line 186
    :cond_0
    const-string v0, "persist.vendor.radio.wm_selectmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getProjectSimNum()I
    .locals 1

    .line 151
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static blacklist getSimLockedState(I)Z
    .locals 1
    .param p0, "simApplicateionState"    # I

    .line 433
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 438
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getToModemType()I
    .locals 1

    .line 448
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sToModem:I

    return v0
.end method

.method public static blacklist getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .locals 1

    .line 144
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_0

    .line 145
    const-string v0, "sWorldPhone is null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 147
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method private static blacklist initCardModes()[I
    .locals 4

    .line 344
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [I

    .line 345
    .local v0, "cardModes":[I
    const-string v1, "persist.vendor.radio.svlte_slot"

    const-string v2, "3,2,2,2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "svlteType":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 347
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 348
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_1

    .line 350
    :cond_0
    const/4 v3, 0x1

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 356
    .end local v0    # "cardModes":[I
    .end local v1    # "svlteType":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WORLDMODE"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist isC2kSupport()Z
    .locals 1

    .line 424
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v0

    return v0
.end method

.method public static blacklist isCdmaLteDcSupport()Z
    .locals 3

    .line 415
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isLteSupport()Z
    .locals 1

    .line 194
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isLteFddSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isLteTddSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isSimSwitching()Z
    .locals 1

    .line 452
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sSimSwitching:Z

    return v0
.end method

.method public static blacklist isWorldModeSupport()Z
    .locals 1

    .line 223
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    return v0
.end method

.method public static blacklist isWorldPhoneSupport()Z
    .locals 1

    .line 190
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isWcdmaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isTdscdmaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isWorldPhoneSwitching()Z
    .locals 1

    .line 332
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v0

    return v0

    .line 335
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPP_UTIL]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method public static blacklist makeWorldPhoneManager()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "Factory World mode support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->init()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "Factory World phone support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "Factory World phone not support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void
.end method

.method public static blacklist regionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # I

    .line 199
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 210
    const-string v0, "Invalid Region"

    .local v0, "regionString":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v0    # "regionString":Ljava/lang/String;
    :cond_0
    const-string v0, "REGION_FOREIGN"

    .line 208
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "regionString":Ljava/lang/String;
    :cond_1
    const-string v0, "REGION_DOMESTIC"

    .line 205
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0    # "regionString":Ljava/lang/String;
    :cond_2
    const-string v0, "REGION_UNKNOWN"

    .line 202
    .restart local v0    # "regionString":Ljava/lang/String;
    nop

    .line 213
    :goto_0
    return-object v0
.end method

.method public static blacklist saveToModemType(I)V
    .locals 0
    .param p0, "modemType"    # I

    .line 444
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sToModem:I

    .line 445
    return-void
.end method

.method public static blacklist setSimSwitchingFlag(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 456
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sSimSwitching:Z

    .line 457
    return-void
.end method


# virtual methods
.method public blacklist notifyRadioCapabilityChange(I)V
    .locals 0
    .param p1, "capailitySimId"    # I

    .line 220
    return-void
.end method

.method public blacklist setModemSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 217
    return-void
.end method
