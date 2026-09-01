.class public Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.super Landroid/os/Handler;
.source "WorldMode.java"


# static fields
.field static final blacklist ACTION_ADB_SWITCH_WORLD_MODE:Ljava/lang/String; = "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

.field public static final blacklist ACTION_WORLD_MODE_CHANGED:Ljava/lang/String; = "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

.field static final blacklist EVENT_RADIO_ON_1:I = 0x1

.field static final blacklist EVENT_RADIO_ON_2:I = 0x2

.field static final blacklist EVENT_RADIO_ON_3:I = 0x3

.field static final blacklist EVENT_RADIO_ON_4:I = 0x4

.field static final blacklist EXTRA_WORLDMODE:Ljava/lang/String; = "worldMode"

.field public static final blacklist EXTRA_WORLD_MODE_CHANGE_STATE:Ljava/lang/String; = "worldModeState"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "WORLDMODE"

.field public static final blacklist MASK_CDMA:I = 0x20

.field public static final blacklist MASK_GSM:I = 0x1

.field public static final blacklist MASK_LTEFDD:I = 0x10

.field public static final blacklist MASK_LTETDD:I = 0x8

.field public static final blacklist MASK_TDSCDMA:I = 0x2

.field public static final blacklist MASK_WCDMA:I = 0x4

.field public static final blacklist MD_WM_CHANGED_END:I = 0x1

.field public static final blacklist MD_WM_CHANGED_START:I = 0x0

.field public static final blacklist MD_WM_CHANGED_UNKNOWN:I = -0x1

.field public static final blacklist MD_WORLD_MODE_LCTG:I = 0x10

.field public static final blacklist MD_WORLD_MODE_LFCTG:I = 0x15

.field public static final blacklist MD_WORLD_MODE_LFTG:I = 0x14

.field public static final blacklist MD_WORLD_MODE_LFWCG:I = 0xf

.field public static final blacklist MD_WORLD_MODE_LFWG:I = 0xe

.field public static final blacklist MD_WORLD_MODE_LTCTG:I = 0x11

.field public static final blacklist MD_WORLD_MODE_LTG:I = 0x8

.field public static final blacklist MD_WORLD_MODE_LTTG:I = 0xd

.field public static final blacklist MD_WORLD_MODE_LTWCG:I = 0x13

.field public static final blacklist MD_WORLD_MODE_LTWG:I = 0x12

.field public static final blacklist MD_WORLD_MODE_LWCG:I = 0xb

.field public static final blacklist MD_WORLD_MODE_LWCTG:I = 0xc

.field public static final blacklist MD_WORLD_MODE_LWG:I = 0x9

.field public static final blacklist MD_WORLD_MODE_LWTG:I = 0xa

.field public static final blacklist MD_WORLD_MODE_UNKNOWN:I = 0x0

.field private static final blacklist PROJECT_SIM_NUM:I

.field static final blacklist WORLD_MODE_RESULT_ERROR:I = 0x65

.field static final blacklist WORLD_MODE_RESULT_SUCCESS:I = 0x64

.field static final blacklist WORLD_MODE_RESULT_WM_ID_NOT_SUPPORT:I = 0x66

.field private static blacklist sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sActiveWorldMode:I

.field private static blacklist sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sCurrentWorldMode:I

.field private static blacklist sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

.field private static blacklist sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sSwitchingState:Z

.field private static blacklist sUpdateSwitchingFlag:I

