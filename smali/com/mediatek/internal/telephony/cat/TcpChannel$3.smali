.class Lcom/mediatek/internal/telephony/cat/TcpChannel$3;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/TcpChannel;->closeChannel()I
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

    .line 1108
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api run()V
    .locals 5

    monitor-enter p0

    .line 1111
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 1112
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1123
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1120
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1114
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 1115
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1117
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 1118
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1123
    :cond_2
    :try_start_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1124
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1125
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1127
    goto :goto_2

    .line 1123
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel$3;
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 1120
    :catch_1
    move-exception v2

    .line 1121
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_7
    const-string v3, "[BIP]"

    const-string v4, "[TCP]closeChannel - IOE"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1123
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1124
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1125
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1127
    nop

    .line 1128
    :goto_2
    monitor-exit p0

    return-void

    .line 1123
    :goto_3
    :try_start_9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1124
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1125
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1127
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1110
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
