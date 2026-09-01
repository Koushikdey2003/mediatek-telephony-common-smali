.class Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "MtkSmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    .line 205
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$3;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$3;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$3;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleIccFull()V

    .line 213
    :cond_0
    return-void
.end method
