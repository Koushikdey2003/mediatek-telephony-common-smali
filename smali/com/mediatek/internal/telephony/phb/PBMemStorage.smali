.class public Lcom/mediatek/internal/telephony/phb/PBMemStorage;
.super Ljava/lang/Object;
.source "PBMemStorage.java"


# static fields
.field public static final blacklist INT_NOT_SET:I = -0x1

.field public static final blacklist STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private blacklist mStorage:Ljava/lang/String;

.field private blacklist mTotal:I

.field private blacklist mUsed:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    .line 60
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    .line 61
    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .line 64
    new-instance v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;-><init>()V

    .line 66
    .local v0, "p":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    .line 69
    return-object v0
.end method


# virtual methods
.method public blacklist getStorage()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTotal()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    return v0
.end method

.method public blacklist getUsed()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    return v0
.end method

.method public blacklist setStorage(Ljava/lang/String;)V
    .locals 0
    .param p1, "sStorage"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public blacklist setTotal(I)V
    .locals 0
    .param p1, "iTotal"    # I

    .line 88
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    .line 89
    return-void
.end method

.method public blacklist setUsed(I)V
    .locals 0
    .param p1, "iUsed"    # I

    .line 84
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    .line 85
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
