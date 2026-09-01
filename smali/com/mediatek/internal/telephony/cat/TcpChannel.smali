.class Lcom/mediatek/internal/telephony/cat/TcpChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final blacklist TCP_CONN_TIMEOUT:I = 0x3a98


# instance fields
.field blacklist mInput:Ljava/io/DataInputStream;

.field blacklist mOutput:Ljava/io/BufferedOutputStream;

.field blacklist mSocket:Ljava/net/Socket;

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

    .line 990
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 984
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 985
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 991
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/TcpChannel;

    .line 981
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->onOpenChannelCompleted()V

    return-void
.end method

.method private blacklist onOpenChannelCompleted()V
    .locals 5

    .line 1072
    const/4 v0, 0x0

    .line 1074
    .local v0, "ret":I
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    const-string v2, "[BIP]"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 1076
    :try_start_0
    const-string v1, "[TCP]stream is open"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 1078
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 1079
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1080
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    nop

    .line 1092
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v0

    .line 1093
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1094
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "[TCP]Fail to create data stream"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1084
    const/4 v0, 0x5

    .line 1085
    goto :goto_0

    .line 1088
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const-string v1, "[TCP]socket is not open"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const/4 v0, 0x5

    .line 1090
    nop

    .line 1097
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-virtual {v1, v0, p0}, Lcom/mediatek/internal/telephony/cat/BipService;->openChannelCompleted(ILcom/mediatek/internal/telephony/cat/Channel;)V

    .line 1098
    return-void
.end method


# virtual methods
.method public blacklist closeChannel()I
    .locals 4

    .line 1100
    const/4 v0, 0x0

    .line 1101
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[TCP]closeChannel."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const/4 v1, 0x0

    .line 1104
    .local v1, "closeChannelThread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->requestStop()V

    .line 1106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1108
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;-><init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1130
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1131
    return v0
.end method

.method public blacklist getTxAvailBufferSize()I
    .locals 4

    .line 1254
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    const-string v1, "[BIP]"

    if-nez v0, :cond_0

    .line 1255
    const-string v0, "[TCP]getTxAvailBufferSize - mTxBuffer null:"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const/4 v0, 0x0

    return v0

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    sub-int/2addr v0, v2

    .line 1259
    .local v0, "txRemaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TCP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    return v0
.end method

