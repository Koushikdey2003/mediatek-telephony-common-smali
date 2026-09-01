.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation


# static fields
.field public static final blacklist HOST_NAME:Ljava/lang/String; = "vsim-adaptor"


# instance fields
.field private blacklist ioThread:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

.field final synthetic blacklist this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 557
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->ioThread:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    return-void
.end method


# virtual methods
.method public blacklist listenConnection()V
    .locals 8

    .line 562
    const-string v0, "listenConnection finally!!"

    const-string v1, "ExternalSimMgr"

    const-string v2, "listenConnection() - start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 569
    .local v3, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "vsim-adaptor"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 573
    :goto_0
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v4

    .line 574
    .local v4, "socket":Landroid/net/LocalSocket;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is a client is accpted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-virtual {v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->stopRecoveryTimer()V

    .line 576
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$300(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V

    .line 577
    new-instance v5, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;

    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    iget-object v7, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    .end local v4    # "socket":Landroid/net/LocalSocket;
    goto :goto_0

    .line 586
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 582
    :catch_0
    move-exception v4

    .line 583
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "listenConnection catch Exception"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v3, :cond_0

    .line 588
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 589
    :cond_0
    if-eqz v2, :cond_2

    .line 591
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 594
    :goto_1
    goto :goto_2

    .line 592
    :catch_1
    move-exception v0

    .line 593
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 579
    :catch_2
    move-exception v4

    .line 580
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "listenConnection catch IOException"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    .end local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v3, :cond_1

    .line 588
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 589
    :cond_1
    if-eqz v2, :cond_2

    .line 591
    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 597
    :cond_2
    :goto_2
    const-string v0, "listenConnection() - end"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void

    .line 586
    :goto_3
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v3, :cond_3

    .line 588
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 589
    :cond_3
    if-eqz v2, :cond_4

    .line 591
    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 594
    goto :goto_4

    .line 592
    :catch_3
    move-exception v0

    .line 593
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    throw v4
.end method
