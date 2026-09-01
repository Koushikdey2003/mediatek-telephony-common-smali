.class public Lcom/mediatek/internal/telephony/MtkRadioIndication;
.super Lcom/android/internal/telephony/RadioIndication;
.source "MtkRadioIndication.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtkRadioInd"


# instance fields
.field private blacklist mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 69
    return-void
.end method

.method private blacklist getSubId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 112
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 115
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 11
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_2/NetworkScanResult;

    .line 121
    const/4 v0, 0x1

    .line 123
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_2/CellInfo;

    .line 129
    .local v3, "record":Landroid/hardware/radio/V1_2/CellInfo;
    iget v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    .line 176
    iget-object v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    .line 177
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 190
    .local v7, "nLac":I
    if-eqz v2, :cond_0

    const-string v8, "52000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 193
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 192
    invoke-virtual {v9, v10, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 194
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 196
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 195
    invoke-virtual {v8, v9, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 199
    :cond_0
    if-eqz v0, :cond_5

    .line 200
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 201
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 202
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 203
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 209
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    .end local v7    # "nLac":I
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_2
    iget-object v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoLte;

    .line 157
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 160
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 162
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 161
    invoke-virtual {v9, v10, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 163
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 164
    invoke-virtual {v8, v9, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 166
    if-eqz v0, :cond_5

    .line 167
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 168
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 169
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 170
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    .end local v7    # "nLac":I
    :cond_3
    goto :goto_1

    .line 131
    :cond_4
    iget-object v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoGsm;

    .line 132
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 135
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 137
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 136
    invoke-virtual {v9, v10, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 138
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 139
    invoke-virtual {v8, v9, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_5

    .line 142
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 143
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 144
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 145
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 211
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 213
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 215
    .end local v3    # "record":Landroid/hardware/radio/V1_2/CellInfo;
    :cond_6
    goto/16 :goto_0

    .line 216
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 217
    return-void
.end method

.method public blacklist networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .locals 11
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_4/NetworkScanResult;

    .line 222
    const/4 v0, 0x1

    .line 224
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_4/CellInfo;

    .line 230
    .local v3, "record":Landroid/hardware/radio/V1_4/CellInfo;
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 257
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v4

    .line 258
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_4/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v7, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 261
    .local v7, "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 263
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 262
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 264
    iget-object v6, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 266
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 265
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 267
    if-eqz v0, :cond_5

    .line 268
    iget-object v5, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 269
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 270
    iget-object v5, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 271
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 310
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_4/CellInfoLte;
    .end local v7    # "nLac":I
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    .line 311
    invoke-virtual {v6}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_1
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v4

    .line 278
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 291
    .restart local v7    # "nLac":I
    if-eqz v2, :cond_2

    const-string v8, "52000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 292
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 294
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 293
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 295
    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 297
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 296
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 300
    :cond_2
    if-eqz v0, :cond_5

    .line 301
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 302
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 303
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 304
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto :goto_1

    .line 253
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    .end local v7    # "nLac":I
    :cond_3
    goto :goto_1

    .line 232
    :cond_4
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v4

    .line 233
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 236
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 238
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 237
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 239
    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 241
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 240
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 242
    if-eqz v0, :cond_5

    .line 243
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 244
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 245
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 246
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 313
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 315
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 317
    .end local v3    # "record":Landroid/hardware/radio/V1_4/CellInfo;
    :cond_6
    goto/16 :goto_0

    .line 318
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 319
    return-void
.end method

.method public blacklist networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V
    .locals 11
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_5/NetworkScanResult;

    .line 324
    const/4 v0, 0x1

    .line 326
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/CellInfo;

    .line 331
    .local v3, "record":Landroid/hardware/radio/V1_5/CellInfo;
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_3

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 354
    goto/16 :goto_1

    .line 431
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 432
    invoke-virtual {v6}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 411
    :cond_1
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v4

    .line 412
    .local v4, "cellInfoNr":Landroid/hardware/radio/V1_5/CellInfoNr;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget v7, v7, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    .line 415
    .local v7, "nTac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 417
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 416
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 418
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 420
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 419
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 421
    if-eqz v0, :cond_6

    .line 422
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 423
    const-string v8, " 5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 424
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 425
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 358
    .end local v4    # "cellInfoNr":Landroid/hardware/radio/V1_5/CellInfoNr;
    .end local v7    # "nTac":I
    :cond_2
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v4

    .line 359
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_5/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 362
    .local v7, "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 364
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 363
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 365
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 367
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 366
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 368
    if-eqz v0, :cond_6

    .line 369
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 370
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 371
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 372
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 378
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_5/CellInfoLte;
    .end local v7    # "nLac":I
    :cond_3
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v4

    .line 379
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_5/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 392
    .restart local v7    # "nLac":I
    if-eqz v2, :cond_4

    const-string v8, "52000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 393
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 395
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 394
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 396
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 398
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 397
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 401
    :cond_4
    if-eqz v0, :cond_6

    .line 402
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 403
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 404
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 405
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 333
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_5/CellInfoWcdma;
    .end local v7    # "nLac":I
    :cond_5
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v4

    .line 334
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_5/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 337
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 339
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 338
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 340
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 342
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 341
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 343
    if-eqz v0, :cond_6

    .line 344
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 345
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 346
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 347
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 434
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_5/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 435
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 436
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 438
    .end local v3    # "record":Landroid/hardware/radio/V1_5/CellInfo;
    :cond_7
    goto/16 :goto_0

    .line 439
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    .line 440
    return-void
.end method

.method public blacklist radioStateChanged(II)V
    .locals 7
    .param p1, "indicationType"    # I
    .param p2, "radioState"    # I

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    .line 94
    .local v0, "oldState":I
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->radioStateChanged(II)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v1

    .line 96
    .local v1, "newState":I
    if-eq v1, v0, :cond_0

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.RADIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getRadioStateFromInt(I)I

    move-result v3

    .line 99
    .local v3, "transferedState":I
    const-string v4, "radioState"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 100
    const-string v5, "subId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 104
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast for RadioStateChanged: state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 107
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "transferedState":I
    :cond_0
    return-void
.end method

.method public blacklist rilConnected(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCdmaSubscription:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 84
    return-void
.end method
