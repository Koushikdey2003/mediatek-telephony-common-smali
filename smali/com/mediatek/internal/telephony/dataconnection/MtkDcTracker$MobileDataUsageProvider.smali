.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileDataUsageProvider"
.end annotation


# instance fields
.field private blacklist mIfaceSnapshot:Landroid/net/NetworkStats;

.field private blacklist mToken:I

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 4463
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 4464
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mToken:I

    .line 4465
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method public synthetic blacklist lambda$onRequestStatsUpdate$0$MtkDcTracker$MobileDataUsageProvider(I)V
    .locals 0
    .param p1, "token"    # I

    .line 4472
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->pushMobileDataUsageStats(I)V

    .line 4473
    return-void
.end method

.method public whitelist onRequestStatsUpdate(I)V
    .locals 2
    .param p1, "token"    # I

    .line 4470
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4471
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4476
    :cond_0
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mToken:I

    .line 4477
    return-void
.end method

.method public whitelist onSetAlert(J)V
    .locals 0
    .param p1, "quotaBytes"    # J

    .line 4485
    return-void
.end method

.method public whitelist onSetLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 4481
    return-void
.end method

.method public blacklist pushMobileDataUsageStats(I)V
    .locals 5
    .param p1, "token"    # I

    .line 4487
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4488
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    const-string v1, "mMobileDataUsage == null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V

    .line 4489
    return-void

    .line 4491
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 4493
    .local v0, "ifaceDiff":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 4494
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4497
    goto :goto_0

    .line 4495
    :catch_0
    move-exception v1

    .line 4496
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot report network stats "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V

    .line 4498
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
