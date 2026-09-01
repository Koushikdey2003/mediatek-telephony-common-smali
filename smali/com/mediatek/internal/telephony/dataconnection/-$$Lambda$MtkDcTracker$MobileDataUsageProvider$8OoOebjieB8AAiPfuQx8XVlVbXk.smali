.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;->f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;->f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$MobileDataUsageProvider$8OoOebjieB8AAiPfuQx8XVlVbXk;->f$1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->lambda$onRequestStatsUpdate$0$MtkDcTracker$MobileDataUsageProvider(I)V

    return-void
.end method
