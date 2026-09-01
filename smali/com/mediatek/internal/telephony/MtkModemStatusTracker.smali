.class public Lcom/mediatek/internal/telephony/MtkModemStatusTracker;
.super Ljava/lang/Object;
.source "MtkModemStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;,
        Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkModemStatusTracker"

.field private static final blacklist SLP_SHM_LTE_RX_TIME:I = 0x88

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L1:I = 0xb8

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L2:I = 0xc0

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L3:I = 0xc8

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L4:I = 0xd0

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L5:I = 0xd8

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L6:I = 0xe0

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L7:I = 0xe8

.field private static final blacklist SLP_SHM_LTE_TX_PWR_L8:I = 0xf0

.field private static final blacklist SLP_SHM_LTE_TX_TIME:I = 0x98

.field private static final blacklist SLP_SHM_MD_SLEEP_TIME:I = 0x38

.field private static final blacklist SLP_SHM_MD_TOTAL_TIME:I = 0x140

.field private static final blacklist SLP_SHM_NR_RX_TIME:I = 0x90

.field private static final blacklist SLP_SHM_NR_TX_PWR_L1:I = 0xf8

.field private static final blacklist SLP_SHM_NR_TX_PWR_L2:I = 0x100

.field private static final blacklist SLP_SHM_NR_TX_PWR_L3:I = 0x108

.field private static final blacklist SLP_SHM_NR_TX_PWR_L4:I = 0x110

.field private static final blacklist SLP_SHM_NR_TX_PWR_L5:I = 0x118

.field private static final blacklist SLP_SHM_NR_TX_PWR_L6:I = 0x120

.field private static final blacklist SLP_SHM_NR_TX_PWR_L7:I = 0x128

.field private static final blacklist SLP_SHM_NR_TX_PWR_L8:I = 0x130

.field private static final blacklist SLP_SHM_NR_TX_TIME:I = 0xa0

.field private static blacklist file:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/ccci_lp_mem"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->file:Ljava/io/File;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getModemRxTime(Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;)J
    .locals 2
    .param p0, "rat"    # Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    .line 126
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_4G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    if-ne p0, v0, :cond_0

    .line 127
    const/16 v0, 0x88

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 128
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_5G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    if-ne p0, v0, :cond_1

    .line 129
    const/16 v0, 0x90

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 131
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static blacklist getModemSleepTime()J
    .locals 2

    .line 122
    const/16 v0, 0x38

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getModemTotalTime()J
    .locals 2

    .line 118
    const/16 v0, 0x140

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getModemTxLevelTime(Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;)J
    .locals 4
    .param p0, "rat"    # Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;
    .param p1, "txLevel"    # Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 144
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_4G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    const-wide/16 v1, -0x1

    if-ne p0, v0, :cond_0

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$1;->$SwitchMap$com$mediatek$internal$telephony$MtkModemStatusTracker$TxLevel:[I

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 163
    return-wide v1

    .line 161
    :pswitch_0
    const/16 v0, 0xf0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 159
    :pswitch_1
    const/16 v0, 0xe8

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 157
    :pswitch_2
    const/16 v0, 0xe0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 155
    :pswitch_3
    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 153
    :pswitch_4
    const/16 v0, 0xd0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 151
    :pswitch_5
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 149
    :pswitch_6
    const/16 v0, 0xc0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 147
    :pswitch_7
    const/16 v0, 0xb8

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 165
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_5G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    if-ne p0, v0, :cond_1

    .line 166
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$1;->$SwitchMap$com$mediatek$internal$telephony$MtkModemStatusTracker$TxLevel:[I

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 184
    return-wide v1

    .line 182
    :pswitch_8
    const/16 v0, 0x130

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 180
    :pswitch_9
    const/16 v0, 0x128

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 178
    :pswitch_a
    const/16 v0, 0x120

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 176
    :pswitch_b
    const/16 v0, 0x118

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 174
    :pswitch_c
    const/16 v0, 0x110

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 172
    :pswitch_d
    const/16 v0, 0x108

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 170
    :pswitch_e
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 168
    :pswitch_f
    const/16 v0, 0xf8

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 187
    :cond_1
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist getModemTxTime(Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;)J
    .locals 2
    .param p0, "rat"    # Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    .line 135
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_4G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    if-ne p0, v0, :cond_0

    .line 136
    const/16 v0, 0x98

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 137
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_5G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    if-ne p0, v0, :cond_1

    .line 138
    const/16 v0, 0xa0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->readDataFromFile(I)J

    move-result-wide v0

    return-wide v0

    .line 140
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static blacklist readDataFromFile(I)J
    .locals 9
    .param p0, "index"    # I

    .line 92
    const-string v0, "MtkModemStatusTracker"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 93
    .local v1, "finish":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    const-wide/16 v4, -0x1

    if-gez v3, :cond_3

    .line 94
    const/4 v3, 0x1

    .line 96
    .local v3, "mIsReadSuccess":Z
    :try_start_0
    sget-object v6, Lcom/mediatek/internal/telephony/MtkModemStatusTracker;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v4, "mModemStatus":[B
    nop

    .line 101
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 102
    aget-byte v7, v4, v5

    array-length v8, v4

    sub-int/2addr v8, v6

    add-int/2addr v8, v5

    aget-byte v6, v4, v8

    if-eq v7, v6, :cond_1

    .line 103
    const-string v6, "File counter not match"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v3, 0x0

    .line 105
    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 109
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .local v0, "mByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    .line 111
    .local v5, "mModemTime":J
    return-wide v5

    .line 97
    .end local v0    # "mByteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "mModemStatus":[B
    .end local v5    # "mModemTime":J
    :catch_0
    move-exception v6

    .line 98
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File open fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-wide v4

    .line 114
    .end local v3    # "mIsReadSuccess":Z
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    return-wide v4
.end method
