.class Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;
.super Ljava/lang/Object;
.source "MtkRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DtmfQueueHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    }
.end annotation


# instance fields
.field private final blacklist DTMF_STATUS_START:Z

.field private final blacklist DTMF_STATUS_STOP:Z

.field public final blacklist MAXIMUM_DTMF_REQUEST:I

.field private blacklist mDtmfQueue:Ljava/util/Vector;

.field private blacklist mDtmfStatus:Z

.field private blacklist mIsSendChldRequest:Z

.field private blacklist mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkRIL;)V
    .locals 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 315
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/16 v0, 0x20

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->MAXIMUM_DTMF_REQUEST:I

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->DTMF_STATUS_START:Z

    .line 374
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->DTMF_STATUS_STOP:Z

    .line 376
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 377
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 380
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    .line 316
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 317
    return-void
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public blacklist add(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 1
    .param p1, "o"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public blacklist buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "param"    # [Ljava/lang/Object;

    .line 383
    if-nez p1, :cond_0

    .line 384
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DtmfQueueHandler.buildDtmfQueueRR build (["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;-><init>(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist get()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    return-object v0
.end method

.method public blacklist getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    return-object v0
.end method

.method public blacklist hasSendChldRequest()Z
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSendChldRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 369
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    return v0
.end method

.method public blacklist isStart()Z
    .locals 2

    .line 328
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist remove(I)V
    .locals 1
    .param p1, "idx"    # I

    .line 340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 341
    return-void
.end method

.method public blacklist remove(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 1
    .param p1, "o"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 336
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public blacklist resetSendChldRequest()V
    .locals 1

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    .line 365
    return-void
.end method

.method public blacklist setPendingRequest(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 0
    .param p1, "r"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 352
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 353
    return-void
.end method

.method public blacklist setSendChldRequest()V
    .locals 1

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    .line 361
    return-void
.end method

.method public blacklist size()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public blacklist start()V
    .locals 1

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 321
    return-void
.end method

.method public blacklist stop()V
    .locals 1

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 325
    return-void
.end method