.field private static blacklist smCi:[Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private final blacklist mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 114
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    .line 115
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActiveWorldMode:I

    .line 117
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 118
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 119
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    new-array v3, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 120
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    .line 121
    new-array v1, v2, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 122
    new-array v1, v2, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 123
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 161
    new-instance v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor Init world mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "sSwitchingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 130
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 131
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 132
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v2, v1, v0

    .line 133
    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    goto :goto_1

    .line 142
    :cond_1
    const-string v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 144
    :goto_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method public static blacklist WorldModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "worldMode"    # I

    .line 541
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 542
    const-string v0, "uTLG"

    .local v0, "worldModeString":Ljava/lang/String;
    goto/16 :goto_0

    .line 543
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 544
    const-string v0, "uLWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 545
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_1
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    .line 546
    const-string v0, "uLWTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_2
    const/16 v0, 0xb

    if-ne p0, v0, :cond_3

    .line 548
    const-string v0, "uLWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 549
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_3
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4

    .line 550
    const-string v0, "uLWTCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 551
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_4
    const/16 v0, 0xd

    if-ne p0, v0, :cond_5

    .line 552
    const-string v0, "LtTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 553
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_5
    const/16 v0, 0xe

    if-ne p0, v0, :cond_6

    .line 554
    const-string v0, "LfWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 555
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_6
    const/16 v0, 0xf

    if-ne p0, v0, :cond_7

    .line 556
    const-string v0, "uLfWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 557
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_7
    const/16 v0, 0x10

    if-ne p0, v0, :cond_8

    .line 558
    const-string v0, "uLCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_8
    const/16 v0, 0x11

    if-ne p0, v0, :cond_9

    .line 560
    const-string v0, "uLtCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 561
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_9
    const/16 v0, 0x12

    if-ne p0, v0, :cond_a

    .line 562
    const-string v0, "uLtWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 563
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_a
    const/16 v0, 0x13

    if-ne p0, v0, :cond_b

    .line 564
    const-string v0, "uLtWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 565
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_b
    const/16 v0, 0x14

    if-ne p0, v0, :cond_c

    .line 566
    const-string v0, "uLfTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 567
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_c
    const/16 v0, 0x15

    if-ne p0, v0, :cond_d

    .line 568
    const-string v0, "uLfCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 570
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_d
    const-string v0, "Invalid world mode"

    .line 573
    .restart local v0    # "worldModeString":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 55
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return p0
.end method

.method static synthetic blacklist access$200()I
    .locals 1

    .line 55
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    return v0
.end method

.method private static blacklist checkWmCapability(II)Z
    .locals 5
    .param p0, "worldMode"    # I
    .param p1, "bnadMode"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "iRat":I
    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    .line 221
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 225
    :cond_0
    const/16 v1, 0xd

    if-ne p0, v1, :cond_1

    .line 226
    const/16 v0, 0xb

    goto :goto_0

    .line 229
    :cond_1
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    .line 230
    const/16 v0, 0x1f

    goto :goto_0

    .line 235
    :cond_2
    const/16 v1, 0xe

    if-ne p0, v1, :cond_3

    .line 236
    const/16 v0, 0x15

    goto :goto_0

    .line 239
    :cond_3
    const/16 v1, 0x9

    if-ne p0, v1, :cond_4

    .line 240
    const/16 v0, 0x1d

    goto :goto_0

    .line 244
    :cond_4
    const/16 v1, 0xc

    if-ne p0, v1, :cond_5

    .line 245
    const/16 v0, 0x3f

    goto :goto_0

    .line 251
    :cond_5
    const/16 v1, 0x10

    if-ne p0, v1, :cond_6

    .line 252
    const/16 v0, 0x3b

    goto :goto_0

    .line 257
    :cond_6
    const/16 v1, 0x11

    if-ne p0, v1, :cond_7

    .line 258
    const/16 v0, 0x2b

    goto :goto_0

    .line 262
    :cond_7
    const/16 v1, 0xf

    if-ne p0, v1, :cond_8

    .line 263
    const/16 v0, 0x35

    goto :goto_0

    .line 267
    :cond_8
    const/16 v1, 0xb

    if-ne p0, v1, :cond_9

    .line 268
    const/16 v0, 0x3d

    goto :goto_0

    .line 273
    :cond_9
    const/16 v1, 0x12

    if-ne p0, v1, :cond_a

    .line 274
    const/16 v0, 0xd

    goto :goto_0

    .line 277
    :cond_a
    const/16 v1, 0x13

    if-ne p0, v1, :cond_b

    .line 278
    const/16 v0, 0x2d

    goto :goto_0

    .line 282
    :cond_b
    const/16 v1, 0x14

    if-ne p0, v1, :cond_c

    .line 283
    const/16 v0, 0x13

    goto :goto_0

    .line 286
    :cond_c
    const/16 v1, 0x15

    if-ne p0, v1, :cond_d

    .line 287
    const/16 v0, 0x33

    .line 292
    :cond_d
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_e

    .line 293
    or-int/lit8 p1, p1, 0x20

    .line 295
    :cond_e
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v1

    if-ne v2, v1, :cond_10

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v4, v1, :cond_f

    and-int/lit8 v1, v0, 0x2

    if-ne v3, v1, :cond_10

    .line 297
    :cond_f
    or-int/lit8 v1, p1, 0x4

    or-int/lit8 p1, v1, 0x2

    .line 300
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWmCapability: modem="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bnadMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 304
    and-int v1, v0, p1

    if-ne v0, v1, :cond_11

    and-int/lit8 v1, v0, 0x20

    and-int/lit8 v3, p1, 0x20

    if-ne v1, v3, :cond_11

    .line 306
    return v2

    .line 308
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getWorldMode()I
    .locals 2

    .line 458
    nop

    .line 460
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, "vendor.ril.active.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 462
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static blacklist init()V
    .locals 3

    .line 152
    const-class v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 158
    :goto_0
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist isWorldModeSwitching()Z
    .locals 1

    .line 532
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WorldMode]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method public static blacklist resetSwitchingState(I)Z
    .locals 3
    .param p0, "state"    # I

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset sUpdateSwitchingFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset sSwitchingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 526
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist setWorldMode(I)V
    .locals 3
    .param p0, "worldMode"    # I

    .line 366
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 367
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setWorldMode]protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 368
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 370
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    goto :goto_0

    .line 372
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 374
    :goto_0
    return-void
