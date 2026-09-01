.class public final Lcom/mediatek/internal/telephony/MtkDisplayInfoController;
.super Lcom/android/internal/telephony/DisplayInfoController;
.source "MtkDisplayInfoController.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 48
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->quitNow()V

    .line 52
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    invoke-direct {v0, p1, p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 53
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->sendMessage(I)V

    .line 54
    return-void
.end method
