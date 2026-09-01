.class public Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
.super Ljava/lang/Object;
.source "CpaDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpaConnection"
.end annotation


# instance fields
.field blacklist mCpaApn:Landroid/telephony/data/ApnSetting;

.field blacklist mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

.field blacklist mDnsAddresses:[Ljava/net/InetAddress;

.field blacklist mLocalAddress:Ljava/net/InetAddress;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 166
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    .line 168
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NONE:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    .line 169
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mLocalAddress:Ljava/net/InetAddress;

    .line 170
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mDnsAddresses:[Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public blacklist getCpaApn()Landroid/telephony/data/ApnSetting;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public blacklist getCpaConnectionType()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    return-object v0
.end method

.method public blacklist getDnsAddresses()[Ljava/net/InetAddress;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mDnsAddresses:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method
