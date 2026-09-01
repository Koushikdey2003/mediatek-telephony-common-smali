.class Lcom/mediatek/internal/telephony/NrMap$MtkHandler;
.super Landroid/os/Handler;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 468
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    .line 469
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 470
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/16 v4, 0xc9

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 515
    .local v0, "listen":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 516
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/NrMap;->access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v5

    move v0, v5

    .line 517
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ServiceState;

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/NrMap;->access$1602(Lcom/mediatek/internal/telephony/NrMap;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 519
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SERVICE_STATE_CHANGE camp_SA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/NrMap;->access$1700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " listening="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 522
    .local v2, "wwanPsRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_1

    .line 523
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    .line 524
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/NrMap;->access$1702(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 525
    if-eqz v0, :cond_6

    .line 526
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$1500(Lcom/mediatek/internal/telephony/NrMap;)V

    goto/16 :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1702(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 531
    goto/16 :goto_0

    .line 517
    .end local v2    # "wwanPsRegState":Landroid/telephony/NetworkRegistrationInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 488
    .end local v0    # "listen":Z
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/NrMap;->access$1000(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v0

    .line 489
    .local v0, "permission":Z
    const/4 v1, 0x0

    .line 490
    .local v1, "listen":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 491
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v4

    move v1, v4

    .line 492
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 493
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_REQUEST_LISTENER_UPDATE listening="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez v0, :cond_3

    .line 497
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 498
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1102(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 499
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 501
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1300(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 502
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1200(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 499
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 503
    :cond_3
    if-eqz v1, :cond_4

    .line 504
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1500(Lcom/mediatek/internal/telephony/NrMap;)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$800(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 508
    goto :goto_0

    .line 492
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 476
    .end local v0    # "permission":Z
    .end local v1    # "listen":Z
    :cond_5
    const/4 v0, 0x0

    .line 477
    .local v0, "start":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 478
    :try_start_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v2

    move v0, v2

    .line 479
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 480
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_REQUEST_LOCATION_UPDATE started="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz v0, :cond_6

    .line 482
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    .line 483
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$800(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationListener;

    move-result-object v2

    const/4 v3, 0x0

    .line 482
    const-string v4, "network"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 534
    .end local v0    # "start":Z
    :cond_6
    :goto_0
    return-void

    .line 479
    .restart local v0    # "start":Z
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method
