.class public Lcom/mediatek/internal/telephony/MtkRadioResponse;
.super Lcom/android/internal/telephony/RadioResponse;
.source "MtkRadioResponse.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtkRadioResp"


# instance fields
.field private blacklist mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 67
    return-void
.end method

.method private blacklist getSubId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 136
    const/4 v0, -0x1

    .line 137
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 138
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 139
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 141
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "clear mIsSendChldRequest"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->resetSendChldRequest()V

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "clear mIsSendChldRequest"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->resetSendChldRequest()V

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    const/4 v0, -0x1

    .line 149
    .local v0, "mLac":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 150
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 152
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 153
    .local v3, "ss":Landroid/telephony/ServiceState;
    move-object v4, v2

    check-cast v4, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLac()I

    move-result v0

    .line 155
    .end local v2    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    .end local v3    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 156
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 157
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 158
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->getSubId(I)I

    move-result v6

    .line 157
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 160
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 161
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->getSubId(I)I

    move-result v6

    const/4 v7, 0x0

    .line 160
    invoke-virtual {v5, v6, v3, v7, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 155
    .end local v3    # "mccmnc":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 165
    return-void
.end method

.method public blacklist getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "halRadioAccessFamilyBitmap"    # I

    .line 171
    nop

    .line 172
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertToNetworkTypeBitMask(I)I

    move-result v0

    .line 171
    invoke-static {v0}, Landroid/telephony/MtkRadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    .line 173
    .local v0, "networkType":I
    invoke-super {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 174
    return-void
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "clear mIsSendChldRequest"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->resetSendChldRequest()V

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 98
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleDtmfQueueNext(I)V

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 100
    return-void
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->handleDtmfQueueNext(I)V

    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 109
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 74
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "clear mIsSendChldRequest"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->resetSendChldRequest()V

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
