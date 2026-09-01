.class public final Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
.super Lcom/android/internal/telephony/NetworkTypeController;
.source "MtkNetworkTypeController.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "MtkNetworkTypeController"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "displayInfoController"    # Lcom/android/internal/telephony/DisplayInfoController;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected blacklist mtkNeedUpdateNRStateForLegacyState()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist registerForAllEvents()V
    .locals 4

    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/NetworkTypeController;->registerForAllEvents()V

    .line 60
    const-string v0, "MtkNetworkTypeController"

    const-string v1, "registerForAllEvents: register rat changed for TRANSPORT_TYPE_WLAN"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 61
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected blacklist unRegisterForAllEvents()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForAllEvents()V

    .line 69
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 69
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    .line 71
    return-void
.end method
