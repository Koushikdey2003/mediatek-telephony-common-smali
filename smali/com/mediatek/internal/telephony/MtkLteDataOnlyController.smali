.class public Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;
.super Ljava/lang/Object;
.source "MtkLteDataOnlyController.java"


# static fields
.field private static final blacklist ACTION_CHECK_PERMISSISON_SERVICE:Ljava/lang/String; = "com.mediatek.intent.action.LTE_DATA_ONLY_MANAGER"

.field public static final blacklist CDMA3G_SIM:I = 0x3

.field public static final blacklist CDMA4G_SIM:I = 0x4

.field public static final blacklist CDMA_SIM:I = 0x5

.field private static final blacklist CHECK_PERMISSION_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final blacklist CSIM:Ljava/lang/String; = "CSIM"

.field public static final blacklist ERROR_SIM:I = -0x1

.field public static final blacklist GSM_SIM:I = 0x2

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final blacklist RUIM:Ljava/lang/String; = "RUIM"

.field private static final blacklist SIM:Ljava/lang/String; = "SIM"

.field public static final blacklist SVLTE_RAT_MODE_3G:I = 0x1

.field public static final blacklist SVLTE_RAT_MODE_4G:I = 0x0

.field public static final blacklist SVLTE_RAT_MODE_4G_DATA_ONLY:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MtkLteDataOnlyController"

.field private static final blacklist USIM:Ljava/lang/String; = "USIM"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 58
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method private static blacklist getCdmaSlot()I
    .locals 3

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 223
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v1

    .line 224
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 225
    return v0

    .line 222
    .end local v1    # "phoneType":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getFullIccCardTypeExt()Ljava/lang/String;
    .locals 4

    .line 162
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getCdmaSlot()I

    move-result v0

    .line 163
    .local v0, "slotId":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 166
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "cardType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFullIccCardTypeExt slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",cardType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkLteDataOnlyController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v1
.end method

.method public static blacklist getSimType()I
    .locals 6

    .line 176
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getFullIccCardTypeExt()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "fullUiccType":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 178
    const-string v2, "CSIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "SIM"

    const-string v5, "USIM"

    if-nez v3, :cond_3

    const-string v3, "RUIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    return v1

    .line 188
    :cond_2
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 179
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 180
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const/4 v1, 0x3

    return v1

    .line 185
    :cond_5
    const/4 v1, 0x5

    return v1

    .line 181
    :cond_6
    :goto_2
    const/4 v1, 0x4

    return v1

    .line 193
    :cond_7
    return v1
.end method

.method private blacklist is4GDataOnly()Z
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    const/4 v0, -0x1

    const-string v2, "persist.vendor.radio.cdma_slot"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 145
    .local v0, "cdmaSlotId":I
    nop

    .line 146
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 147
    .local v3, "subId":[I
    if-eqz v3, :cond_2

    .line 148
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/mediatek/internal/telephony/MtkRILConstants;->PREFERRED_NETWORK_MODE:I

    .line 148
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 152
    .local v4, "patternLteDataOnly":I
    const/16 v5, 0x66

    if-ne v4, v5, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 154
    .end local v4    # "patternLteDataOnly":I
    :cond_2
    return v1
.end method

.method public static blacklist isCdma3GCardType()Z
    .locals 2

    .line 218
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getSimType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isCdmaCardType()Z
    .locals 2

    .line 201
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getSimType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getSimType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 202
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getSimType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 201
    :goto_1
    return v0
.end method

.method public static blacklist isCdmaLteCardType()Z
    .locals 2

    .line 210
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getSimType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isSupportTddDataOnlyCheck()Z
    .locals 6

    .line 232
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->isCdmaLteCardType()Z

    move-result v0

    .line 233
    .local v0, "isCdma4gCard":Z
    const-string v1, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 235
    .local v1, "isCdmaLteDcSupport":Z
    const-string v3, "ro.vendor.mtk_tdd_data_only_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 237
    .local v2, "isSupport4gDataOnly":Z
    const/4 v3, 0x0

    .line 238
    .local v3, "checkResult":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 239
    const/4 v3, 0x1

    .line 241
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdma4gCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCdmaLteDcSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSupport4gDataOnly : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSupportTddDataOnlyCheck return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkLteDataOnlyController"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v3
.end method

.method private blacklist startService()V
    .locals 4

    .line 129
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->getCdmaSlot()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 130
    .local v0, "subId":[I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.LTE_DATA_ONLY_MANAGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    const/4 v2, 0x0

    aget v2, v0, v2

    const-string v3, "subscription"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist checkPermission()Z
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->isSupportTddDataOnlyCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->is4GDataOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->startService()V

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkPermission(I)Z
    .locals 5
    .param p1, "subId"    # I

    .line 116
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 117
    .local v0, "slotId":I
    const-string v1, "persist.vendor.radio.cdma_slot"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 118
    .local v1, "cdmaSlotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermission subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cdmaSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkLteDataOnlyController"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-ne v1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->checkPermission()Z

    move-result v2

    return v2

    .line 123
    :cond_0
    return v2
.end method
