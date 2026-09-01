.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
.super Lcom/android/internal/telephony/dataconnection/DcController;
.source "MtkDcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkDcc"

.field private static final blacklist MTK_SRLTE_SUPPORT:Z

.field private static final blacklist PROP_MTK_CDMA_LTE_MODE:Ljava/lang/String; = "ro.vendor.mtk_c2k_lte_mode"


# instance fields
.field private blacklist mCellularDataService:Lcom/android/internal/telephony/dataconnection/CellularDataService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 78
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    .line 81
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->MTK_SRLTE_SUPPORT:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p4, "dataServiceManager"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;)V

    .line 89
    new-instance v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mCellularDataService:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    .line 90
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
    .param p1, "x1"    # Landroid/net/LinkProperties;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1600()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->MTK_SRLTE_SUPPORT:Z

    return v0
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkState:I

    return v0
.end method

.method static synthetic blacklist access$2102(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkState:I

    return p1
.end method

.method static synthetic blacklist access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkState:I

    return v0
.end method

.method static synthetic blacklist access$2300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method

.method static synthetic blacklist access$2400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$2500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$2600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->lr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$2700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListAll:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListAll:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListActiveByCid:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic blacklist access$600()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    return v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->lr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method private blacklist isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 370
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "isIpMatched: address count is different but matched"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 374
    :cond_1
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method blacklist getActiveDcCount()I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDcc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDcc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method protected blacklist mtkReplaceStates()V
    .locals 1

    .line 383
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    .line 384
    return-void
.end method
