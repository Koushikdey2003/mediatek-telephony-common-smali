.class Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData$1;
.super Ljava/lang/Object;
.source "PlmnMvnoData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    .locals 1
    .param p1, "size"    # I

    .line 99
    new-array v0, p1, [Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData$1;->newArray(I)[Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    move-result-object p1

    return-object p1
.end method
