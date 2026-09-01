.class public Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;
.super Ljava/lang/Object;
.source "RatConfiguration.java"


# static fields
.field static final blacklist CDMA:Ljava/lang/String; = "C"

.field static final blacklist DELIMITER:Ljava/lang/String; = "/"

.field static final blacklist GSM:Ljava/lang/String; = "G"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RatConfig"

.field static final blacklist LteFdd:Ljava/lang/String; = "Lf"

.field static final blacklist LteTdd:Ljava/lang/String; = "Lt"

.field public static final blacklist MASK_CDMA:I = 0x20

.field public static final blacklist MASK_GSM:I = 0x1

.field public static final blacklist MASK_LteFdd:I = 0x10

.field public static final blacklist MASK_LteTdd:I = 0x8

.field public static final blacklist MASK_NR:I = 0x40

.field public static final blacklist MASK_TDSCDMA:I = 0x2

.field public static final blacklist MASK_WCDMA:I = 0x4

.field protected static final blacklist MD_MODE_LCTG:I = 0x10

.field protected static final blacklist MD_MODE_LFWCG:I = 0xf

.field protected static final blacklist MD_MODE_LFWG:I = 0xe

.field protected static final blacklist MD_MODE_LTCTG:I = 0x11

.field protected static final blacklist MD_MODE_LTG:I = 0x8

.field protected static final blacklist MD_MODE_LTTG:I = 0xd

.field protected static final blacklist MD_MODE_LWCG:I = 0xb

.field protected static final blacklist MD_MODE_LWCTG:I = 0xc

.field protected static final blacklist MD_MODE_LWG:I = 0x9

.field protected static final blacklist MD_MODE_LWTG:I = 0xa

.field protected static final blacklist MD_MODE_UNKNOWN:I = 0x0

.field static final blacklist NR:Ljava/lang/String; = "N"

.field static final blacklist PROPERTY_BUILD_RAT_CONFIG:Ljava/lang/String; = "ro.vendor.mtk_protocol1_rat_config"

.field static final blacklist PROPERTY_IS_USING_DEFAULT_CONFIG:Ljava/lang/String; = "ro.boot.opt_using_default"

.field static final blacklist PROPERTY_RAT_CONFIG:Ljava/lang/String; = "ro.vendor.mtk_ps1_rat"

.field static final blacklist TDSCDMA:Ljava/lang/String; = "T"

.field static final blacklist WCDMA:Ljava/lang/String; = "W"

.field private static blacklist actived_rat:I

.field private static blacklist is_default_config:Z

.field private static blacklist max_rat:I

.field private static blacklist max_rat_initialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat:I

    .line 84
    sput-boolean v0, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat_initialized:Z

    .line 85
    sput v0, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->is_default_config:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist checkRatConfig(I)Z
    .locals 3
    .param p0, "iRat"    # I

    .line 145
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    .line 146
    .local v0, "maxrat":I
    or-int v1, p0, v0

    if-ne v1, v0, :cond_0

    .line 147
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRatConfig: FAIL with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getActiveRatConfig()Ljava/lang/String;
    .locals 3

    .line 299
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->ratToString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "rat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveRatConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 301
    return-object v0
.end method

.method protected static declared-synchronized blacklist getMaxRat()I
    .locals 4

    const-class v0, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-boolean v1, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat_initialized:Z

    if-nez v1, :cond_1

    .line 125
    const-string v1, "ro.vendor.mtk_protocol1_rat_config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "sMaxRat":Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->ratToBitmask(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat:I

    .line 128
    const-string v2, "ro.boot.opt_using_default"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->is_default_config:Z

    .line 130
    sput-boolean v3, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat_initialized:Z

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxRat: initial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 134
    .end local v1    # "sMaxRat":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->max_rat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static blacklist getRatConfig()I
    .locals 3

    .line 159
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    .line 160
    .local v0, "default_rat_config":I
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    .line 162
    return v1

    .line 164
    :cond_0
    sget-boolean v1, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->is_default_config:Z

    if-eqz v1, :cond_1

    .line 165
    sput v0, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    .line 166
    return v0

    .line 168
    :cond_1
    const-string v1, "ro.vendor.mtk_ps1_rat"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "rat":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 170
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->ratToBitmask(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    .line 171
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->checkRatConfig(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    const-string v2, "getRatConfig: invalid PROPERTY_RAT_CONFIG, set to max_rat"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "getRatConfig: ger property PROPERTY_RAT_CONFIG fail, initialize"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    .line 179
    :cond_3
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->actived_rat:I

    return v2
.end method

.method public static blacklist isC2kSupported()Z
    .locals 2

    .line 225
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isGsmSupported()Z
    .locals 2

    .line 280
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isLteFddSupported()Z
    .locals 2

    .line 236
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isLteTddSupported()Z
    .locals 2

    .line 247
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isNrSupported()Z
    .locals 2

    .line 291
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isTdscdmaSupported()Z
    .locals 2

    .line 269
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isWcdmaSupported()Z
    .locals 2

    .line 258
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 305
    const-string v0, "RatConfig"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method protected static blacklist ratToBitmask(Ljava/lang/String;)I
    .locals 2
    .param p0, "rat"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "iRat":I
    const-string v1, "C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    or-int/lit8 v0, v0, 0x20

    .line 98
    :cond_0
    const-string v1, "Lf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    or-int/lit8 v0, v0, 0x10

    .line 101
    :cond_1
    const-string v1, "Lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    or-int/lit8 v0, v0, 0x8

    .line 104
    :cond_2
    const-string v1, "W"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    or-int/lit8 v0, v0, 0x4

    .line 107
    :cond_3
    const-string v1, "T"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    or-int/lit8 v0, v0, 0x2

    .line 110
    :cond_4
    const-string v1, "G"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    or-int/lit8 v0, v0, 0x1

    .line 113
    :cond_5
    const-string v1, "N"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    or-int/lit8 v0, v0, 0x40

    .line 116
    :cond_6
    return v0
.end method

.method protected static blacklist ratToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "iRat"    # I

    .line 188
    const-string v0, ""

    .line 189
    .local v0, "rat":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Lf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Lt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/W"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_3
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_4
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/G"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/N"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_7
    return-object v0
.end method
