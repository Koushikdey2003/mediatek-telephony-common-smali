.class abstract Lcom/mediatek/internal/telephony/cat/MtkValueParser;
.super Ljava/lang/Object;
.source "MtkValueParser.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist removeInvalidCharInItemTextString([BII)I
    .locals 5
    .param p0, "rawValue"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "textLen"    # I

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    .local v0, "isucs2":Ljava/lang/Boolean;
    move v1, p2

    .line 93
    .local v1, "len":I
    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x80

    if-eq v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x3

    if-lt p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7f

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x4

    if-lt p2, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_3

    .line 97
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    if-lez p2, :cond_4

    .line 102
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_4

    .line 103
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    const/16 v4, -0x10

    if-ne v3, v4, :cond_4

    .line 105
    add-int/lit8 v1, v1, -0x1

    .line 102
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_4
    return v1
.end method

.method static blacklist retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "noAlphaUsrCnf"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 126
    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 128
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 129
    .local v1, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 130
    .local v2, "length":I
    if-eqz v2, :cond_0

    .line 132
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 137
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alpha Id length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ValueParser"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, ""

    return-object v3

    .line 147
    .end local v0    # "rawValue":[B
    .end local v1    # "valueIndex":I
    .end local v2    # "length":I
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "Default Message"

    :goto_0
    return-object v0
.end method

.method static blacklist retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 66
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 67
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 69
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 70
    add-int/lit8 v4, v3, -0x1

    .line 73
    .local v4, "textLen":I
    :try_start_0
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    .line 74
    .local v5, "id":I
    invoke-static {v1, v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->removeInvalidCharInItemTextString([BII)I

    move-result v6

    move v4, v6

    .line 75
    add-int/lit8 v6, v2, 0x1

    invoke-static {v1, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "text":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v7, v5, v6}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 81
    .end local v5    # "id":I
    .end local v6    # "text":Ljava/lang/String;
    goto :goto_0

    .line 77
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "ValueParser"

    const-string v7, "retrieveItem fail"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v4    # "textLen":I
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method static blacklist retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 154
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 155
    .local v1, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 157
    .local v2, "length":I
    new-array v3, v2, [B

    .line 159
    .local v3, "nai":[B
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 160
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v6, "valueIndex":I
    :try_start_0
    aget-byte v1, v0, v1

    aput-byte v1, v3, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    move v1, v6

    goto :goto_0

    .line 162
    .end local v5    # "index":I
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 164
    .end local v6    # "valueIndex":I
    .local v1, "valueIndex":I
    :cond_0
    nop

    .line 165
    return-object v3
.end method

.method static blacklist retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 170
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 171
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 174
    .local v2, "target":I
    :try_start_0
    aget-byte v3, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v3, 0xff

    .line 177
    nop

    .line 178
    return v2

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method
