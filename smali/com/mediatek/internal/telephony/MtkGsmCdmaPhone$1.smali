.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 547
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "action":Ljava/lang/String;
    const-string v1, "phone"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 555
    .local v1, "phoneId":I
    const-string v2, "IS_FORCE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 556
    .local v2, "isForce":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CARRIER_CONFIG_CHANGED : IS_FORCE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 557
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->access$000(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I

    move-result v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 563
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 565
    :cond_1
    return-void

    .line 559
    :cond_2
    :goto_0
    return-void
.end method
