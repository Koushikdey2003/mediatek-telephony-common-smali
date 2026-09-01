.class public Lcom/mediatek/internal/telephony/IWlanNetworkService;
.super Landroid/telephony/NetworkService;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;,
        Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;,
        Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;
    }
.end annotation


# static fields
.field public static final blacklist MWI_SERVICE_READY:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IWlanNetworkService"


# instance fields
.field private blacklist mDeathRecipient:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;

.field private final blacklist mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

.field private blacklist sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 87
    new-instance v1, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mDeathRecipient:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;

    .line 89
    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    .line 96
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V

    .line 97
    const-string v0, "IWlanNetworkService init."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->checkAndBindWifiOffloadService()V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->createWifiOffloadListenerProxy()Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/IWlanNetworkService;IIZ)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->getAvailableServices(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/IWlanNetworkService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->notifyWfcStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 78
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p1
.end method

.method private blacklist bindAndRegisterWifiOffloadService()V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    return-void
.end method

.method private blacklist checkAndBindWifiOffloadService()V
    .locals 4

    .line 334
    const-string v0, "mwis"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 336
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mDeathRecipient:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 338
    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_0

    .line 340
    :cond_0
    const-string v1, "No MwiService exist"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    goto :goto_1

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get MwiService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindWifiOffloadService: sWifiOffloadService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private blacklist createWifiOffloadListenerProxy()Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    if-nez v0, :cond_0

    .line 294
    const-string v0, "create WifiOffloadListenerProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    return-object v0
.end method

.method private blacklist getAvailableServices(IIZ)Ljava/util/ArrayList;
    .locals 5
    .param p1, "regState"    # I
    .param p2, "domain"    # I
    .param p3, "emergencyOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 241
    const-string v0, "getAvailableServices."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    .line 247
    .local v0, "availableServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    .line 248
    new-instance v4, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/Integer;

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    goto :goto_0

    .line 250
    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_2

    .line 252
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 253
    new-instance v4, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/Integer;

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 259
    :cond_2
    :goto_0
    return-object v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 277
    const-string v0, "IWlanNetworkService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 281
    const-string v0, "IWlanNetworkService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private blacklist notifyWfcStateChanged(II)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "state"    # I

    .line 315
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWlanNetworkServiceProvider id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " did not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 317
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWfcStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .locals 3
    .param p1, "slotIndex"    # I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWlan network service created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 265
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to Iwlan network service with invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkService$NetworkServiceProvider;

    return-object v0
.end method
