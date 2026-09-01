.class Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
.super Ljava/lang/Object;
.source "BipService.java"


# instance fields
.field public blacklist buffer:[B

.field public blacklist remainingCount:I

.field public blacklist requestCount:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 2735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 2737
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->requestCount:I

    .line 2738
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    return-void
.end method
