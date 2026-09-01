.class Lcom/mediatek/internal/telephony/NrMap$1;
.super Ljava/lang/Object;
.source "NrMap.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/NrMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 580
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "interval":I
    const/4 v1, 0x0

    .line 586
    .local v1, "listen":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 587
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1800(Lcom/mediatek/internal/telephony/NrMap;)I

    move-result v3

    move v0, v3

    .line 588
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v3

    move v1, v3

    .line 589
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 592
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "network location get null, unexpected result"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    .line 594
    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    .line 593
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 596
    return-void

    .line 599
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 600
    .local v3, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 612
    .local v5, "longitude":D
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v7

    if-nez v7, :cond_1

    .line 613
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void

    .line 617
    :cond_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v7, v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/NrMap;->access$2000(Lcom/mediatek/internal/telephony/NrMap;DD)Landroid/location/Address;

    move-result-object v7

    .line 618
    .local v7, "add":Landroid/location/Address;
    if-eqz v7, :cond_9

    .line 620
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, "iso":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 622
    :cond_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 623
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 624
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object v8

    .line 629
    :cond_3
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/NrMap;->access$2102(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 631
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_9

    .line 632
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_4
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 635
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v9

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByCityName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 636
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find a new SA city "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v9

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v10

    const-string v11, "n/a"

    invoke-virtual {v9, v11, v8, v10, v2}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 639
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$2400(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 640
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByIsoName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 641
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v2

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByCityName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 643
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2500()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2600()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "got a empty city"

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    .line 653
    .end local v8    # "iso":Ljava/lang/String;
    :cond_9
    :goto_0
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$2700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 654
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$2800(Lcom/mediatek/internal/telephony/NrMap;)V

    .line 656
    :cond_a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/NrMap;->access$2702(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 657
    return-void

    .line 589
    .end local v3    # "latitude":D
    .end local v5    # "longitude":D
    .end local v7    # "add":Landroid/location/Address;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public whitelist test-api onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 662
    return-void
.end method

.method public whitelist test-api onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 667
    return-void
.end method

.method public whitelist test-api onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 672
    return-void
.end method
