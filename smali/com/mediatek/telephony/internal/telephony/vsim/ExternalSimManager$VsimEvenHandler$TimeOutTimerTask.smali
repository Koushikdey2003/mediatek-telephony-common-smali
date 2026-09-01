.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;
.super Ljava/util/TimerTask;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeOutTimerTask"
.end annotation


# instance fields
.field blacklist mSlotId:I

.field final synthetic blacklist this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p2, "slotId"    # I

    .line 1329
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1328
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    .line 1330
    iput p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    .line 1331
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 4

    .line 1334
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    iget-object v0, v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1339
    :cond_0
    const-string v1, "ExternalSimMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeOutTimerTask["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] time out and send response to modem directly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    monitor-exit v0

    .line 1342
    return-void

    .line 1341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
