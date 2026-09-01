.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsimEvent"
.end annotation


# static fields
.field public static final blacklist DEFAULT_MAX_DATA_LENGTH:I = 0x200


# instance fields
.field private blacklist mData:[B

.field private blacklist mDataLen:I

.field private blacklist mEventMaxDataLen:I

.field private blacklist mMessageId:I

.field private blacklist mReadOffset:I

.field private blacklist mSlotId:I

.field private blacklist mTransactionId:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I

    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 654
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "slotId"    # I

    .line 664
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 665
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "length"    # I
    .param p4, "slotId"    # I

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const/16 v0, 0x200

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 676
    iput p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I

    .line 677
    iput p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I

    .line 678
    iput p4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mSlotId:I

    .line 679
    iput p3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 680
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 682
    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 683
    return-void
.end method

.method static synthetic blacklist access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 636
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method static synthetic blacklist access$2302(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p1, "x1"    # I

    .line 636
    iput p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I

    return p1
.end method


# virtual methods
.method public blacklist getByte()I
    .locals 3

    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, "ret":I
    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 856
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 857
    monitor-exit p0

    .line 858
    return v0

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .line 862
    monitor-enter p0

    .line 863
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 864
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 867
    :cond_0
    new-array v0, p1, [B

    .line 869
    .local v0, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 870
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 871
    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 874
    .end local v0    # "ret":[B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getData()[B
    .locals 4

    .line 769
    monitor-enter p0

    .line 770
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    new-array v0, v0, [B

    .line 771
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    monitor-exit p0

    return-object v0

    .line 773
    .end local v0    # "tempData":[B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getDataByReadOffest()[B
    .locals 6

    .line 783
    monitor-enter p0

    .line 784
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 785
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    monitor-exit p0

    return-object v0

    .line 787
    .end local v0    # "tempData":[B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getDataLen()I
    .locals 1

    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    monitor-exit p0

    return v0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getFirstSlotId()I
    .locals 8

    .line 808
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 810
    .local v0, "simCount":I
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    const/4 v4, 0x0

    const-string v5, "getFirstSlotId, invalid slot id: "

    const-string v6, "ExternalSimMgr"

    if-le v1, v2, :cond_0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return v4

    .line 815
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 816
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    shl-int v7, v3, v1

    and-int/2addr v2, v7

    if-eqz v2, :cond_1

    .line 817
    return v1

    .line 815
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return v4
.end method

.method public blacklist getInt()I
    .locals 5

    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "ret":I
    monitor-enter p0

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 832
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v0, v1, v3

    .line 836
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 838
    :cond_0
    monitor-exit p0

    .line 839
    return v0

    .line 838
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getMessageId()I
    .locals 1

    .line 791
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I

    return v0
.end method

.method public blacklist getShort()I
    .locals 4

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "ret":I
    monitor-enter p0

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 846
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 847
    monitor-exit p0

    .line 848
    return v0

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSlotBitMask()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mSlotId:I

    return v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .line 878
    new-array v0, p1, [B

    .line 880
    .local v0, "buf":[B
    monitor-enter p0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 883
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 883
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getTransactionId()I
    .locals 1

    .line 825
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method public blacklist putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .line 720
    monitor-enter p0

    .line 721
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 722
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 726
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 727
    monitor-exit p0

    .line 728
    const/4 v0, 0x0

    return v0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist putBytes([B)I
    .locals 4
    .param p1, "value"    # [B

    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    array-length v0, p1

    .line 758
    .local v0, "len":I
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    if-le v0, v1, :cond_0

    .line 759
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 764
    .end local v0    # "len":I
    monitor-exit p0

    .line 765
    return v3

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist putInt(I)I
    .locals 5
    .param p1, "value"    # I

    .line 692
    monitor-enter p0

    .line 693
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 694
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 697
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 698
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 699
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 702
    const/4 v0, 0x0

    return v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist putShort(I)I
    .locals 5
    .param p1, "value"    # I

    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 708
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 711
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 712
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 713
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 716
    const/4 v0, 0x0

    return v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist putString(Ljava/lang/String;I)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .line 732
    monitor-enter p0

    .line 733
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_0

    .line 734
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 737
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 738
    .local v0, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge p2, v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v0, v2, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    goto :goto_1

    .line 742
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .line 743
    .local v1, "remain":I
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 745
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 746
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    aput-byte v2, v4, v5

    .line 747
    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 750
    .end local v0    # "s":[B
    .end local v1    # "remain":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    monitor-exit p0

    .line 751
    return v2

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist resetOffset()V
    .locals 1

    .line 686
    monitor-enter p0

    .line 687
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 688
    monitor-exit p0

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 3

    .line 889
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpEvent: transaction_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slot_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data_len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 889
    return-object v0
.end method
