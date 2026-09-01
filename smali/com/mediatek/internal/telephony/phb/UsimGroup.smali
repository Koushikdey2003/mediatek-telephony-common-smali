.class public Lcom/mediatek/internal/telephony/phb/UsimGroup;
.super Ljava/lang/Object;
.source "UsimGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist LOG_TAG:Ljava/lang/String; = "UsimGroup"


# instance fields
.field blacklist mAlphaTag:Ljava/lang/String;

.field blacklist mRecordNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/mediatek/internal/telephony/phb/UsimGroup$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/UsimGroup$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    .line 90
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    .line 91
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static blacklist stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 139
    if-ne p0, p1, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    if-nez p0, :cond_1

    .line 143
    const-string p0, ""

    .line 145
    :cond_1
    if-nez p1, :cond_2

    .line 146
    const-string p1, ""

    .line 148
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlphaTag()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecordIndex()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEqual(Lcom/mediatek/internal/telephony/phb/UsimGroup;)Z
    .locals 2
    .param p1, "uGas"    # Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public blacklist setRecordIndex(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .line 116
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    .line 117
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsimGroup \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void
.end method
