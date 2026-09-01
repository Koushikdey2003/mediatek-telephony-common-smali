.class Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;
.super Ljava/lang/Object;
.source "MtkAdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .locals 22
    .param p1, "source"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 101
    .local v10, "efid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 102
    .local v11, "recordNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, "emails":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "anr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 107
    .local v16, "anr2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, "anr3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, "grpIds":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 110
    .local v9, "aas":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "sne":Ljava/lang/String;
    new-instance v19, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object/from16 v0, v19

    move v1, v10

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v20, v10

    move-object v10, v8

    .end local v8    # "sne":Ljava/lang/String;
    .local v10, "sne":Ljava/lang/String;
    .local v20, "efid":I
    move-object v8, v14

    move/from16 v21, v11

    move v11, v9

    .end local v9    # "aas":I
    .local v11, "aas":I
    .local v21, "recordNumber":I
    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 114
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    .line 115
    return-object v0
.end method

.method public bridge synthetic whitelist test-api createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .locals 1
    .param p1, "size"    # I

    .line 120
    new-array v0, p1, [Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;->newArray(I)[Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-result-object p1

    return-object p1
.end method
