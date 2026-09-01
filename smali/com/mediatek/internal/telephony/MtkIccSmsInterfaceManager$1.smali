.class Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "MtkIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 182
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_16

    .line 223
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 224
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 228
    :try_start_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v2, v4, v2

    .line 229
    .local v2, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v5

    iget-object v6, v5, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 230
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertRaw save one pdu in index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "index":I
    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 231
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 235
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_0
    goto :goto_1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v4

    iget-object v5, v4, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-1,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 240
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iput-boolean v3, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipedRsp:Z

    .line 242
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1c

    .line 247
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 248
    .local v1, "e":Lcom/android/internal/telephony/CommandException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update SMS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1

    .line 251
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->handleIccFull()V

    .line 253
    .end local v1    # "e":Lcom/android/internal/telephony/CommandException;
    :cond_1
    goto/16 :goto_16

    .line 243
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 189
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 190
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 191
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 193
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v1, v3, :cond_3

    .line 195
    :try_start_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v2

    .line 196
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3

    iget-object v5, v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[insertRaw save one pdu in index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v1    # "index":I
    goto :goto_3

    .line 200
    :catch_2
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_3

    .line 198
    :catch_3
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 202
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_3
    goto :goto_4

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v2, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v2

    iget-object v3, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-1,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 208
    :goto_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 212
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1c

    .line 213
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 214
    .local v1, "e":Lcom/android/internal/telephony/CommandException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update SMS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_4

    .line 217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->handleIccFull()V

    .line 219
    .end local v1    # "e":Lcom/android/internal/telephony/CommandException;
    :cond_4
    goto/16 :goto_16

    .line 209
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 257
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 259
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 261
    :try_start_8
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 262
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 264
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 266
    :cond_5
    const-string v2, "SMS"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/android/internal/telephony/OplusRlog$Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 267
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "Cannot load Sms records"

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 269
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 272
    :goto_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit v3

    .line 275
    goto/16 :goto_16

    .line 274
    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 465
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 466
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 468
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 469
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 471
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scAddress"

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 474
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "Cannot Get SMSC address"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 475
    const/4 v2, 0x1

    .line 476
    .local v2, "error":B
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_8

    .line 477
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 478
    .local v3, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_8

    .line 480
    const/4 v2, 0x2

    .line 483
    .end local v3    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get sc address, error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 486
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scAddress"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 489
    .end local v2    # "error":B
    :goto_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit v1

    goto/16 :goto_16

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 454
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 455
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_a
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9

    .line 457
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1302(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 459
    :cond_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "Cannot Get SMSC address"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 461
    :goto_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v1

    .line 463
    goto/16 :goto_16

    .line 462
    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 440
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 441
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_b
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    .line 443
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1202(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 445
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    const-string v3, ""

    .line 444
    :goto_8
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1202(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Language configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 448
    :cond_b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "Cannot Get CB configs"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 450
    :goto_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 451
    monitor-exit v1

    .line 452
    goto/16 :goto_16

    .line 451
    :catchall_5
    move-exception v2

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2

    .line 382
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 383
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    move v2, v3

    :cond_c
    iput-boolean v2, v4, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 385
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 386
    monitor-exit v1

    .line 387
    goto/16 :goto_16

    .line 386
    :catchall_6
    move-exception v2

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v2

    .line 408
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 409
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_d
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 411
    const/4 v2, 0x0

    .line 413
    .local v2, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 416
    .local v3, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 418
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-object v2, v5

    .line 419
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 420
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b

    .line 423
    :cond_d
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 423
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    :goto_b
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_e

    .line 429
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 432
    .end local v4    # "i":I
    :cond_f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 433
    .end local v2    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v3    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    goto :goto_c

    .line 434
    :cond_10
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "Cannot Get CB configs"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 436
    :goto_c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 437
    monitor-exit v1

    .line 438
    goto/16 :goto_16

    .line 437
    :catchall_7
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v2

    .line 401
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 402
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_11

    move v2, v3

    :cond_11
    iput-boolean v2, v4, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 404
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 405
    monitor-exit v1

    .line 406
    goto/16 :goto_16

    .line 405
    :catchall_8
    move-exception v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v2

    .line 389
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 390
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 391
    :try_start_f
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_13

    .line 392
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 393
    .local v1, "activation":[I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    aget v6, v1, v2

    if-ne v6, v3, :cond_12

    move v2, v3

    :cond_12
    iput-boolean v2, v5, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 396
    .end local v1    # "activation":[I
    :cond_13
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCbActivation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-boolean v3, v3, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v4

    .line 399
    goto/16 :goto_16

    .line 398
    :catchall_9
    move-exception v1

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v1

    .line 355
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 356
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v3, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 357
    :try_start_10
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-nez v3, :cond_15

    .line 360
    :try_start_11
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 361
    .local v3, "rawData":[B
    aget-byte v2, v3, v2

    if-nez v2, :cond_14

    .line 362
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v5, "sms raw data status is FREE"

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1002(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_d

    .line 365
    :cond_14
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1002(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 371
    .end local v3    # "rawData":[B
    :goto_d
    goto :goto_e

    .line 367
    :catch_4
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/ClassCastException;
    :try_start_12
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v5, "fail to get sms raw data ClassCastException"

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 370
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1002(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    .line 371
    nop

    .end local v2    # "e":Ljava/lang/ClassCastException;
    goto :goto_e

    .line 373
    :cond_15
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "fail to get sms raw data rild"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1002(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    .line 376
    :goto_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 377
    monitor-exit v4

    .line 378
    goto/16 :goto_16

    .line 377
    :catchall_a
    move-exception v1

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    throw v1

    .line 342
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 343
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 344
    :try_start_13
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_16

    .line 345
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$902(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z

    goto :goto_f

    .line 347
    :cond_16
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "[EFsmsp fail to set sms params"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$902(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z

    .line 351
    :goto_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 352
    monitor-exit v4

    .line 353
    goto/16 :goto_16

    .line 352
    :catchall_b
    move-exception v1

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    throw v1

    .line 321
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 322
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 323
    :try_start_14
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    if-nez v2, :cond_17

    .line 325
    :try_start_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lmediatek/telephony/MtkSmsParameters;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$802(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lmediatek/telephony/MtkSmsParameters;)Lmediatek/telephony/MtkSmsParameters;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 332
    :goto_10
    goto :goto_11

    .line 329
    :catch_5
    move-exception v1

    .line 330
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_16
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_10

    .line 326
    :catch_6
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassCastException;
    goto :goto_10

    .line 334
    :cond_17
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "[EFsmsp fail to get sms params"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$802(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lmediatek/telephony/MtkSmsParameters;)Lmediatek/telephony/MtkSmsParameters;

    .line 338
    :goto_11
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 339
    monitor-exit v4

    .line 340
    goto/16 :goto_16

    .line 339
    :catchall_c
    move-exception v1

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    throw v1

    .line 299
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 300
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 301
    :try_start_17
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_18

    move v5, v3

    goto :goto_12

    :cond_18
    move v5, v2

    :goto_12
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$502(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z

    .line 302
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$500(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Z

    move-result v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    if-ne v4, v3, :cond_19

    .line 304
    :try_start_18
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v2, v4, v2

    .line 305
    .local v2, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$600(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v5

    iget-object v6, v5, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 306
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertText save one pdu in index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .end local v2    # "index":I
    goto :goto_13

    .line 309
    :catch_7
    move-exception v2

    .line 310
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_13

    .line 307
    :catch_8
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 311
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_13
    goto :goto_14

    .line 313
    :cond_19
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "insertText fail to insert sms into ICC"

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$600(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v4

    iget-object v5, v4, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-1,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 316
    :goto_14
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$702(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z

    .line 317
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 318
    monitor-exit v1

    .line 319
    goto :goto_16

    .line 318
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    throw v2

    .line 277
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 279
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_1a
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1b

    .line 281
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iput-boolean v3, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 283
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$300(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 284
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>()V

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$302(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    .line 287
    :cond_1a
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    .line 289
    .local v2, "tmpStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$300(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    iput v4, v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    .line 290
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$300(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    iput v4, v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    .line 291
    .end local v2    # "tmpStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    goto :goto_15

    .line 293
    :cond_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v3, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 295
    :goto_15
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit v1

    .line 297
    goto :goto_16

    .line 296
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    throw v2

    .line 493
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1c
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
