.class public Lcom/mediatek/internal/telephony/ppl/PplControlData;
.super Ljava/lang/Object;
.source "PplControlData.java"


# static fields
.field private static final blacklist HEADER_SIZE:I = 0x3c

.field public static final blacklist SALT_LIST_LENGTH:I = 0x28

.field public static final blacklist SALT_SIZE:I = 0x14

.field public static final blacklist SECRET_LIST_LENGTH:I = 0x28

.field public static final blacklist SECRET_SIZE:I = 0x20

.field public static final blacklist SIM_FINGERPRINT_LENGTH:I = 0x28

.field public static final blacklist STATUS_ENABLED:B = 0x2t

.field public static final blacklist STATUS_LOCKED:B = 0x4t

.field public static final blacklist STATUS_PROVISIONED:B = 0x1t

.field public static final blacklist STATUS_SIM_LOCKED:B = 0x8t

.field public static final blacklist STATUS_WIPE_REQUESTED:B = 0x10t

.field private static final blacklist TAG:Ljava/lang/String; = "PPL/ControlData"

.field public static final blacklist TRUSTED_NUMBER_LENGTH:I = 0x28

.field public static final blacklist VERSION:B = 0x1t

.field private static blacklist mSIMComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist PendingMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist SIMFingerprintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public blacklist TrustedNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist salt:[B

.field public blacklist secret:[B

.field public blacklist status:B

.field public blacklist version:B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 36
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    return-void
.end method

.method public static blacklist buildControlData([B)Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .locals 3
    .param p0, "data"    # [B

    .line 188
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 189
    .local v0, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->decode([B)V

    goto :goto_0

    .line 192
    :cond_0
    const-string v1, "PPL/ControlData"

    const-string v2, "buildControlData: data is empty, return empty instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-object v0
.end method

.method public static blacklist compareSIMFingerprints([B[B)I
    .locals 3
    .param p0, "lhs"    # [B
    .param p1, "rhs"    # [B

    .line 316
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 320
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    .line 321
    .local v1, "difference":I
    if-eqz v1, :cond_0

    .line 322
    return v1

    .line 319
    .end local v1    # "difference":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "The two fingerprints must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getDataSize()I
    .locals 2

    .line 167
    const/16 v0, 0x3c

    .line 168
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x31

    add-int/2addr v0, v1

    .line 177
    :cond_2
    return v0
.end method

.method public static blacklist sortSIMFingerprints([[B)[[B
    .locals 3
    .param p0, "input"    # [[B

    .line 307
    invoke-virtual {p0}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 308
    .local v0, "result":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 309
    aget-object v2, v0, v1

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v0, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 312
    return-object v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 237
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 238
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 239
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 240
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 242
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 243
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 244
    return-void
.end method

.method public blacklist clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .locals 5

    .line 203
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 204
    .local v0, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    iput-byte v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 205
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    iput-byte v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 206
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 207
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 208
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 211
    iget-object v3, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 214
    :cond_1
    iput-object v2, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 218
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 219
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "s":Ljava/lang/String;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_2

    :cond_2
    goto :goto_3

    .line 223
    :cond_3
    iput-object v2, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 225
    :goto_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 226
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 227
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    .line 228
    .local v2, "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v2    # "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    goto :goto_4

    :cond_4
    goto :goto_5

    .line 231
    :cond_5
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 233
    :goto_5
    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist decode([B)V
    .locals 10
    .param p1, "data"    # [B

    .line 115
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 116
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 117
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    .line 118
    .local v1, "numberOfSIMFingerprint":B
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 119
    .local v2, "numberOfTrustedNumber":B
    const/4 v3, 0x4

    aget-byte v3, p1, v3

    .line 120
    .local v3, "numberOfPendingMessage":B
    const/16 v4, 0x8

    .line 121
    .local v4, "offset":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v6, v5

    invoke-static {p1, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 123
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v6, v5

    invoke-static {p1, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 125
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 126
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 127
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 128
    const/16 v7, 0x28

    new-array v8, v7, [B

    .line 129
    .local v8, "fingerprint":[B
    invoke-static {p1, v4, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    nop

    .end local v8    # "fingerprint":[B
    add-int/lit8 v4, v4, 0x28

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    goto :goto_1

    .line 134
    :cond_1
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 136
    :goto_1
    if-eqz v2, :cond_5

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 139
    move v6, v4

    .line 140
    .local v6, "j":I
    :goto_3
    add-int/lit8 v7, v4, 0x28

    if-ge v6, v7, :cond_3

    .line 141
    aget-byte v7, p1, v6

    if-nez v7, :cond_2

    .line 142
    goto :goto_4

    .line 140
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 145
    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    new-instance v8, Ljava/lang/String;

    sub-int v9, v6, v4

    invoke-direct {v8, p1, v4, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    nop

    .end local v6    # "j":I
    add-int/lit8 v4, v4, 0x28

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    goto :goto_5

    .line 149
    :cond_5
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 151
    :goto_5
    if-eqz v3, :cond_7

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 153
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v3, :cond_6

    .line 154
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    new-instance v6, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-direct {v6, p1, v4}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;-><init>([BI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v4, v4, 0x31

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_6
    goto :goto_7

    .line 158
    :cond_7
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 160
    :goto_7
    return-void
.end method

.method public blacklist encode()[B
    .locals 7

    .line 66
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->getDataSize()I

    move-result v0

    new-array v0, v0, [B

    .line 67
    .local v0, "result":[B
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 68
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 69
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    :goto_0
    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 70
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    :goto_1
    aput-byte v3, v0, v1

    .line 71
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    :goto_2
    aput-byte v3, v0, v1

    .line 72
    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 73
    const/4 v1, 0x6

    aput-byte v2, v0, v1

    .line 74
    const/4 v1, 0x7

    aput-byte v2, v0, v1

    .line 75
    const/16 v1, 0x8

    .line 76
    .local v1, "offset":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 78
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 80
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    const/16 v4, 0x28

    if-eqz v3, :cond_3

    .line 81
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 82
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    add-int/lit8 v1, v1, 0x28

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 87
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 88
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 89
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 90
    .local v5, "buffer":[B
    array-length v6, v5

    if-gt v6, v4, :cond_4

    .line 93
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 95
    invoke-static {v5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    nop

    .end local v5    # "buffer":[B
    add-int/lit8 v1, v1, 0x28

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 91
    .restart local v5    # "buffer":[B
    :cond_4
    new-instance v2, Ljava/lang/Error;

    const-string v4, "Trusted number is too long"

    invoke-direct {v2, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v3    # "i":I
    .end local v5    # "buffer":[B
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 100
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 101
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-virtual {v3, v0, v1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->encode([BI)V

    .line 102
    add-int/lit8 v1, v1, 0x31

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 105
    .end local v2    # "i":I
    :cond_6
    return-object v0
.end method

.method public blacklist hasWipeFlag()Z
    .locals 2

    .line 259
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

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

.method public blacklist isEnabled()Z
    .locals 2

    .line 247
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

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

.method public blacklist isLocked()Z
    .locals 2

    .line 283
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

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

.method public blacklist isProvisioned()Z
    .locals 2

    .line 271
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isSIMLocked()Z
    .locals 2

    .line 295
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

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

.method public blacklist setEnable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0

    .line 254
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 256
    :goto_0
    return-void
.end method

.method public blacklist setLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0

    .line 290
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 292
    :goto_0
    return-void
.end method

.method public blacklist setProvision(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0

    .line 278
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 280
    :goto_0
    return-void
.end method

.method public blacklist setSIMLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0

    .line 302
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 304
    :goto_0
    return-void
.end method

.method public blacklist setWipeFlag(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0

    .line 266
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 268
    :goto_0
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PplControlData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
