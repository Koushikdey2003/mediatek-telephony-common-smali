.class Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;
.super Ljava/lang/Object;
.source "IWlanNetworkService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$1;

    .line 353
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api binderDied()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$902(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;

    .line 357
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1000(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    .line 358
    return-void
.end method
