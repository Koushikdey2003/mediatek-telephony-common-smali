.class Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;
.super Landroid/os/Handler;
.source "MtkUiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    .line 278
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)Z

    move-result v0

    const/16 v1, 0x65

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v4, "["

    const-string v5, "Received message "

    if-eq v3, v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 292
    .local v1, "response":Landroid/os/Message;
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 294
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] while being destroyed. return exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    .line 296
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 297
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 298
    .end local v1    # "response":Landroid/os/Message;
    nop

    .line 305
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_1
    return-void

    .line 308
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_c

    if-eq v0, v2, :cond_b

    const-string v2, "MtkUiccCardApp"

    if-eq v0, v1, :cond_9

    const/16 v1, 0x66

    if-eq v0, v1, :cond_7

    const/16 v1, 0x68

    if-eq v0, v1, :cond_5

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    .line 385
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    :cond_3
    const/4 v0, -0x1

    .line 341
    .local v0, "attemptsRemainingPuk2":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 342
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v0

    .line 345
    :cond_4
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 346
    .local v2, "responsePuk2":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 347
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 348
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 349
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryFdn()V

    .line 350
    goto/16 :goto_2

    .line 327
    .end local v0    # "attemptsRemainingPuk2":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "responsePuk2":Landroid/os/Message;
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    const-string v1, "EVENT_PUK1_CHANGE_PIN1_DONE"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 328
    const/4 v0, -0x1

    .line 329
    .local v0, "attemptsRemainingPuk":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 330
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 331
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v0

    .line 333
    :cond_6
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 334
    .local v2, "responsePuk":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 335
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 336
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 337
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    .line 338
    goto/16 :goto_2

    .line 366
    .end local v0    # "attemptsRemainingPuk":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "responsePuk":Landroid/os/Message;
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    const-string v1, "handleMessage (EVENT_CHANGE_NETWORK_LOCK)"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 367
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change network lock with exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_8
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 374
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 375
    goto :goto_2

    .line 355
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    const-string v1, "handleMessage (EVENT_QUERY_NETWORK_LOCK)"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 356
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error query network lock with exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_a
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 363
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 364
    goto :goto_2

    .line 380
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 381
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)V

    .line 382
    goto :goto_2

    .line 312
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_c
    const/4 v0, -0x1

    .line 313
    .local v0, "attemptsRemaining":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 314
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_d

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_d

    .line 315
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v0

    .line 317
    :cond_d
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 318
    .local v2, "response":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 319
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 320
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 321
    nop

    .line 387
    .end local v0    # "attemptsRemaining":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "response":Landroid/os/Message;
    :goto_2
    return-void
.end method
