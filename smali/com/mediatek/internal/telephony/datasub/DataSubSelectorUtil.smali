.class public Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;
.super Ljava/lang/Object;
.source "DataSubSelectorUtil.java"


# static fields
.field private static blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DSSelectorUtil"

.field private static final blacklist NO_SIM_STRING_LENGTH:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isActiveSub(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 47
    const/4 v0, -0x1

    .line 48
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 49
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 50
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 52
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v2

    return v2
.end method

.method public static blacklist isAnySimNotReady(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subCount"    # I

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "simCount":I
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 22
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 24
    .local v1, "phoneCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    .line 25
    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->isActiveSub(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no active sub, ignore it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->log(Ljava/lang/String;)V

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    const-string v4, ""

    .line 30
    .local v4, "iccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 31
    .local v5, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v5, :cond_1

    .line 32
    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v4

    .line 35
    :cond_1
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not ready sim exist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", max:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->log(Ljava/lang/String;)V

    .line 37
    return v3

    .line 38
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-le v3, v6, :cond_3

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 24
    .end local v4    # "iccid":Ljava/lang/String;
    .end local v5    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simCount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->log(Ljava/lang/String;)V

    .line 43
    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->DBG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "DSSelectorUtil"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .line 62
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->DBG:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "DSSelectorUtil"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method
