.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 1575
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWorldPhoneEccStateReceiver, received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 1581
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 1583
    :cond_0
    return-void
.end method
