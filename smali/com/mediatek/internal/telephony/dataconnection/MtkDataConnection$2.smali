.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 2072
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 2075
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$21200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 2077
    .local v0, "event":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$21300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 2078
    return-void
.end method

.method public blacklist addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 2081
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$21200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 2083
    .local v0, "event":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$21300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 2084
    return-void
.end method
