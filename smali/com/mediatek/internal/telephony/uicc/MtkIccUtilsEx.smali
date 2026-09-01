.class public Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;
.super Lcom/android/internal/telephony/uicc/IccUtils;
.source "MtkIccUtilsEx.java"


# static fields
.field public static final blacklist CDMA_CARD_TYPE_NOT_3GCARD:I = 0x0

.field public static final blacklist CDMA_CARD_TYPE_RUIM_SIM:I = 0x2

.field public static final blacklist CDMA_CARD_TYPE_UIM_ONLY:I = 0x1

.field static final blacklist MTK_LOG_TAG:Ljava/lang/String; = "MtkIccUtilsEx"

.field protected static final blacklist PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field protected static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field protected static final blacklist TAG_FULL_NETWORK_NAME:I = 0x43

.field private static final blacklist TAG_ISIM_VALUE:I = 0x80


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 68
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 75
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccUtils;-><init>()V

    return-void
.end method

.method public static blacklist PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1
    .param p0, "substate"    # I

    .line 251
    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    .line 254
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .local v0, "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 253
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_C_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 252
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_C:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 257
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :goto_0
    return-object v0
.end method

.method public static blacklist checkCdma3gCard(I)I
    .locals 7
    .param p0, "slotId"    # I

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 199
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 201
    .local v2, "cdma3gCardType":I
    const-string v3, "MtkIccUtilsEx"

    if-ltz p0, :cond_8

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt p0, v5, :cond_0

    goto/16 :goto_2

    .line 206
    :cond_0
    aget-object v4, v4, p0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 208
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_1
    if-eqz v1, :cond_6

    .line 212
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "RUIM"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SIM"

    if-eqz v4, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    const/4 v2, 0x2

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "USIM"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 215
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v4, v4, p0

    .line 217
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 218
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 220
    :cond_5
    const/4 v2, 0x0

    .line 224
    :cond_6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCdma3gCard slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prop value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-eqz v1, :cond_7

    array-length v5, v1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cdma3gCardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v2

    .line 202
    :cond_8
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCdma3gCard: invalid slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v2
.end method

.method public static blacklist getPrintableString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "strToPrint":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_0
    move-object v0, p0

    .line 240
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static blacklist parseImpiToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .line 177
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 178
    return-object v0

    .line 181
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 183
    .local v1, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 184
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 186
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ISIM] can\'t find TLV. record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkIccUtilsEx"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v0

    .line 186
    :cond_2
    goto :goto_0
.end method

.method public static blacklist parsePnnToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .line 155
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 156
    return-object v0

    .line 159
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 160
    .local v1, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 166
    :cond_2
    return-object v0
.end method

.method public static blacklist parseSpnToString(I[B)Ljava/lang/String;
    .locals 11
    .param p0, "family"    # I
    .param p1, "data"    # [B

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 92
    return-object v0

    .line 95
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p0, :cond_1

    .line 96
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p0, :cond_b

    .line 98
    aget-byte v1, p1, v1

    .line 99
    .local v1, "encoding":I
    aget-byte v3, p1, v2

    .line 100
    .local v3, "language":I
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 101
    .local v5, "spnData":[B
    array-length v6, p1

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    if-ge v6, v4, :cond_2

    array-length v4, p1

    sub-int/2addr v4, v7

    .line 102
    .local v4, "len":I
    :cond_2
    const/4 v6, 0x0

    invoke-static {p1, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    const/4 v8, 0x0

    .local v8, "numBytes":I
    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_4

    .line 106
    aget-byte v9, v5, v8

    const/16 v10, 0xff

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_3

    .line 107
    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 111
    :cond_4
    :goto_1
    if-nez v8, :cond_5

    .line 112
    const-string v0, ""

    return-object v0

    .line 115
    :cond_5
    const-string v9, "spn decode error: "

    const-string v10, "MtkIccUtilsEx"

    if-eqz v1, :cond_a

    if-eq v1, v2, :cond_8

    if-eq v1, v7, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_a

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    .line 137
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_2

    .line 135
    :cond_6
    new-instance v2, Ljava/lang/String;

    const-string v7, "utf-16"

    invoke-direct {v2, v5, v6, v8, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    .line 121
    :cond_7
    mul-int/lit8 v2, v8, 0x8

    div-int/lit8 v2, v2, 0x7

    invoke-static {v5, v6, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_8
    new-instance v2, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v2, v5, v6, v8, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 129
    .local v2, "spn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 130
    return-object v2

    .line 132
    :cond_9
    mul-int/lit8 v7, v8, 0x8

    div-int/lit8 v7, v7, 0x7

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    .end local v2    # "spn":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v2, v5, v6, v8, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "encoding":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "language":I
    .end local v4    # "len":I
    .end local v5    # "spnData":[B
    .end local v8    # "numBytes":I
    :cond_b
    :goto_2
    return-object v0
.end method
