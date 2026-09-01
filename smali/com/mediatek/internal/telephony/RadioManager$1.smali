.class Lcom/mediatek/internal/telephony/RadioManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 408
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$000(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 416
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 418
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveWifiStateChangedIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 425
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget v2, v2, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    const/16 v3, 0x80

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$400(Lcom/mediatek/internal/telephony/RadioManager;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    .line 430
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$502(Lcom/mediatek/internal/telephony/RadioManager;Z)Z

    goto :goto_0

    .line 432
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$600(Lcom/mediatek/internal/telephony/RadioManager;)V

    .line 435
    :cond_7
    :goto_0
    return-void
.end method
