.class Lcom/mediatek/internal/telephony/cat/UdpChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final blacklist UDP_SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field blacklist mSocket:Ljava/net/DatagramSocket;

.field blacklist rt:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p8, "bipManager"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1332
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1328
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1333
    return-void
.end method


# virtual methods
.method public blacklist closeChannel()I
    .locals 4

    .line 1365
    const/4 v0, 0x0

    .line 1367
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[UDP]closeChannel."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->requestStop()V

    .line 1372
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1374
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_1

    .line 1376
    const-string v2, "[UDP]closeSocket."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 1379
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 1381
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1382
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 1383
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 1386
    :cond_1
    return v0
.end method

.method public blacklist getTxAvailBufferSize()I
    .locals 4

    .line 1516
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    const-string v1, "[BIP]"

    if-nez v0, :cond_0

    .line 1517
    const-string v0, "[UDP]getTxAvailBufferSize - mTxBuffer null:"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const/4 v0, 0x0

    return v0

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int/2addr v0, v2

    .line 1521
    .local v0, "txRemaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    return v0
.end method

.method public blacklist openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .locals 5
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .line 1336
    const-string v0, "[BIP]"

    const/4 v1, 0x0

    .line 1337
    .local v1, "ret":I
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mNetwork:Landroid/net/Network;

    .line 1339
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLinkMode:I

    if-nez v2, :cond_1

    .line 1341
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1342
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 1343
    const/4 v2, 0x4

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 1344
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v3, 0x80

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1345
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1346
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]: sock status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    goto :goto_0

    .line 1348
    :catch_0
    move-exception v2

    .line 1349
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1352
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v1

    .line 1353
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1354
    const-string v2, "[UDP]openChannel: buffer size is modified"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mBufferSize:I

    iput v0, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1357
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 1358
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 1361
    :cond_1
    return v1
.end method

.method public blacklist receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .locals 8
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "ret":I
    const/4 v1, 0x5

    if-nez p2, :cond_0

    .line 1528
    const-string v2, "[BIP]"

    const-string v3, "[UDP]rdr is null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return v1

    .line 1532
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]receiveData mRxBufferCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRxBufferOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1536
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v2, p1, :cond_2

    .line 1538
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v4, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1540
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1541
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1542
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-nez v4, :cond_1

    .line 1543
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1549
    :cond_1
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1550
    monitor-exit v2

    .line 1554
    goto :goto_0

    .line 1550
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1551
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_0
    move-exception v2

    .line 1552
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    return v1

    .line 1556
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const-string v2, "[BIP]"

    const-string v4, "[UDP]rx buffer is insufficient !!!"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1559
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1560
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1561
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1562
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1563
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1564
    :try_start_5
    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1565
    const/16 v0, 0x9

    .line 1569
    nop

    .line 1571
    :goto_0
    return v0

    .line 1563
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1566
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_1
    move-exception v2

    .line 1567
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    return v1
.end method

.method public blacklist receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .locals 9
    .param p1, "requestCount"    # I

    .line 1390
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1391
    .local v0, "ret":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UDP]receiveData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v1, v3, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1399
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1400
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1401
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1402
    :catch_0
    move-exception v1

    .line 1403
    :goto_0
    goto :goto_5

    .line 1405
    :cond_0
    move v1, p1

    .line 1406
    .local v1, "needCopy":I
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1407
    .local v3, "canCopy":I
    const/4 v4, 0x0

    .line 1408
    .local v4, "countCopied":I
    const/4 v5, 0x0

    .line 1410
    .local v5, "canExitLoop":Z
    :goto_1
    if-nez v5, :cond_3

    .line 1411
    if-le v1, v3, :cond_1

    .line 1413
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v8, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    add-int/2addr v4, v3

    .line 1416
    sub-int/2addr v1, v3

    .line 1417
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1418
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1419
    :catch_1
    move-exception v6

    .line 1420
    :goto_2
    goto :goto_3

    .line 1423
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v8, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1425
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1426
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1427
    add-int/2addr v4, v1

    .line 1428
    const/4 v1, 0x0

    .line 1430
    goto :goto_3

    .line 1429
    :catch_2
    move-exception v6

    .line 1433
    :goto_3
    if-nez v1, :cond_2

    .line 1434
    const/4 v5, 0x1

    goto :goto_1

    .line 1437
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v7, 0xbb8

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1438
    new-instance v6, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1439
    .local v6, "packet":Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1440
    iput v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1441
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v6    # "packet":Ljava/net/DatagramPacket;
    goto :goto_4

    .line 1442
    :catch_3
    move-exception v6

    .line 1443
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1444
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_1

    .line 1449
    .end local v1    # "needCopy":I
    .end local v3    # "canCopy":I
    .end local v4    # "countCopied":I
    .end local v5    # "canExitLoop":Z
    :cond_3
    :goto_5
    return-object v0
.end method

.method public blacklist sendData([BI)I
    .locals 18
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .line 1453
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    .line 1454
    .local v4, "ret":I
    const/4 v5, 0x0

    .line 1456
    .local v5, "tmpBuffer":[B
    const/4 v6, 0x5

    const-string v7, "[BIP]"

    if-nez v2, :cond_0

    .line 1457
    const-string v0, "[UDP]sendData - data null:"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    return v6

    .line 1461
    :cond_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    if-nez v0, :cond_1

    .line 1462
    const-string v0, "[UDP]sendData - mTxBuffer null:"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    return v6

    .line 1466
    :cond_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v8, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int v8, v0, v8

    .line 1468
    .local v8, "txRemaining":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]sendData: size of data:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mode:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]sendData: size of buffer:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " count:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :try_start_0
    iget v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_2

    if-ne v10, v3, :cond_2

    .line 1473
    move-object/from16 v5, p1

    .line 1474
    array-length v0, v2

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    goto :goto_2

    .line 1476
    :cond_2
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    if-lt v8, v0, :cond_3

    .line 1478
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    iget v12, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v13, v2

    invoke-static {v2, v11, v0, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1479
    iget v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v12, v2

    add-int/2addr v0, v12

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    const-string v12, "[UDP]sendData - IndexOutOfBoundsException"

    invoke-static {v7, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    goto :goto_1

    .line 1484
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UDP]sendData - tx buffer is not enough:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :goto_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    move-object v5, v0

    .line 1489
    :goto_2
    if-ne v3, v10, :cond_4

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[UDP]Send data("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mPort:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "):"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v14, 0x0

    iget v15, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    iget v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mPort:I

    move-object v12, v0

    move-object v13, v5

    move-object/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    move-object v9, v0

    .line 1495
    .local v9, "packet":Ljava/net/DatagramPacket;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_4

    .line 1497
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1498
    iput v11, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1504
    goto :goto_3

    .line 1499
    :catch_1
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "[UDP]sendData - Exception"

    invoke-static {v7, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1503
    return v6

    .line 1511
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "packet":Ljava/net/DatagramPacket;
    :cond_4
    :goto_3
    goto :goto_4

    .line 1507
    :catch_2
    move-exception v0

    .line 1508
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v6, "[UDP]sendData NE"

    invoke-static {v7, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1510
    const/4 v4, 0x5

    .line 1512
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :goto_4
    return v4
.end method
