.class Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    .line 393
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 396
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 399
    return-void
.end method
