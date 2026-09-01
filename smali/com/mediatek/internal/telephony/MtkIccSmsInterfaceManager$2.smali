.class Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 1131
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v1, "Receive intent"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v1, "Receive wipe intent"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1136
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;-><init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;)V

    .line 1153
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1155
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
