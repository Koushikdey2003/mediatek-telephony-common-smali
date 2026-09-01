.class Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field private blacklist mCloseBackToTcpListen:Z

.field protected blacklist mInput:Ljava/io/DataInputStream;

.field protected blacklist mOutput:Ljava/io/BufferedOutputStream;

.field protected blacklist mSSocket:Ljava/net/ServerSocket;

.field protected blacklist mSocket:Ljava/net/Socket;

.field private blacklist rt:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(IIIIILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    .locals 10
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "port"    # I
    .param p5, "bufferSize"    # I
    .param p6, "handler"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p7, "bipManager"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 668
    move-object v9, p0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 659
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 660
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 661
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 662
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 663
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 669
    return-void
.end method


# virtual methods
.method public blacklist closeChannel()I
    .locals 5

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[UICC]closeChannel."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_3

    .line 712
    const/16 v2, -0x80

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    if-ne v2, v4, :cond_9

    .line 714
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v4, 0x40

    iput v4, v2, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 715
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 721
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    .line 722
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 724
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 728
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "[UICC]IOEX closeChannel back to tcp listen."

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 729
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 730
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 731
    goto :goto_3

    .line 728
    :goto_1
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 729
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 730
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 731
    throw v1

    .line 734
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    .line 735
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->requestStop()V

    .line 736
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 739
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_5

    .line 740
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 741
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_6

    .line 742
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 743
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_7

    .line 744
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 745
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_8

    .line 746
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 750
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 747
    :catch_1
    move-exception v2

    .line 748
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "[UICC]IOEX closeChannel"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 750
    .end local v2    # "e":Ljava/io/IOException;
    :cond_8
    :goto_2
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 751
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 752
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 758
    nop

    .line 760
    :cond_9
    :goto_3
    return v0

    .line 750
    :goto_4
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 751
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 752
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 758
    throw v1
.end method

.method public blacklist getTcpStatus()B
    .locals 3

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v0, v0

    return v0

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "[TCP]getTcpStatus"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getTxAvailBufferSize()I
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    const-string v1, "[BIP]"

    if-nez v0, :cond_0

    .line 885
    const-string v0, "[UICC]getTxAvailBufferSize - mTxBuffer null:"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/4 v0, 0x0

    return v0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    sub-int/2addr v0, v2

    .line 889
    .local v0, "txRemaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UICC]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return v0
.end method

.method public blacklist isCloseBackToTcpListen()Z
    .locals 1

    .line 977
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public blacklist openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .locals 7
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "ret":I
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mNetwork:Landroid/net/Network;

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UICC]openChannel mLinkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLinkMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v1, 0x5

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UICC]New server socket.mChannelStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mPort:I

    sget-object v5, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    nop

    .line 688
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 690
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1, v6}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 691
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    .line 692
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;

    invoke-direct {v3, p0, p0}, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Lcom/mediatek/internal/telephony/cat/TcpServerChannel;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 693
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->checkBufferSize()I

    move-result v0

    .line 696
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 697
    const-string v1, "[UICC]openChannel: buffer size is modified"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    iput v1, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 700
    :cond_2
    iget-object v1, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->getTcpStatus()B

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 701
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 702
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 704
    return v0

    .line 684
    :catch_0
    move-exception v3

    .line 685
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UICC]EX to create server socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return v1

    .line 681
    .end local v3    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 682
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "[UICC]IOEX to create server socket"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return v1
.end method

