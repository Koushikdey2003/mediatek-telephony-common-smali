.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionHandler"
.end annotation


# static fields
.field public static final blacklist RILD_SERVER_NAME:Ljava/lang/String; = "rild-vsim"


# instance fields
.field private blacklist mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

.field private blacklist mSocket:Landroid/net/LocalSocket;

.field final synthetic blacklist this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p2, "clientSocket"    # Landroid/net/LocalSocket;
    .param p3, "eventHandler"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 606
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 608
    iput-object p3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 609
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 8

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_0
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const-string v4, "vsim-adaptor"

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 621
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 622
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V

    .line 625
    .local v0, "ioThread":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V

    .line 628
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v0    # "ioThread":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 633
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
