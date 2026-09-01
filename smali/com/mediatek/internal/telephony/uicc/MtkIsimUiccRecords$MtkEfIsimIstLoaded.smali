.class Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;
.super Ljava/lang/Object;
.source "MtkIsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkEfIsimIstLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$1;

    .line 219
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .locals 1

    .line 221
    const-string v0, "EF_ISIM_IST"

    return-object v0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 224
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 225
    .local v0, "data":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->access$102(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    new-instance v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    invoke-direct {v2, v0}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;-><init>([B)V

    iput-object v2, v1, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    .line 229
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 232
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->access$200(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f09

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    const/16 v4, 0x64

    new-instance v5, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 236
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->access$308(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)I

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6fe5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    const/16 v5, 0xca

    .line 241
    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 240
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->access$508(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)I

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->fetchGbaParam()V

    .line 247
    return-void
.end method
