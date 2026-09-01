.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 344
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiverEx onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 349
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    const-string v3, "Wifi state changed"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x4

    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 353
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Z)V

    .line 354
    .end local v1    # "enabled":Z
    goto/16 :goto_2

    :cond_1
    const-string v1, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    goto/16 :goto_2

    .line 356
    :cond_2
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 357
    const/4 v1, -0x1

    const-string v3, "phone"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 358
    .local v1, "phoneId":I
    const-string v3, "phoneName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "activePhoneName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_RADIO_TECHNOLOGY_CHANGED: phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", activePhoneName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mRealPhoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 361
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-eq v1, v4, :cond_3

    return-void

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)I

    move-result v4

    const-string v5, "GSM"

    const/4 v6, 0x2

    if-eq v4, v2, :cond_4

    .line 364
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 365
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)I

    move-result v4

    if-eq v4, v6, :cond_7

    .line 366
    const-string v4, "CDMA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 367
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 368
    :cond_6
    move v2, v6

    .line 367
    :goto_1
    invoke-static {v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$502(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;I)I

    .line 369
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 371
    .end local v1    # "phoneId":I
    .end local v3    # "activePhoneName":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 372
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: Unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 374
    :goto_2
    return-void
.end method
