.class public Lcom/mediatek/internal/telephony/phb/PBEntry;
.super Ljava/lang/Object;
.source "PBEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/PBEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INT_NOT_SET:I = -0x1

.field public static final blacklist STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private blacklist mAdnumber:Ljava/lang/String;

.field private blacklist mAdtype:I

.field private blacklist mEmail:Ljava/lang/String;

.field private blacklist mGroup:Ljava/lang/String;

.field private blacklist mHidden:I

.field private blacklist mIndex1:I

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mSecondtext:Ljava/lang/String;

.field private blacklist mText:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/mediatek/internal/telephony/phb/PBEntry$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/PBEntry$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mIndex1:I

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mNumber:Ljava/lang/String;

    .line 68
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mType:I

    .line 69
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mText:Ljava/lang/String;

    .line 71
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mHidden:I

    .line 72
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mGroup:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 74
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdtype:I

    .line 75
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mEmail:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static blacklist reateFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/PBEntry;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/phb/PBEntry;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/PBEntry;-><init>()V

    .line 91
    .local v0, "p":Lcom/mediatek/internal/telephony/phb/PBEntry;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mIndex1:I

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mNumber:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mType:I

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mText:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mHidden:I

    .line 96
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mGroup:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdtype:I

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mEmail:Ljava/lang/String;

    .line 101
    return-object v0
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdnumber()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdnumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAdtype()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdtype:I

    return v0
.end method

.method public blacklist getEmail()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroup()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHidden()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mHidden:I

    return v0
.end method

.method public blacklist getIndex1()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mIndex1:I

    return v0
.end method

.method public blacklist getNumber()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondtext()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mSecondtext:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mType:I

    return v0
.end method

.method public blacklist setAdnumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "sAdnumber"    # Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 169
    :cond_0
    return-void
.end method

.method public blacklist setAdtype(I)V
    .locals 0
    .param p1, "iAdtype"    # I

    .line 172
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdtype:I

    .line 173
    return-void
.end method

.method public blacklist setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "sEmail"    # Ljava/lang/String;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mEmail:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method public blacklist setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "sGroup"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mGroup:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public blacklist setHidden(I)V
    .locals 0
    .param p1, "iHidden"    # I

    .line 158
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mHidden:I

    .line 159
    return-void
.end method

.method public blacklist setIndex1(I)V
    .locals 0
    .param p1, "iIndex1"    # I

    .line 140
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mIndex1:I

    .line 141
    return-void
.end method

.method public blacklist setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "sNumber"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mNumber:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public blacklist setSecondtext(Ljava/lang/String;)V
    .locals 0
    .param p1, "sSecondtext"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public blacklist setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sText"    # Ljava/lang/String;

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mText:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method

.method public blacklist setType(I)V
    .locals 0
    .param p1, "iType"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mType:I

    .line 149
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mIndex1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondtext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 105
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mIndex1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mAdtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBEntry;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/PBEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 119
    return-void
.end method
