.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 300
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendEmptyMessage(I)Z

    .line 309
    :cond_0
    return-void

    .line 312
    .end local v0    # "phoneId":I
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/CellIdentity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Landroid/telephony/CellLocation;Z)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSpnDisplay()V

    .line 322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    goto/16 :goto_2

    .line 326
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$402(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Z)Z

    .line 328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->powerOffRadioSafely()V

    goto/16 :goto_2

    .line 329
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "]"

    const-string v4, " simState["

    const/4 v5, -0x1

    const-string v6, "phone"

    const-string v7, "android.telephony.extra.SIM_STATE"

    if-eqz v0, :cond_7

    .line 330
    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 332
    .local v0, "simState":I
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 334
    .local v2, "slotId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    if-ne v2, v5, :cond_8

    .line 335
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM state change, slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 338
    if-ne v4, v0, :cond_5

    .line 339
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$702(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    :cond_5
    return-void

    .line 344
    :cond_6
    if-ne v0, v4, :cond_8

    .line 346
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$802(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$902(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 351
    .end local v0    # "simState":I
    .end local v2    # "slotId":I
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 353
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, "slotId":I
    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, "simState":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_APPLICATION_STATE_CHANGED, slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    if-ne v0, v2, :cond_9

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 361
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDeviceRatMode(I)V

    goto :goto_2

    .line 351
    .end local v0    # "slotId":I
    .end local v1    # "simState":I
    :cond_8
    :goto_1
    nop

    .line 379
    :cond_9
    :goto_2
    return-void
.end method
