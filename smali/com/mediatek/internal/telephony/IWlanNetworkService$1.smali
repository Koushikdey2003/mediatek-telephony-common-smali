.class Lcom/mediatek/internal/telephony/IWlanNetworkService$1;
.super Ljava/lang/Object;
.source "IWlanNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 366
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 3

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 374
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1200(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    move-result-object v1

    .line 373
    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v2, "can\'t register handover event"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 377
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 379
    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.vendor.mtk_wfc_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v1, "can\'t get WifiOffloadService"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 381
    goto :goto_4

    .line 385
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 386
    goto :goto_4

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v1, "can\'t get WifiOffloadService, retry after 1s."

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 391
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_3
    goto :goto_0

    .line 392
    :catch_1
    move-exception v0

    goto :goto_3

    .line 396
    :cond_3
    :goto_4
    return-void
.end method