.method public blacklist receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .locals 8
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 894
    const-string v0, "[BIP]"

    const-string v1, "[UICC]new receiveData method"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "ret":I
    const/4 v1, 0x5

    if-nez p2, :cond_0

    .line 898
    const-string v2, "[BIP]"

    const-string v3, "[UICC]rdr is null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return v1

    .line 902
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UICC]receiveData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 906
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 907
    :try_start_0
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    const/4 v4, 0x0

    if-lt v3, p1, :cond_3

    .line 908
    const-string v3, "[BIP]"

    const-string v5, "[UICC]rx buffer has enough data"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v3, v5, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 913
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 914
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 915
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 917
    :cond_1
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCacheCount:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 918
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    if-ge v3, v4, :cond_2

    .line 919
    const-string v3, "[BIP]"

    const-string v4, ">= [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 926
    :cond_2
    nop

    .line 927
    :try_start_2
    const-string v1, "[BIP]"

    const-string v3, "[UICC]rx buffer has enough data - end"

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :catch_0
    move-exception v3

    .line 924
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[BIP]"

    const-string v5, "[UICC]fail copy rx buffer out 1"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    monitor-exit v2

    return v1

    .line 929
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v3, "[BIP]"

    const-string v5, "[UICC]rx buffer is insufficient - being"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 932
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 933
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 934
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 936
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    if-ge v3, v5, :cond_4

    .line 937
    const-string v3, "[BIP]"

    const-string v5, "< [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 941
    :cond_4
    iput v4, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 942
    const/16 v0, 0x9

    .line 946
    nop

    .line 947
    :try_start_4
    const-string v1, "[BIP]"

    const-string v3, "[UICC]rx buffer is insufficient - end"

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_0
    monitor-exit v2

    .line 950
    return v0

    .line 943
    :catch_1
    move-exception v3

    .line 944
    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[BIP]"

    const-string v5, "[UICC]fail copy rx buffer out 2"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    monitor-exit v2

    return v1

    .line 949
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public blacklist receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .locals 10
    .param p1, "requestCount"    # I

    .line 765
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 767
    .local v0, "ret":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UICC]receiveData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v1, p1, :cond_0

    .line 773
    :try_start_0
    const-string v1, "[UICC]Start to copy data from buffer"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v1, v4, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 776
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 777
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "IOOB-1"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    goto :goto_5

    .line 782
    :cond_0
    move v1, p1

    .line 783
    .local v1, "needCopy":I
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 784
    .local v4, "canCopy":I
    const/4 v5, 0x0

    .line 785
    .local v5, "countCopied":I
    const/4 v6, 0x0

    .line 787
    .local v6, "canExitLoop":Z
    :goto_1
    if-nez v6, :cond_3

    .line 788
    if-le v1, v4, :cond_1

    .line 790
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 793
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 794
    add-int/2addr v5, v4

    .line 795
    sub-int/2addr v1, v4

    .line 798
    :goto_2
    goto :goto_3

    .line 796
    :catch_1
    move-exception v7

    .line 797
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "IOOB-2"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_2

    .line 801
    :cond_1
    :try_start_2
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 804
    add-int/2addr v5, v1

    .line 805
    const/4 v1, 0x0

    .line 808
    goto :goto_3

    .line 806
    :catch_2
    move-exception v7

    .line 807
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "IOOB-3"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    if-nez v1, :cond_2

    .line 811
    const/4 v6, 0x1

    goto :goto_1

    .line 814
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v7, v8, v3, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    .line 815
    .local v7, "count":I
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 816
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v7    # "count":I
    goto :goto_4

    .line 817
    :catch_3
    move-exception v7

    .line 818
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "IOException"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 820
    .end local v7    # "e":Ljava/io/IOException;
    :goto_4
    goto :goto_1

    .line 824
    .end local v1    # "needCopy":I
    .end local v4    # "canCopy":I
    .end local v5    # "countCopied":I
    .end local v6    # "canExitLoop":Z
    :cond_3
    :goto_5
    return-object v0
.end method

.method public blacklist sendData([BI)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 831
    .local v1, "tmpBuffer":[B
    const/4 v2, 0x5

    const-string v3, "[BIP]"

    if-nez p1, :cond_0

    .line 832
    const-string v4, "[UICC]sendData - data null:"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return v2

    .line 836
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    if-nez v4, :cond_1

    .line 837
    const-string v4, "[UICC]sendData - mTxBuffer null:"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return v2

    .line 841
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    sub-int/2addr v4, v5

    .line 843
    .local v4, "txRemaining":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_2

    if-ne v7, p2, :cond_2

    .line 848
    move-object v1, p1

    .line 849
    array-length v5, p1

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    goto :goto_1

    .line 852
    :cond_2
    :try_start_0
    array-length v5, p1

    if-lt v4, v5, :cond_3

    .line 853
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    array-length v10, p1

    invoke-static {p1, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    array-length v9, p1

    add-int/2addr v5, v9

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    goto :goto_0

    .line 856
    :cond_3
    const-string v5, "[UICC]sendData - tx buffer is not enough"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 860
    :goto_0
    nop

    .line 861
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 863
    :goto_1
    if-ne p2, v7, :cond_4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    const/16 v7, -0x80

    if-ne v5, v7, :cond_4

    .line 867
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S[UICC]END_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v3, v1, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 870
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 871
    iput v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 878
    goto :goto_2

    .line 875
    :catch_0
    move-exception v3

    .line 876
    .local v3, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 877
    return v2

    .line 872
    .end local v3    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 873
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 874
    return v2

    .line 880
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return v0

    .line 858
    :catch_2
    move-exception v3

    .line 859
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    return v2
.end method

.method public blacklist setCloseBackToTcpListen(Z)V
    .locals 0
    .param p1, "isBackToTcpListen"    # Z

    .line 974
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 975
    return-void
.end method

.method public blacklist setTcpStatus(BZ)V
    .locals 2
    .param p1, "status"    # B
    .param p2, "isPackED"    # Z

    .line 953
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    if-ne v0, p1, :cond_0

    .line 954
    return-void

    .line 956
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UICC][TCPStatus]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput p1, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 959
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 960
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->changeChannelStatus(B)V

    .line 963
    :cond_1
    return-void
.end method
