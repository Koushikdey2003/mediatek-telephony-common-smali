.class public Lcom/mediatek/internal/telephony/cat/MtkMenu;
.super Lcom/android/internal/telephony/cat/Menu;
.source "MtkMenu.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/MtkMenu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mFromMD:I

.field public blacklist nextActionIndicator:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkMenu$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/MtkMenu$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    .line 65
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Menu;-><init>(Landroid/os/Parcel;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "naiLen":I
    if-gtz v0, :cond_0

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B

    goto :goto_0

    .line 74
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 77
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Menu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MtkMenu]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/cat/MtkMenu$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/MtkMenu$1;

    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkMenu;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist getSetUpMenuFlag()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    return v0
.end method

.method public blacklist setSetUpMenuFlag(I)V
    .locals 0
    .param p1, "FromMD"    # I

    .line 114
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    .line 115
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cat/Menu;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToParcel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->mFromMD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MtkMenu]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
