.class Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;
.super Ljava/lang/Thread;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 87
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 2

    .line 89
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V

    .line 90
    .local v0, "server":Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$100(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->listenConnection(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V

    .line 91
    return-void
.end method
