.class Lcom/mediatek/internal/telephony/cat/BipService$1;
.super Landroid/os/Handler;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/cat/BipService;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 210
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 214
    .local v3, "timerMsg":Landroid/os/Message;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, "cmd":Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    const/4 v5, 0x0

    .line 217
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v6, 0x0

    .line 219
    .local v6, "ret":I
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 452
    :pswitch_0
    const-string v0, "[BIP]"

    const-string v7, "MSG_ID_BIP_WAIT_DATA_READY_TIMEOUT"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    .line 454
    .local v0, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7, v0, v11}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1000(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_8

    .line 432
    .end local v0    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 433
    .local v0, "channelId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_ID_BIP_CHANNEL_DELAYED_CLOSE: channel id: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "[BIP]"

    invoke-static {v10, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-lez v0, :cond_2

    if-gt v0, v9, :cond_2

    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 435
    invoke-static {v8}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 436
    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v8

    .line 438
    .local v8, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "channel protocolType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[BIP]"

    invoke-static {v10, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget v9, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-eq v11, v9, :cond_1

    iget v9, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v7, v9, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_ID_BIP_CHANNEL_DELAYED_CLOSE: channel type: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[BIP]"

    invoke-static {v9, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_1
    :goto_0
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 442
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 447
    .end local v8    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :goto_1
    goto/16 :goto_8

    .line 448
    :cond_2
    const-string v7, "[BIP]"

    const-string v8, "channel already closed"

    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    goto/16 :goto_8

    .line 407
    .end local v0    # "channelId":I
    :pswitch_2
    const-string v0, "[BIP]"

    const-string v8, "handleMessage MSG_ID_BIP_CHANNEL_KEEP_TIMEOUT"

    invoke-static {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPreviousKeepChannelId:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "[BIP]"

    invoke-static {v8, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 412
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 413
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v0

    .line 414
    .local v0, "cId":I
    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v8

    .line 415
    .restart local v8    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 416
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 417
    if-eqz v8, :cond_3

    .line 418
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 420
    :cond_3
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v9

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 421
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 422
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    const-string v11, "1"

    invoke-static {v9, v11}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1800(Lcom/mediatek/internal/telephony/cat/BipService;Ljava/lang/String;)V

    .line 423
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9, v12}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1902(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/mediatek/internal/telephony/cat/Channel;)Lcom/mediatek/internal/telephony/cat/Channel;

    .line 424
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9, v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2002(Lcom/mediatek/internal/telephony/cat/BipService;I)I

    .line 425
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7, v10}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1502(Lcom/mediatek/internal/telephony/cat/BipService;I)I

    .line 426
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-object v12, v7, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 427
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-object v12, v7, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 428
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-object v12, v7, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 429
    .end local v0    # "cId":I
    .end local v8    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    goto/16 :goto_8

    .line 237
    :pswitch_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$200(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    .line 238
    goto/16 :goto_8

    .line 222
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ril message arrived, slotid: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$000(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const/4 v7, 0x0

    .line 224
    .local v7, "data":Ljava/lang/String;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/AsyncResult;

    .line 226
    .local v8, "ar":Landroid/os/AsyncResult;
    if-eqz v8, :cond_4

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 228
    :try_start_0
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 231
    goto :goto_2

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_8

    .line 234
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$100(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    move-result-object v0

    new-instance v8, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    iget v9, v2, Landroid/os/Message;->what:I

    invoke-direct {v8, v9, v7}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendStartDecodingMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    .line 235
    goto/16 :goto_8

    .line 365
    .end local v7    # "data":Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x0

    .line 366
    .local v0, "arrList":Ljava/util/ArrayList;
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 367
    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 368
    iget-object v7, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SS-handleCmdResponse: MSG_ID_GET_CHANNEL_STATUS_DONE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 370
    const-string v8, "[BIP]"

    invoke-static {v8, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v14, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;

    invoke-direct {v14, v0}, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;-><init>(Ljava/util/ArrayList;)V

    .line 373
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v14, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v10, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v14}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 374
    move-object v5, v14

    goto/16 :goto_8

    .line 353
    .end local v0    # "arrList":Ljava/util/ArrayList;
    .end local v14    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 354
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_5

    .line 355
    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v11, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_8

    .line 356
    :cond_5
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_6

    .line 357
    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v11, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_8

    .line 359
    :cond_6
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_16

    .line 360
    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v10, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_8

    .line 336
    :pswitch_7
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 337
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 338
    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 339
    .local v0, "buffer":[B
    iget v7, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 341
    .local v7, "remainingCount":I
    new-instance v13, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;

    invoke-direct {v13, v0, v7}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 342
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v13, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v6, :cond_7

    .line 343
    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .line 344
    :cond_7
    const/16 v5, 0x9

    if-ne v6, v5, :cond_8

    .line 345
    iget-object v14, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v15, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v19}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .line 348
    :cond_8
    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v21, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    invoke-static/range {v19 .. v24}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 351
    nop

    .line 457
    .end local v0    # "buffer":[B
    .end local v7    # "remainingCount":I
    :goto_3
    move-object v5, v13

    goto/16 :goto_8

    .line 321
    .end local v13    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 322
    iget v0, v2, Landroid/os/Message;->arg2:I

    .line 323
    .local v0, "size":I
    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 324
    new-instance v15, Lcom/mediatek/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v15, v0}, Lcom/mediatek/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 325
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v15, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v6, :cond_9

    .line 326
    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v11, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v15}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_4

    .line 327
    :cond_9
    if-ne v6, v9, :cond_a

    .line 328
    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v18, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v19, 0x1

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    invoke-static/range {v16 .. v21}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_4

    .line 331
    :cond_a
    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v13, v15

    invoke-static/range {v8 .. v13}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 334
    nop

    .line 457
    .end local v0    # "size":I
    :goto_4
    move-object v5, v15

    goto/16 :goto_8

    .line 240
    .end local v15    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_9
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 241
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 244
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v0

    if-nez v0, :cond_b

    .line 245
    const-string v0, "[BIP]"

    const-string v7, "SS-handleMessage: skip open channel response because current cmd is null"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    goto/16 :goto_8

    .line 248
    :cond_b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 250
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v7

    if-eq v0, v7, :cond_c

    .line 251
    const-string v0, "[BIP]"

    const-string v7, "SS-handleMessage: skip open channel response because current cmd type is not OPEN_CHANNEL"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    goto/16 :goto_8

    .line 257
    :cond_c
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v0

    and-int/2addr v0, v8

    if-ne v8, v0, :cond_e

    .line 259
    if-nez v6, :cond_d

    .line 261
    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v7, 0x80

    iput v7, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 262
    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput-boolean v11, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 263
    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getFreeChannelId()I

    move-result v7

    iput v7, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    .line 264
    new-instance v13, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    invoke-direct {v13, v0, v7, v8, v9}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;ILcom/mediatek/internal/telephony/cat/DnsServerAddress;)V

    .line 266
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v13    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v0

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move-object v5, v13

    goto/16 :goto_8

    .line 269
    .end local v13    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_d
    new-instance v0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    invoke-direct {v0, v12, v7, v8, v9}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;ILcom/mediatek/internal/telephony/cat/DnsServerAddress;)V

    move-object/from16 v19, v0

    .line 271
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v19, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v14, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v14 .. v19}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move-object/from16 v5, v19

    goto/16 :goto_8

    .line 276
    .end local v19    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_e
    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v0, :cond_f

    .line 277
    iget-object v0, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    .local v0, "protocolType":I
    goto :goto_5

    .line 279
    .end local v0    # "protocolType":I
    :cond_f
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "protocolType":I
    :goto_5
    if-nez v6, :cond_10

    .line 282
    new-instance v7, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v10, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    move-object/from16 v18, v7

    .line 284
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v18, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v5, "[BIP]"

    const-string v7, "SS-handleMessage: open channel successfully"

    invoke-static {v5, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v13, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v5

    iget-object v14, v5, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v18}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move-object/from16 v5, v18

    goto/16 :goto_6

    .line 287
    .end local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_10
    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    .line 288
    new-instance v7, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v10, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    move-object/from16 v18, v7

    .line 290
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v5, "[BIP]"

    const-string v7, "SS-handleMessage: Modified parameters"

    invoke-static {v5, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v13, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v5

    iget-object v14, v5, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v18}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move-object/from16 v5, v18

    goto :goto_6

    .line 293
    .end local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_11
    const/4 v7, 0x6

    if-ne v6, v7, :cond_12

    .line 294
    new-instance v7, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v7, v12, v8, v9, v0}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    move-object/from16 v18, v7

    .line 296
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v5, "[BIP]"

    const-string v7, "SS-handleMessage: ME is busy on call"

    invoke-static {v5, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v13, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v5

    iget-object v14, v5, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-static/range {v13 .. v18}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move-object/from16 v5, v18

    goto :goto_6

    .line 301
    .end local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_12
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 302
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/BipService;->access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 303
    new-instance v7, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v8, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v9, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v7, v12, v8, v9, v0}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    move-object/from16 v18, v7

    .line 305
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v5, "[BIP]"

    const-string v7, "SS-handleMessage: open channel failed"

    invoke-static {v5, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/BipService;->access$800(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-boolean v5, v5, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    if-eqz v5, :cond_13

    .line 309
    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/BipService;->access$900(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v7

    invoke-static {v5, v7, v11}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1000(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 310
    move-object/from16 v5, v18

    goto/16 :goto_8

    .line 315
    :cond_13
    iget-object v13, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v14, v4, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v13 .. v18}, Lcom/mediatek/internal/telephony/cat/BipService;->access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move-object/from16 v5, v18

    .line 319
    .end local v0    # "protocolType":I
    .end local v18    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :goto_6
    goto/16 :goto_8

    .line 385
    :pswitch_a
    const-string v0, "[BIP]"

    const-string v7, "handleMessage MSG_ID_BIP_DISCONNECT_TIMEOUT"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1300(Lcom/mediatek/internal/telephony/cat/BipService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 387
    :try_start_1
    const-string v0, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsCloseInProgress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1400(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mPreviousKeepChannelId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 388
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 387
    invoke-static {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1400(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-ne v11, v0, :cond_14

    .line 390
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1402(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z

    .line 391
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v8, 0x10

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 392
    invoke-static {v9}, Lcom/mediatek/internal/telephony/cat/BipService;->access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object v9

    .line 391
    invoke-virtual {v0, v8, v10, v10, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v3, v0

    .line 393
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 394
    :cond_14
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 395
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1502(Lcom/mediatek/internal/telephony/cat/BipService;I)I

    .line 399
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-object v4, v0

    .line 400
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, "response":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-virtual {v8, v4, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    .line 404
    .end local v0    # "response":Landroid/os/Message;
    :cond_15
    :goto_7
    monitor-exit v7

    .line 405
    goto :goto_8

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 381
    :pswitch_b
    const-string v0, "[BIP]"

    const-string v7, "handleMessage MSG_ID_BIP_CONN_DELAY_TIMEOUT"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->acquireNetwork()V

    .line 383
    goto :goto_8

    .line 376
    :pswitch_c
    const-string v0, "[BIP]"

    const-string v7, "handleMessage MSG_ID_BIP_CONN_MGR_TIMEOUT"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0, v11}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1102(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z

    .line 378
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/BipService$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1200(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 379
    nop

    .line 457
    :cond_16
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