.end method

.method private static blacklist setWorldMode(Lcom/mediatek/internal/telephony/MtkRIL;I)V
    .locals 2
    .param p0, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p1, "worldMode"    # I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setWorldMode] worldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 396
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    if-ne p1, v0, :cond_e

    .line 397
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 398
    const-string v0, "Already in uTLG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 400
    const-string v0, "Already in uLWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 402
    const-string v0, "Already in uLWTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 404
    const-string v0, "Already in uLWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 406
    const-string v0, "Already in uLWTCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 408
    const-string v0, "Already in LtTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_5
    const/16 v0, 0xe

    if-ne p1, v0, :cond_6

    .line 410
    const-string v0, "Already in LfWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_6
    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    .line 412
    const-string v0, "Already in uLfWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_7
    const/16 v0, 0x10

    if-ne p1, v0, :cond_8

    .line 414
    const-string v0, "Already in uLCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_8
    const/16 v0, 0x11

    if-ne p1, v0, :cond_9

    .line 416
    const-string v0, "Already in uLtCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_9
    const/16 v0, 0x12

    if-ne p1, v0, :cond_a

    .line 418
    const-string v0, "Already in uLtWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_a
    const/16 v0, 0x13

    if-ne p1, v0, :cond_b

    .line 420
    const-string v0, "Already in uLtWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_b
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 422
    const-string v0, "Already in uLfTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_c
    const/16 v0, 0x15

    if-ne p1, v0, :cond_d

    .line 424
    const-string v0, "Already in uLfCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 426
    :cond_d
    :goto_0
    return-void

    .line 428
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 430
    const-string v0, "Radio unavailable, can not switch world mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 431
    return-void

    .line 433
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 436
    return-void
.end method

.method public static blacklist setWorldModeWithBand(II)I
    .locals 2
    .param p0, "worldMode"    # I
    .param p1, "bandMode"    # I

    .line 339
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->checkWmCapability(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWorldModeWithBand: not match, modem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bandMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 341
    const/16 v0, 0x66

    return v0

    .line 343
    :cond_0
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(I)V

    .line 344
    const/16 v0, 0x64

    return v0
.end method

.method private static blacklist updateCurrentWorldMode()I
    .locals 2

    .line 485
    nop

    .line 487
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string v1, "vendor.ril.active.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 489
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static blacklist updateSwitchingState(Z)Z
    .locals 3
    .param p0, "isSwitching"    # Z

    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    add-int/2addr v2, v1

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUpdateSwitchingFlag+ ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 504
    return v0

    .line 505
    :cond_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    if-lez v2, :cond_1

    if-ne v1, p0, :cond_1

    .line 506
    sub-int/2addr v2, v1

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUpdateSwitchingFlag- ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 508
    return v0

    .line 510
    :cond_1
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 512
    return v1
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 187
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 188
    .local v1, "protocolSim":I
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    const-string v2, "handleMessage : <EVENT_RADIO_ON_4>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 209
    if-ne v1, v3, :cond_4

    .line 210
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 202
    :cond_1
    const-string v2, "handleMessage : <EVENT_RADIO_ON_3>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 203
    if-ne v1, v4, :cond_4

    .line 204
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 196
    :cond_2
    const-string v2, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 197
    if-ne v1, v3, :cond_4

    .line 198
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 190
    :cond_3
    const-string v2, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 191
    if-nez v1, :cond_4

    .line 192
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 216
    :cond_4
    :goto_0
    return-void
.end method
