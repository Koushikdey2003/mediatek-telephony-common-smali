.class public Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;
.super Ljava/lang/Object;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation


# static fields
.field public static final blacklist HOST_NAME:Ljava/lang/String; = "/dev/socket/embmsd"


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 133
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist listenConnection(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V
    .locals 11
    .param p1, "eventHandler"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 137
    const-string v0, "listenConnection finally!!"

    const-string v1, "MtkEmbmsAdaptor"

    const-string v2, "listenConnection() - start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 144
    .local v3, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "/dev/socket/embmsd"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 148
    :goto_0
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v4

    .line 149
    .local v4, "socket":Landroid/net/LocalSocket;
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Credentials;->getUid()I

    move-result v5

    .line 150
    .local v5, "clientUid":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$200(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "clientPackageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client\'s uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ,packagename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$200(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x8000000

    .line 153
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 154
    .local v7, "signingInfo":Landroid/content/pm/SigningInfo;
    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v8

    .line 155
    .local v8, "sigs":[Landroid/content/pm/Signature;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->getInstance()Lcom/mediatek/internal/telephony/MtkEmbmsUtils;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->isCertifiedMiddleware([Landroid/content/pm/Signature;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There is a client is accepted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v9, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {v9, v10, v4, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Landroid/net/LocalSocket;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 159
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The client is not certified "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v4    # "socket":Landroid/net/LocalSocket;
    .end local v5    # "clientUid":I
    .end local v6    # "clientPackageName":Ljava/lang/String;
    .end local v7    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v8    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    goto/16 :goto_0

    .line 169
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 165
    :catch_0
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "listenConnection catch Exception"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v3, :cond_1

    .line 171
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_1
    if-eqz v2, :cond_3

    .line 175
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    :goto_2
    goto :goto_3

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 162
    :catch_2
    move-exception v4

    .line 163
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "listenConnection catch IOException"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v3, :cond_2

    .line 171
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_2
    if-eqz v2, :cond_3

    .line 175
    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 181
    :cond_3
    :goto_3
    const-string v0, "listenConnection() - end"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 169
    :goto_4
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v3, :cond_4

    .line 171
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_4
    if-eqz v2, :cond_5

    .line 175
    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    goto :goto_5

    .line 176
    :catch_3
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    throw v4
.end method