.method public blacklist openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .locals 4
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 996
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mNetwork:Landroid/net/Network;

    .line 998
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLinkMode:I

    if-nez v2, :cond_0

    .line 999
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;-><init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1042
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1043
    const/16 v0, 0xa

    goto :goto_0

    .line 1044
    :cond_0
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLinkMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1045
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;-><init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1058
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1059
    const/4 v2, 0x4

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1061
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v0

    .line 1062
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1063
    const-string v2, "[BIP]"

    const-string v3, "[TCP]openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    iput v2, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1066
    :cond_1
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1067
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1069
    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .locals 8
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[TCP]new receiveData method"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const/4 v1, 0x5

    if-nez p2, :cond_0

    .line 1268
    const-string v2, "[BIP]"

    const-string v3, "[TCP]rdr is null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return v1

    .line 1272
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TCP]receiveData mRxBufferCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRxBufferOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1276
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v2, p1, :cond_3

    .line 1278
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    if-eqz v4, :cond_2

    .line 1280
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v4, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1285
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1286
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1287
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    if-nez v4, :cond_1

    .line 1288
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1293
    :cond_1
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1294
    monitor-exit v2

    .line 1298
    goto :goto_0

    .line 1282
    :cond_2
    const-string v3, "[BIP]"

    const-string v4, "[TCP]mRxBuffer or rdr.buffer is null 1"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    monitor-exit v2

    return v1

    .line 1294
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1295
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_0
    move-exception v2

    .line 1296
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[TCP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return v1

    .line 1300
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v2, "[BIP]"

    const-string v4, "[TCP]rx buffer is insufficient !!!"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1303
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    if-eqz v4, :cond_4

    .line 1304
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1310
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1311
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1312
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1313
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1314
    :try_start_5
    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1315
    const/16 v0, 0x9

    .line 1319
    nop

    .line 1321
    :goto_0
    return v0

    .line 1306
    :cond_4
    :try_start_6
    const-string v3, "[BIP]"

    const-string v4, "[TCP]mRxBuffer or rdr.buffer is null 2"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    monitor-exit v2

    return v1

    .line 1313
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1316
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_1
    move-exception v2

    .line 1317
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[TCP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    return v1
.end method

.method public blacklist receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .locals 10
    .param p1, "requestCount"    # I

    .line 1135
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1136
    .local v0, "ret":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TCP]receiveData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v1, p1, :cond_0

    .line 1142
    :try_start_0
    const-string v1, "[TCP]Start to copy data from buffer"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v1, v2, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1145
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1146
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1147
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v1

    .line 1149
    :goto_0
    goto :goto_5

    .line 1151
    :cond_0
    move v1, p1

    .line 1152
    .local v1, "needCopy":I
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1153
    .local v4, "canCopy":I
    const/4 v5, 0x0

    .line 1154
    .local v5, "countCopied":I
    const/4 v6, 0x0

    .line 1156
    .local v6, "canExitLoop":Z
    :goto_1
    if-nez v6, :cond_3

    .line 1157
    if-le v1, v4, :cond_1

    .line 1159
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1162
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1163
    add-int/2addr v5, v4

    .line 1164
    sub-int/2addr v1, v4

    .line 1166
    :goto_2
    goto :goto_3

    .line 1165
    :catch_1
    move-exception v7

    goto :goto_2

    .line 1169
    :cond_1
    :try_start_2
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1172
    add-int/2addr v5, v1

    .line 1173
    const/4 v1, 0x0

    .line 1175
    goto :goto_3

    .line 1174
    :catch_2
    move-exception v7

    .line 1178
    :goto_3
    if-nez v1, :cond_2

    .line 1179
    const/4 v6, 0x1

    goto :goto_1

    .line 1182
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v7, v8, v3, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    .line 1183
    .local v7, "count":I
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1184
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v7    # "count":I
    goto :goto_4

    .line 1185
    :catch_3
    move-exception v7

    .line 1186
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "[TCP]receiveData - IOE"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    .end local v7    # "e":Ljava/io/IOException;
    :goto_4
    goto :goto_1

    .line 1191
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

    .line 1195
    const-string v0, " count:"

    const/4 v1, 0x0

    .line 1196
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1198
    .local v2, "tmpBuffer":[B
    const/4 v3, 0x5

    const-string v4, "[BIP]"

    if-nez p1, :cond_0

    .line 1199
    const-string v0, "[TCP]sendData - data null:"

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    return v3

    .line 1203
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    if-nez v5, :cond_1

    .line 1204
    const-string v0, "[TCP]sendData - mTxBuffer null:"

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    return v3

    .line 1208
    :cond_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v5, v5

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    sub-int/2addr v5, v6

    .line 1211
    .local v5, "txRemaining":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]sendData: size of data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]sendData: size of buffer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2

    if-ne v7, p2, :cond_2

    .line 1216
    move-object v2, p1

    .line 1217
    array-length v6, p1

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1220
    :cond_2
    :try_start_1
    array-length v6, p1

    if-lt v5, v6, :cond_3

    .line 1221
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    array-length v10, p1

    invoke-static {p1, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    array-length v9, p1

    add-int/2addr v6, v9

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    goto :goto_0

    .line 1224
    :cond_3
    const-string v6, "[TCP]sendData - tx buffer is not enough"

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1228
    :goto_0
    nop

    .line 1229
    :try_start_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    move-object v2, v6

    .line 1231
    :goto_1
    if-ne p2, v7, :cond_4

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 1234
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v0, v2, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1237
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1238
    iput v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1243
    goto :goto_2

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "[TCP]sendData - Exception"

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1242
    return v3

    .line 1249
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    goto :goto_3

    .line 1226
    :catch_1
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return v3

    .line 1245
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 1246
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v3, "[UDP]sendData NE"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1248
    const/4 v1, 0x5

    .line 1250
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :goto_3
    return v1
.end method
