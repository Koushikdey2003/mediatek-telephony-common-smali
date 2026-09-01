.class public Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;
.super Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.source "MtkTelephonyNetworkFactory.java"


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected blacklist makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "subscriptionId"    # I

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 72
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 73
    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 74
    return-object v0
.end method

.method protected blacklist mtkIgnoreCapabilityCheck(Landroid/net/NetworkCapabilities;I)Z
    .locals 3
    .param p1, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "action"    # I

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0xa

    .line 81
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "ignoreCapabilityCheck() ignore VSIM PDN"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 98
    return v2

    .line 101
    :cond_1
    return v1

    .line 82
    :cond_2
    :goto_0
    if-ne p2, v2, :cond_4

    .line 83
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isMultiPsAttachSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string v0, "ignoreCapabilityCheck() allow IMS/EIMS pdn activation"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 85
    return v2

    .line 87
    :cond_3
    const-string v0, "ignoreCapabilityCheck() reject IMS/EIMS pdn activation"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 88
    return v1

    .line 90
    :cond_4
    const-string v0, "ignoreCapabilityCheck() ignore IMS/EIMS PDN"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 91
    return v2
.end method
