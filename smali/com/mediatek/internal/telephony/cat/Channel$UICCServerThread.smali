.class public Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UICCServerThread"
.end annotation


# static fields
.field private static final blacklist RETRY_ACCEPT_SLEEPTIME:I = 0x64

.field private static final blacklist RETRY_COUNT:I = 0x4


# instance fields
.field blacklist di:Ljava/io/DataInputStream;

.field blacklist mReTryCount:I

.field blacklist mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/cat/Channel;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/cat/Channel;Lcom/mediatek/internal/telephony/cat/TcpServerChannel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/Channel;
    .param p2, "tcpServerChannel"    # Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 452
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 446
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 447
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 453
    const-string v0, "[BIP]"

    const-string v1, "OpenServerSocketThread Init"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 455
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 14

    .line 460
    const/16 v0, 0x578

    new-array v0, v0, [B

    .line 462
    .local v0, "localBuffer":[B
    const-string v1, "[BIP]"

    const-string v2, "[UICC]ServerTr: Run Enter"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    .line 465
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->getTcpStatus()B

    move-result v1

    const/16 v3, 0x40

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    .line 466
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    goto :goto_1

    .line 468
    :cond_1
    const-string v1, "[BIP]"

    const-string v5, "[UICC]ServerTr:TCP status = TCP_STATUS_LISTEN"

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_1
    const/4 v1, 0x0

    :try_start_0
    const-string v5, "[BIP]"

    const-string v6, "[UICC]ServerTr:Listen to wait client connection..."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 509
    nop

    .line 510
    const-string v2, "[BIP]"

    const-string v5, "[UICC]ServerTr:Receive a client connection."

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    const/16 v5, -0x80

    invoke-virtual {v2, v5, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 512
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-nez v2, :cond_2

    .line 514
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 515
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    nop

    .line 520
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    goto :goto_2

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "[BIP]"

    const-string v3, "[UICC]ServerTr:IOException: getInputStream."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    goto :goto_0

    .line 522
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-nez v2, :cond_3

    .line 524
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 525
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 529
    goto :goto_3

    .line 526
    :catch_1
    move-exception v1

    .line 527
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v2, "[BIP]"

    const-string v3, "[UICC]ServerTr:IOException: getOutputStream."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    goto/16 :goto_0

    .line 531
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 532
    const/4 v2, 0x1

    .line 533
    .local v2, "goOnRead":Z
    const/4 v5, 0x0

    .line 534
    .local v5, "recvLen":I
    const-string v6, "[BIP]"

    const-string v7, "[UICC]ServerTr: Start to read data from network"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :try_start_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 537
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move v5, v6

    .line 553
    nop

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UICC]ServerTr: Receive data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[BIP]"

    invoke-static {v7, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-ltz v5, :cond_c

    .line 556
    const/4 v6, 0x0

    .line 557
    .local v6, "rSize":I
    const/4 v7, 0x0

    .line 558
    .local v7, "localBufferOffset":I
    const/4 v8, 0x0

    .line 559
    .local v8, "localBufferCount":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 561
    :try_start_4
    const-string v10, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UICC]ServerTr:mRxBufferCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v10, :cond_4

    .line 564
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v1, v10, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v5, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 566
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 567
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V

    goto :goto_5

    .line 569
    :cond_4
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v13, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v13, v13, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v10, v11, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    if-gt v5, v10, :cond_5

    .line 573
    move v6, v5

    goto :goto_4

    .line 575
    :cond_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    move v6, v10

    move v7, v10

    .line 576
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    sub-int v11, v5, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 578
    :goto_4
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v0, v1, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v11, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 582
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 583
    const-string v10, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UICC]ServerTr:rSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mRxBufferCacheCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v10, v11, :cond_a

    .line 589
    :try_start_5
    const-string v10, "[BIP]"

    const-string v11, "[UICC]ServerTr:mRxBuffer is full."

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 602
    goto :goto_6

    .line 592
    :catch_2
    move-exception v10

    .line 593
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v11, "[BIP]"

    const-string v12, "[UICC]ServerTr:IE :mRxBufferCount >= mBufferSize"

    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 596
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v11

    if-ne v4, v11, :cond_7

    .line 597
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v11, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 598
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v11, v1}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 599
    const/4 v2, 0x0

    .line 600
    goto :goto_8

    .line 603
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_7
    :goto_6
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    if-lez v10, :cond_6

    .line 604
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v10, :cond_8

    .line 605
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v13, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v13, v13, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v10, v11, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    :cond_8
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v11, v12

    if-gt v10, v11, :cond_9

    .line 610
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move v6, v10

    goto :goto_7

    .line 612
    :cond_9
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    move v6, v10

    .line 614
    :goto_7
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v0, v7, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v11, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 617
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v11, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 618
    add-int/2addr v7, v6

    .line 619
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    goto/16 :goto_5

    .line 622
    :cond_a
    const/4 v2, 0x1

    .line 623
    nop

    .line 626
    :goto_8
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 627
    .end local v6    # "rSize":I
    .end local v7    # "localBufferOffset":I
    .end local v8    # "localBufferCount":I
    nop

    .line 644
    if-nez v2, :cond_b

    .line 645
    goto/16 :goto_a

    .line 647
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UICC]ServerTr: buffer data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[BIP]"

    invoke-static {v7, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v2    # "goOnRead":Z
    .end local v5    # "recvLen":I
    goto/16 :goto_3

    .line 626
    .restart local v2    # "goOnRead":Z
    .restart local v5    # "recvLen":I
    .restart local v6    # "rSize":I
    .restart local v7    # "localBufferOffset":I
    .restart local v8    # "localBufferCount":I
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    .line 628
    .end local v6    # "rSize":I
    .end local v7    # "localBufferOffset":I
    .end local v8    # "localBufferCount":I
    :cond_c
    const-string v1, "[BIP]"

    const-string v6, "[UICC]ServerTr: client diconnected"

    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v1, :cond_d

    .line 631
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 633
    :cond_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_e

    .line 634
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 639
    :cond_e
    goto :goto_9

    .line 636
    :catch_3
    move-exception v1

    .line 637
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "[BIP]"

    const-string v7, "[UICC]ServerTr:len<0,IOException input stream."

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v1    # "e":Ljava/io/IOException;
    :goto_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 641
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 642
    goto :goto_a

    .line 538
    :catch_4
    move-exception v3

    .line 539
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "[BIP]"

    const-string v7, "[UICC]ServerTr:read io exception."

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 542
    :try_start_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v1, :cond_f

    .line 543
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 545
    :cond_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_10

    .line 546
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 548
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 551
    goto :goto_a

    .line 549
    :catch_5
    move-exception v1

    .line 550
    .local v1, "e1":Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v6, "[UICC]ServerTr:IOException input stream."

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v2    # "goOnRead":Z
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "recvLen":I
    :cond_11
    :goto_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    const-string v1, "[BIP]"

    const-string v2, "[UICC]ServerTr: stop"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :catch_6
    move-exception v3

    .line 474
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]ServerTr:Fail to accept server socket retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[BIP]"

    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    if-lt v2, v5, :cond_12

    .line 477
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 479
    const-wide/16 v1, 0x64

    :try_start_a
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    .line 483
    goto :goto_b

    .line 480
    :catch_7
    move-exception v1

    .line 481
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "[BIP]"

    const-string v4, "[UICC]ServerTr:IE: sleep for SS accept retry."

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :goto_b
    goto/16 :goto_0

    .line 486
    :cond_12
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 488
    :try_start_b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_13

    .line 489
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 491
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_14

    .line 492
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 497
    :cond_14
    goto :goto_c

    .line 494
    :catch_8
    move-exception v2

    .line 495
    .local v2, "e1":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[UICC]ServerTr:IOE: input/output stream close."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 502
    goto :goto_d

    .line 500
    :catch_9
    move-exception v2

    .line 501
    .local v2, "e2":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[UICC]ServerTr:IOE: socket close."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .end local v2    # "e2":Ljava/io/IOException;
    :goto_d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 504
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 505
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 506
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v2, v1, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 507
    nop

    .line 654
    .end local v3    # "e":Ljava/io/IOException;
    return-void

    .line 464
    :cond_15
    goto/16 :goto_0
.end method
