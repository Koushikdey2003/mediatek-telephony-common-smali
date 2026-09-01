.class Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtkSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhbBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V
    .locals 0

    .line 2604
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;

    .line 2604
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2606
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2607
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$900(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 2608
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2609
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    const-string v2, "SubBroadCastReceiver receive ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 2610
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$902(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z

    .line 2611
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V

    goto/16 :goto_1

    .line 2612
    :cond_0
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2620
    const-string v1, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2621
    .local v1, "phoneid":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ACTION_RADIO_TECHNOLOGY_CHANGED] phoneid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 2622
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1100(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1200(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 2623
    const-string v5, "CDMA"

    .line 2624
    .local v5, "cdmaPhoneName":Ljava/lang/String;
    const/16 v6, 0x1f4

    .line 2625
    .local v6, "delayedTime":I
    const-string v7, "phoneName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2626
    .local v7, "activePhoneName":Ljava/lang/String;
    const-string v8, "subscription"

    invoke-virtual {p2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2627
    .local v4, "subid":I
    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ACTION_RADIO_TECHNOLOGY_CHANGED] activePhoneName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " | subid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 2629
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2630
    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v8, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V

    .line 2631
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    const/16 v3, 0x402

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v8, v6

    invoke-virtual {v2, v3, v8, v9}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2633
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1300(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    goto :goto_0

    .line 2636
    .end local v1    # "phoneid":I
    .end local v4    # "subid":I
    .end local v5    # "cdmaPhoneName":Ljava/lang/String;
    .end local v6    # "delayedTime":I
    .end local v7    # "activePhoneName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2637
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] ACTION_BOOT_COMPLETED mPendingPhbNotify : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 2638
    invoke-static {v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2637
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 2639
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2640
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V

    .line 2641
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1402(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z

    goto :goto_1

    .line 2636
    :cond_2
    :goto_0
    nop

    .line 2644
    :cond_3
    :goto_1
    return-void
.end method
