.class public Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
.super Lcom/mediatek/internal/telephony/cat/BearerDesc;
.source "UTranBearerDesc.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deliveryOfErroneousSdus:I

.field public blacklist deliveryOrder:I

.field public blacklist guarBitRateDL_High:I

.field public blacklist guarBitRateDL_Low:I

.field public blacklist guarBitRateUL_High:I

.field public blacklist guarBitRateUL_Low:I

.field public blacklist maxBitRateDL_High:I

.field public blacklist maxBitRateDL_Low:I

.field public blacklist maxBitRateUL_High:I

.field public blacklist maxBitRateUL_Low:I

.field public blacklist maxSduSize:I

.field public blacklist pdpType:I

.field public blacklist residualBitErrorRadio:I

.field public blacklist sduErrorRatio:I

.field public blacklist trafficClass:I

.field public blacklist trafficHandlingPriority:I

.field public blacklist transferDelay:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    .line 43
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    .line 48
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    .line 50
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    .line 51
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    .line 52
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    .line 53
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    .line 54
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    .line 55
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    .line 56
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    .line 57
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    .line 58
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    .line 61
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->bearerType:I

    .line 62
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    .line 43
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    .line 48
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    .line 50
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    .line 51
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    .line 52
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    .line 53
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    .line 54
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    .line 55
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    .line 56
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    .line 57
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    .line 58
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->bearerType:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/cat/UTranBearerDesc$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/UTranBearerDesc$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
