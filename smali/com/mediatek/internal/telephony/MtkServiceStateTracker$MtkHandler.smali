.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;
.super Landroid/os/Handler;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkHandler"
.end annotation


# instance fields
.field private blacklist pending:Z

.field private blacklist polling:Z

.field private blacklist stop:Z

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 420
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 421
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 422
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    .line 423
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    .line 424
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 425
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x7a

    const-string v4, "MtkHandler: stop MTK turbo"

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v2, v9, :cond_1f

    const/4 v11, 0x0

    if-eq v2, v8, :cond_1a

    const/16 v12, 0x13

    const-string v13, "Turbo stop due to wrong object"

    const/4 v14, 0x0

    if-eq v2, v7, :cond_12

    if-eq v2, v6, :cond_d

    if-eq v2, v5, :cond_a

    packed-switch v2, :pswitch_data_0

    .line 706
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should not be here msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 470
    :pswitch_0
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 471
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 472
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v2

    .line 473
    .local v2, "connected":Z
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RECHECK_NRM_STATUS connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 475
    const/16 v3, 0x7b

    if-eqz v2, :cond_0

    .line 477
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 479
    :cond_0
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 481
    goto/16 :goto_7

    .line 648
    .end local v2    # "connected":Z
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;

    .line 649
    .local v2, "mtkplmn":Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 650
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 651
    invoke-virtual {v3}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v3

    .line 652
    .local v3, "connected":Z
    if-eqz v3, :cond_4

    .line 653
    if-nez v2, :cond_1

    .line 654
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "EVENT_UPDATE_PLMN should not be happened here"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 655
    return-void

    .line 656
    :cond_1
    iget-boolean v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    if-nez v4, :cond_2

    iget-boolean v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    if-nez v4, :cond_2

    .line 657
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "updateTurboPLMN comes after connected, skip"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 658
    return-void

    .line 660
    :cond_2
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MtkHandler: EVENT_UPDATE_PLMN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 661
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    iget-boolean v13, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    iget-object v14, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    iget-boolean v15, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 663
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3502(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Z)Z

    .line 665
    :cond_3
    return-void

    .line 668
    :cond_4
    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    if-eqz v5, :cond_5

    .line 669
    return-void

    .line 672
    :cond_5
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 673
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 674
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 675
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v5

    if-nez v5, :cond_8

    .line 676
    :cond_7
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTurboPLMN turboSS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 678
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    const/4 v13, 0x1

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 679
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lmediatek/telephony/MtkServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 678
    const-string v16, ""

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    .line 681
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 683
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 685
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    .line 686
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 688
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v5, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v5}, Lmediatek/telephony/MtkServiceState;-><init>()V

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2202(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Lmediatek/telephony/MtkServiceState;)Lmediatek/telephony/MtkServiceState;

    goto/16 :goto_7

    .line 694
    :cond_8
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    if-nez v4, :cond_9

    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 695
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "it\'s updateTurboPLMN when turboSS is OOS, skip"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 696
    return-void

    .line 698
    :cond_9
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update aosp PLMN mtkplmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 699
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$4100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$4000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    iget-boolean v7, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    iget-object v8, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    iget-boolean v9, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    iget-object v10, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    .line 703
    goto/16 :goto_7

    .line 432
    .end local v2    # "mtkplmn":Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
    .end local v3    # "connected":Z
    :pswitch_2
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v12

    invoke-interface {v2, v12, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 485
    :cond_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 486
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 487
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 488
    .local v3, "opNames":[Ljava/lang/String;
    if-eqz v3, :cond_b

    array-length v4, v3

    if-lt v4, v8, :cond_b

    .line 489
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    aget-object v5, v3, v14

    aget-object v6, v3, v10

    aget-object v7, v3, v9

    invoke-virtual {v4, v5, v6, v7}, Lmediatek/telephony/MtkServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v3    # "opNames":[Ljava/lang/String;
    :cond_b
    goto/16 :goto_7

    .line 492
    :cond_c
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v4, "Turbo EVENT OPERATOR wrong object"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 494
    goto/16 :goto_7

    .line 555
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 556
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_11

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_11

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Landroid/hardware/radio/V1_5/RegStateResult;

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 561
    :cond_e
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/radio/V1_5/RegStateResult;

    .line 563
    .local v3, "dataRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    const/4 v4, 0x0

    .line 564
    .local v4, "isUsingCarrierAggregation":Z
    iget v5, v3, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    .line 565
    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    .line 566
    .local v5, "networkType":I
    if-ne v5, v12, :cond_f

    .line 567
    const/4 v4, 0x1

    .line 568
    const/16 v5, 0xd

    .line 570
    :cond_f
    const/4 v6, 0x0

    .line 571
    .local v6, "isEndcAvailable":Z
    const/4 v7, 0x0

    .line 572
    .local v7, "isNrAvailable":Z
    const/4 v8, 0x0

    .line 573
    .local v8, "isDcNrRestricted":Z
    iget-object v11, v3, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v11}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v11

    if-ne v11, v9, :cond_10

    .line 577
    iget-object v9, v3, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 578
    invoke-virtual {v9}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v9

    .line 580
    .local v9, "eutranInfo":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    iget-object v11, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v8, v11, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 581
    iget-object v11, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v7, v11, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 582
    iget-object v11, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v6, v11, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 584
    .end local v9    # "eutranInfo":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    :cond_10
    new-instance v9, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v12, 0x2

    const/4 v13, 0x1

    iget v14, v3, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    iget v15, v3, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x10

    new-instance v11, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v11, v10, v10}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    const-string v20, ""

    move-object v10, v11

    move-object v11, v9

    move/from16 v16, v15

    move v15, v5

    move/from16 v22, v8

    move/from16 v23, v7

    move/from16 v24, v6

    move-object/from16 v25, v10

    move/from16 v26, v4

    invoke-direct/range {v11 .. v26}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    .line 602
    .local v9, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v10

    .line 603
    .local v10, "registrationState":I
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v11, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I

    move-result v11

    .line 604
    .local v11, "serviceState":I
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12, v11}, Lmediatek/telephony/MtkServiceState;->setDataRegState(I)V

    .line 605
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12, v9}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 606
    goto/16 :goto_7

    .line 558
    .end local v3    # "dataRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    .end local v4    # "isUsingCarrierAggregation":Z
    .end local v5    # "networkType":I
    .end local v6    # "isEndcAvailable":Z
    .end local v7    # "isNrAvailable":Z
    .end local v8    # "isDcNrRestricted":Z
    .end local v9    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v10    # "registrationState":I
    .end local v11    # "serviceState":I
    :cond_11
    :goto_0
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v3, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 559
    return-void

    .line 498
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_12
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 499
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_19

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_19

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, Landroid/hardware/radio/V1_5/RegStateResult;

    if-nez v4, :cond_13

    goto/16 :goto_1

    .line 504
    :cond_13
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/radio/V1_5/RegStateResult;

    .line 506
    .local v4, "voiceRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    iget v5, v4, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    .line 507
    .restart local v5    # "networkType":I
    if-ne v5, v12, :cond_14

    .line 508
    const/16 v5, 0xd

    .line 510
    :cond_14
    new-instance v6, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v16, 0x1

    const/16 v17, 0x1

    iget v7, v4, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    iget v8, v4, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v24, ""

    move-object v15, v6

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v8

    invoke-direct/range {v15 .. v28}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    .line 524
    .local v6, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v7

    .line 525
    .local v7, "registrationState":I
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v9, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lmediatek/telephony/MtkServiceState;->setVoiceRegState(I)V

    .line 526
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v8, v6}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 528
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 529
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_15
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 530
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 531
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v8

    if-nez v8, :cond_18

    .line 533
    :cond_16
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v8}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v8

    .line 534
    .local v8, "display_type":I
    if-nez v8, :cond_17

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v9

    invoke-virtual {v9}, Lmediatek/telephony/MtkServiceState;->getVoiceNetworkType()I

    move-result v8

    .line 535
    :cond_17
    new-instance v9, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v9, v8, v14}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    .line 538
    .local v9, "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MtkHandler turboSS="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " displayInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 539
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 540
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 541
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v10

    invoke-virtual {v10}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v10

    if-nez v10, :cond_18

    .line 543
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 545
    .end local v8    # "display_type":I
    .end local v9    # "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    :cond_18
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    .line 547
    iget-boolean v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    if-eqz v8, :cond_24

    .line 548
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 549
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 501
    .end local v4    # "voiceRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    .end local v5    # "networkType":I
    .end local v6    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v7    # "registrationState":I
    :cond_19
    :goto_1
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v3, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 502
    return-void

    .line 610
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_1a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 611
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 612
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkRsrpOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_1b
    move-object v3, v11

    .line 611
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 613
    .local v3, "mtkRsrpOnly":Z
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 614
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRsrpThreshold()[I

    move-result-object v4

    goto :goto_3

    :cond_1c
    move-object v4, v11

    .line 615
    .local v4, "mtkLteRsrpThreshold":[I
    :goto_3
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 616
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRssnrThreshold()[I

    move-result-object v11

    goto :goto_4

    :cond_1d
    nop

    :goto_4
    move-object v5, v11

    .line 621
    .local v5, "mtkLteRssnrThreshold":[I
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1e

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1e

    .line 622
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v7, Lmediatek/telephony/MtkSignalStrength;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 623
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Landroid/telephony/SignalStrength;

    invoke-direct {v7, v8, v9}, Lmediatek/telephony/MtkSignalStrength;-><init>(ILandroid/telephony/SignalStrength;)V

    .line 622
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2802(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 625
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 626
    .local v6, "config":Landroid/os/PersistableBundle;
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v7

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v6, v8}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 629
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v7

    check-cast v7, Lmediatek/telephony/MtkSignalStrength;

    .line 630
    .local v7, "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    invoke-virtual {v7, v3}, Lmediatek/telephony/MtkSignalStrength;->setMtkRsrpOnly(Z)V

    .line 631
    invoke-virtual {v7, v4}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRsrpThreshold([I)V

    .line 632
    invoke-virtual {v7, v5}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRssnrThreshold([I)V

    .line 633
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v6, v8}, Lmediatek/telephony/MtkSignalStrength;->updateMtkLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 634
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyMtkSignalStrength level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " raw:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 635
    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 634
    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 636
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 637
    .end local v6    # "config":Landroid/os/PersistableBundle;
    .end local v7    # "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    goto/16 :goto_7

    .line 638
    :cond_1e
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 640
    goto/16 :goto_7

    .line 436
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "mtkRsrpOnly":Z
    .end local v4    # "mtkLteRsrpThreshold":[I
    .end local v5    # "mtkLteRssnrThreshold":[I
    :cond_1f
    :goto_5
    :pswitch_3
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 437
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 438
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v2

    .line 439
    .local v2, "connected":Z
    if-nez v2, :cond_25

    iget-boolean v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    if-eqz v9, :cond_20

    goto/16 :goto_8

    .line 444
    :cond_20
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v9, 0x78

    if-ne v4, v9, :cond_21

    .line 445
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v9, "MtkHandler: EVENT_RIL_READY"

    invoke-virtual {v4, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 446
    :cond_21
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v3, :cond_22

    .line 447
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v4, "MtkHandler: EVENT_RESTART_TURBO"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 449
    :cond_22
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v4, "MtkHandler: EVENT_NETWORK_STATE_CHANGED"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 450
    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    if-ne v3, v10, :cond_23

    .line 451
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 452
    return-void

    .line 456
    :cond_23
    :goto_6
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    .line 457
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 458
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v4, v5, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 457
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 460
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 461
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 460
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 463
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 464
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 463
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 466
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 467
    nop

    .line 708
    .end local v2    # "connected":Z
    :cond_24
    :goto_7
    return-void

    .line 440
    .restart local v2    # "connected":Z
    :cond_25
    :goto_8
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 441
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 442
    return-void

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
