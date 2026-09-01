.class Lcom/mediatek/internal/telephony/cat/TcpChannel$2;
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

    .line 1045
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api run()V
    .locals 3

    monitor-enter p0

    .line 1047
    :try_start_0
    const-string v0, "[BIP]"

    const-string v1, "[TCP]running TCP channel thread"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1050
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 1051
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    goto :goto_0

    .line 1052
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel$2;
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/net/SocketException;
    :try_start_2
    const-string v1, "[BIP]"

    const-string v2, "[TCP]Fail to create tcp socket"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    const/4 v2, 0x7

    iput v2, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1056
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_0
    monitor-exit p0

    return-void

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
