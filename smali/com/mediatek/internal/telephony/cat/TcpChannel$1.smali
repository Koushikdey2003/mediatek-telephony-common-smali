.class Lcom/mediatek/internal/telephony/cat/TcpChannel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/TcpChannel;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/TcpChannel;

    .line 999
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api run()V
    .locals 9

    monitor-enter p0

    .line 1001
    :try_start_0
    const-string v0, "[BIP]"

    const-string v1, "[TCP]running TCP channel thread"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    const/4 v0, 0x0

    .line 1004
    .local v0, "socketAddress":Ljava/net/InetSocketAddress;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1006
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4, v2, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 1007
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mAddress:Ljava/net/InetAddress;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 1009
    const/16 v4, 0x3a98

    :try_start_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1018
    goto :goto_0

    .line 1010
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel$1;
    :catch_0
    move-exception v5

    .line 1011
    .local v5, "e3":Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]Time out of connect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1014
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    if-eqz v4, :cond_0

    .line 1015
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v1, v4, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 1016
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v2, v4, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 1019
    .end local v5    # "e3":Ljava/net/SocketTimeoutException;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1020
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    const/4 v5, 0x4

    iput v5, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1021
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v5, 0x80

    iput v5, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    goto :goto_1

    .line 1023
    :cond_1
    const-string v4, "[BIP]"

    const-string v5, "[TCP]socket is not connected."

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1025
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1035
    :catch_1
    move-exception v1

    .line 1036
    .local v1, "e2":Ljava/lang/NullPointerException;
    :try_start_4
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TCP]Null pointer tcp socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    goto :goto_2

    .line 1027
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    .line 1028
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[TCP]Fail to create socket"

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1030
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1031
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-boolean v3, v3, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    if-eqz v3, :cond_2

    .line 1032
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v1, v3, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 1033
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v2, v1, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 1038
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    nop

    .line 1039
    :goto_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->access$000(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1040
    monitor-exit p0

    return-void

    .line 1000
    .end local v0    # "socketAddress":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
