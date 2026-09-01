.class Lcom/mediatek/internal/telephony/cat/SendDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field blacklist mTxBufferSize:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 394
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    .line 395
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    .line 396
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 400
    if-nez p1, :cond_0

    .line 401
    return-void

    .line 406
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 407
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    const/16 v2, 0xff

    if-lt v1, v2, :cond_1

    .line 410
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    :goto_0
    return-void
.end method
