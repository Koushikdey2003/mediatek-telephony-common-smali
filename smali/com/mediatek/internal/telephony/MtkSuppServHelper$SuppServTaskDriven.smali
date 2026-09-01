.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;
.super Landroid/os/Handler;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppServTaskDriven"
.end annotation


# static fields
.field private static final blacklist EVENT_DONE:I = 0x0

.field private static final blacklist EVENT_EXEC_NEXT:I = 0x1

.field private static final blacklist STATE_DOING:I = 0x1

.field private static final blacklist STATE_DONE:I = 0x2

.field private static final blacklist STATE_NO_PENDING:I


# instance fields
.field private blacklist mPendingTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mState:I

.field private blacklist mStateLock:Ljava/lang/Object;

.field private blacklist mTaskLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    .line 257
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    .line 258
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    .line 267
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    .line 270
    return-void
.end method

.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 272
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 273
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    .line 257
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    .line 258
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    .line 267
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    .line 274
    return-void
.end method

.method private blacklist eventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 387
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 393
    const-string v0, "UNKNOWN_EVENT"

    return-object v0

    .line 391
    :cond_0
    const-string v0, "EVENT_EXEC_NEXT"

    return-object v0

    .line 389
    :cond_1
    const-string v0, "EVENT_DONE"

    return-object v0
.end method

.method private blacklist getCurrentPendingTask()Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getState()I
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    monitor-exit v0

    return v1

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removePendingTask(I)V
    .locals 4
    .param p1, "index"    # I

    .line 312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePendingTask remain mPendingTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 317
    :cond_0
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    .line 297
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist stateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 375
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 383
    const-string v0, "UNKNOWN_STATE"

    return-object v0

    .line 381
    :cond_0
    const-string v0, "STATE_DONE"

    return-object v0

    .line 379
    :cond_1
    const-string v0, "STATE_DOING"

    return-object v0

    .line 377
    :cond_2
    const-string v0, "STATE_NO_PENDING"

    return-object v0
.end method


# virtual methods
.method public blacklist appendTask(Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;)V
    .locals 2
    .param p1, "task"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void

    .line 280
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist clearPendingTask()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist exec()V
    .locals 6

    .line 327
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->getCurrentPendingTask()Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    move-result-object v0

    .line 328
    .local v0, "task":Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->setState(I)V

    .line 331
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 335
    return-void

    .line 338
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->setState(I)V

    .line 339
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->getTaskId()I

    move-result v2

    .line 340
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 342
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 353
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$300(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    const-string v4, "persist.vendor.radio.terminal-based.cw"

    const-string v5, "disabled_tbcw"

    invoke-virtual {v1, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$300(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    .line 350
    nop

    .line 357
    :goto_0
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 365
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->removePendingTask(I)V

    .line 366
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->setState(I)V

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->exec()V

    .line 372
    :goto_0
    return-void
.end method
