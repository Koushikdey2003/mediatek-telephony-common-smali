.class public Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
.super Ljava/lang/Object;
.source "MtkQosStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/ims/MtkQosStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mDlGbr:I

.field public blacklist mDlMbr:I

.field public blacklist mQci:I

.field public blacklist mUlGbr:I

.field public blacklist mUlMbr:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/MtkQosStatus$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 0
    .param p1, "qci"    # I
    .param p2, "dlGbr"    # I
    .param p3, "ulGbr"    # I
    .param p4, "dlMbr"    # I
    .param p5, "ulMbr"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mQci:I

    .line 22
    iput p2, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mDlGbr:I

    .line 23
    iput p3, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mUlGbr:I

    .line 24
    iput p4, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mDlMbr:I

    .line 25
    iput p5, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mUlMbr:I

    .line 26
    return-void
.end method

.method public static blacklist readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    .locals 12
    .param p0, "p"    # Landroid/os/Parcel;

    .line 29
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 30
    .local v6, "qci":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 31
    .local v7, "dlGbr":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 32
    .local v8, "ulGbr":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 33
    .local v9, "dlMbr":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 34
    .local v10, "ulMbr":I
    new-instance v11, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    move-object v0, v11

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;-><init>(IIIII)V

    return-object v11
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[qci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mQci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dlGbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mDlGbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ulGbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mUlGbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dlMbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mDlMbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ulMbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mUlMbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 38
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mQci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mDlGbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mUlGbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mDlMbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->mUlMbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method
