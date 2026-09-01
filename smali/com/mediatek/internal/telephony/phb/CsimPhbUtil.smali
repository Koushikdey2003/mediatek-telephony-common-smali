.class public Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;
.super Landroid/os/Handler;
.source "CsimPhbUtil.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CsimPhbUtil"

.field private static final blacklist MAX_NAME_LENGTH:I = 0xe

.field private static final blacklist MAX_NUMBER_LENGTH:I = 0x14

.field private static final blacklist MAX_SIM_CNT:I = 0x4

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static blacklist sAdnRecordSize:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    .line 61
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static blacklist clearAdnRecordSize()V
    .locals 3

    .line 93
    const-string v0, "CsimPhbUtil"

    const-string v1, "[clearAdnRecordSize]"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 96
    const/4 v2, -0x1

    aput v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist getPhbRecordInfo(Landroid/os/Message;)V
    .locals 6
    .param p0, "response"    # Landroid/os/Message;

    .line 76
    sget-object v0, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/16 v1, 0x14

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 77
    const/16 v1, 0xe

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getPhbRecordInfo] sAdnRecordSize[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    aget v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CsimPhbUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :cond_0
    return-void
.end method

.method public static blacklist hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z
    .locals 4
    .param p0, "fileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 183
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 184
    return v1

    .line 187
    :cond_0
    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v0, :cond_3

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 191
    sget-object v2, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "cardType":Ljava/lang/String;
    const-string v3, "CSIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 193
    return v1

    .line 190
    .end local v2    # "cardType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_3
    return v1
.end method

.method public static blacklist initPhbStorage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p0, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    const/4 v0, -0x1

    .line 130
    .local v0, "totalSize":I
    const/4 v1, -0x1

    .line 131
    .local v1, "usedRecord":I
    if-eqz p0, :cond_3

    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 133
    const/4 v1, 0x0

    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initPhbStorage] Current total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", used:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", update total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CsimPhbUtil"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    aget v3, v2, v4

    const/4 v6, -0x1

    if-le v3, v6, :cond_2

    .line 149
    aget v3, v2, v5

    add-int/2addr v3, v1

    .line 150
    .local v3, "newUsed":I
    aget v2, v2, v4

    add-int/2addr v2, v0

    .line 151
    .local v2, "newTotal":I
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->setPhbRecordStorageInfo(II)V

    .line 152
    .end local v2    # "newTotal":I
    .end local v3    # "newUsed":I
    goto :goto_1

    .line 154
    :cond_2
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->setPhbRecordStorageInfo(II)V

    .line 157
    :cond_3
    :goto_1
    return-void
.end method

.method public static blacklist isUsingGsmPhbReady(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z
    .locals 5
    .param p0, "fileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 210
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 211
    return v1

    .line 213
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    instance-of v2, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v2, :cond_3

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 217
    sget-object v3, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "cardType":Ljava/lang/String;
    const-string v4, "CSIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const-string v4, "USIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 219
    return v1

    .line 216
    .end local v3    # "cardType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_2
    return v0

    .line 224
    :cond_3
    return v0
.end method

.method private static blacklist setPhbRecordStorageInfo(II)V
    .locals 2
    .param p0, "totalSize"    # I
    .param p1, "usedRecord"    # I

    .line 166
    sget-object v0, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 167
    const/4 v1, 0x1

    aput p0, v0, v1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setPhbRecordStorageInfo] usedRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CsimPhbUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public static blacklist updatePhbStorageInfo(I)Z
    .locals 6
    .param p0, "update"    # I

    .line 108
    sget-object v0, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->sAdnRecordSize:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 109
    .local v2, "used":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 111
    .local v0, "total":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updatePhbStorageInfo] used: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", total: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CsimPhbUtil"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 114
    add-int v1, v2, p0

    .line 115
    .local v1, "newUsed":I
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->setPhbRecordStorageInfo(II)V

    .line 116
    return v3

    .line 118
    .end local v1    # "newUsed":I
    :cond_0
    const-string v3, "[updatePhbStorageInfo] Storage info is not ready!"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1
.end method
