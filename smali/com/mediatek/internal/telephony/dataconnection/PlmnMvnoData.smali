.class public Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
.super Ljava/lang/Object;
.source "PlmnMvnoData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist m_cdmaImsi:Ljava/lang/String;

.field private final blacklist m_cdmaPlmn:Ljava/lang/String;

.field private final blacklist m_cdmaSpn:Ljava/lang/String;

.field private final blacklist m_gid1:Ljava/lang/String;

.field private final blacklist m_gsmImsi:Ljava/lang/String;

.field private final blacklist m_gsmPlmn:Ljava/lang/String;

.field private final blacklist m_gsmSpn:Ljava/lang/String;

.field private final blacklist m_impi:Ljava/lang/String;

.field private final blacklist m_pnn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmPlmn:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaPlmn:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmSpn:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaSpn:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmImsi:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaImsi:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gid1:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_pnn:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_impi:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gsmPlmn"    # Ljava/lang/String;
    .param p2, "cdmaPlmn"    # Ljava/lang/String;
    .param p3, "gsmSpn"    # Ljava/lang/String;
    .param p4, "cdmaSpn"    # Ljava/lang/String;
    .param p5, "gsmImsi"    # Ljava/lang/String;
    .param p6, "cdmaImsi"    # Ljava/lang/String;
    .param p7, "gid1"    # Ljava/lang/String;
    .param p8, "pnn"    # Ljava/lang/String;
    .param p9, "impi"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmPlmn:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaPlmn:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmSpn:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaSpn:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmImsi:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaImsi:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gid1:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_pnn:Ljava/lang/String;

    .line 58
    iput-object p9, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_impi:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaImsi()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaImsi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCdmaNumeric()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCdmaSpn()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaSpn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGid1()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gid1:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGsmImsi()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGsmNumeric()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGsmSpn()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmSpn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getImpi()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_impi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPnn()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_pnn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "PlmnMvnoData(xxx)"

    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmSpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaSpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gsmImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_cdmaImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_gid1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_pnn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->m_impi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
