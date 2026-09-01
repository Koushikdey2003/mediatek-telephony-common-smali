.class public Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;
.super Ljava/lang/Object;
.source "ServiceStateTrackerExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;


# static fields
.field private static final blacklist CARD_TYPE_CSIM:I = 0x2

.field private static final blacklist CARD_TYPE_NONE:I = 0x0

.field private static final blacklist CARD_TYPE_RUIM:I = 0x4

.field private static final blacklist CARD_TYPE_USIM:I = 0x1

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final blacklist TAG:Ljava/lang/String; = "SSTExt"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 53
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private blacklist getSupportCardType(I)[Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "property":Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, "prop":Ljava/lang/String;
    const/4 v2, 0x0

    .line 204
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_3

    sget-object v3, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v4, v3

    if-lt p1, v4, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    aget-object v3, v3, p1

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 210
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 212
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportCardType slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prop value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    if-eqz v2, :cond_2

    array-length v4, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 214
    return-object v2

    .line 205
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportCardType: invalid slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 206
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist isCdma4GCard(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 222
    .local v1, "cardType":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->getSupportCardType(I)[Ljava/lang/String;

    move-result-object v0

    .line 223
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 224
    const-string v3, "isCdma4GCard, get non support card type"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 225
    return v2

    .line 229
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 230
    aget-object v4, v0, v3

    const-string v5, "USIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_1
    aget-object v4, v0, v3

    const-string v5, "RUIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 234
    :cond_2
    aget-object v4, v0, v3

    const-string v5, "CSIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    or-int/lit8 v1, v1, 0x2

    .line 229
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdma4GCard, cardType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 239
    and-int/lit8 v3, v1, 0x4

    if-gtz v3, :cond_5

    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_6

    :cond_5
    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_6

    .line 242
    const/4 v2, 0x1

    return v2

    .line 244
    :cond_6
    return v2
.end method

.method private blacklist isCdmaLteDcSupport()Z
    .locals 3

    .line 191
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist allowSpnDisplayed()Z
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getMtkLteRsrpThreshold()[I
    .locals 1

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMtkLteRssnrThreshold()[I
    .locals 1

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMtkRsrpOnly()Z
    .locals 1

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBroadcastEmmrrsPsResume(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isImeiLocked()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNeedDisableIVSR()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRoamingForSpecialSIM(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "strServingPlmn"    # Ljava/lang/String;
    .param p2, "strHomePlmn"    # Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->isCdmaLteDcSupport()Z

    move-result v0

    .line 257
    .local v0, "cdmaLteSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingForSpecialSIM, strServingPlmn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", strHomePlmn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cdmaLteSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 259
    if-eqz v0, :cond_1

    .line 260
    if-eqz p1, :cond_1

    const-string v1, "460"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    const-string v1, "45403"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45404"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "special SIM, force roaming. IMSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSTExt"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x1

    return v1

    .line 267
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isSupportRatBalancing()Z
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 159
    const-string v0, "SSTExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public blacklist needAutoSwitchRatMode(ILjava/lang/String;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "nwPlmn"    # Ljava/lang/String;

    .line 169
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist needBlankDisplay(I)Z
    .locals 1
    .param p1, "cause"    # I

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needBrodcastAcmt(II)Z
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "errorCause"    # I

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needEMMRRS()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needIgnoreFemtocellUpdate(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "cause"    # I

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needIgnoredState(III)Z
    .locals 3
    .param p1, "state"    # I
    .param p2, "newState"    # I
    .param p3, "cause"    # I

    .line 124
    const/4 v0, 0x1

    const-string v1, "SSTExt"

    if-nez p1, :cond_0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 127
    const-string v2, "set dontUpdateNetworkStateFlag for searching state"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v0

    .line 132
    :cond_0
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 134
    if-nez p1, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 137
    const-string v2, "set dontUpdateNetworkStateFlag for REG_DENIED with cause"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v0

    .line 140
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 143
    const-string v2, "set dontUpdateNetworkStateFlag for NOT_REG_AND_NOT_SEARCH with cause"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v0

    .line 149
    :cond_2
    const-string v0, "clear dontUpdateNetworkStateFlag"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needRejectCauseNotification(I)Z
    .locals 1
    .param p1, "cause"    # I

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needSpnRuleShowPlmnOnly()Z
    .locals 2

    .line 89
    const-string v0, "ro.vendor.mtk_cta_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needToShowCsgId()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onUpdateSpnDisplay(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;I)Ljava/lang/String;
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "ss"    # Lmediatek/telephony/MtkServiceState;
    .param p3, "phoneId"    # I

    .line 72
    return-object p1
.end method

.method public blacklist onUpdateSpnDisplayForIms(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "ss"    # Lmediatek/telephony/MtkServiceState;
    .param p3, "lac"    # I
    .param p4, "phoneId"    # I
    .param p5, "simRecords"    # Ljava/lang/Object;

    .line 187
    return-object p1
.end method

.method public blacklist operatorDefinedInternationalRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showEccForIms()Z
    .locals 1

    .line 275
    const/4 v0, 0x0

    return v0
.end method
