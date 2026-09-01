.class public Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
.super Ljava/lang/Object;
.source "MtkDedicateDataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REASON_BEARER_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final blacklist REASON_BEARER_DEACTIVATION:Ljava/lang/String; = "deactivation"

.field public static final blacklist REASON_BEARER_MODIFICATION:Ljava/lang/String; = "modification"


# instance fields
.field public blacklist mActive:I

.field public blacklist mBearerId:I

.field public blacklist mCid:I

.field public blacklist mDefaultCid:I

.field public blacklist mFailCause:I

.field public blacklist mInterfaceId:I

.field public blacklist mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

.field public blacklist mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

.field public blacklist mPcscfAddress:Ljava/lang/String;

.field public blacklist mSignalingFlag:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIILcom/mediatek/internal/telephony/ims/MtkQosStatus;Lcom/mediatek/internal/telephony/ims/MtkTftStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "interfaceId"    # I
    .param p2, "defaultId"    # I
    .param p3, "cid"    # I
    .param p4, "active"    # I
    .param p5, "signalingFlag"    # I
    .param p6, "bearerId"    # I
    .param p7, "faileCause"    # I
    .param p8, "qosStatus"    # Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    .param p9, "tftStatus"    # Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .param p10, "pcscf"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mInterfaceId:I

    .line 35
    iput p2, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mDefaultCid:I

    .line 36
    iput p3, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    .line 37
    iput p4, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mActive:I

    .line 38
    iput p5, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mSignalingFlag:I

    .line 39
    iput p6, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mBearerId:I

    .line 40
    iput p7, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mFailCause:I

    .line 41
    iput-object p8, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    .line 42
    iput-object p9, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    .line 43
    iput-object p10, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mPcscfAddress:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static blacklist readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    .locals 22
    .param p0, "p"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 48
    .local v11, "interfaceId":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 49
    .local v12, "defaultCid":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 50
    .local v13, "cid":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 51
    .local v14, "active":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 52
    .local v15, "signalingFlag":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 53
    .local v16, "bearerId":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 54
    .local v17, "failCause":I
    const/4 v0, 0x0

    .line 55
    .local v0, "qosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    const/4 v1, 0x0

    .line 56
    .local v1, "tftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    const/4 v2, 0x0

    .line 58
    .local v2, "pcscf":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    .line 58
    :cond_0
    move-object/from16 v18, v0

    .line 61
    .end local v0    # "qosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    .local v18, "qosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_1

    .line 61
    :cond_1
    move-object/from16 v19, v1

    .line 64
    .end local v1    # "tftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .local v19, "tftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_2

    .line 64
    :cond_2
    move-object/from16 v20, v2

    .line 68
    .end local v2    # "pcscf":Ljava/lang/String;
    .local v20, "pcscf":Ljava/lang/String;
    :goto_2
    new-instance v21, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-object/from16 v0, v21

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;-><init>(IIIIIIILcom/mediatek/internal/telephony/ims/MtkQosStatus;Lcom/mediatek/internal/telephony/ims/MtkTftStatus;Ljava/lang/String;)V

    return-object v21
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[interfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mInterfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mDefaultCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signalingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mSignalingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bearerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mBearerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", QOS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", TFT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", PCSCF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mPcscfAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mInterfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mDefaultCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mActive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mSignalingFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mBearerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mFailCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ims/MtkQosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mPcscfAddress:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mPcscfAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
