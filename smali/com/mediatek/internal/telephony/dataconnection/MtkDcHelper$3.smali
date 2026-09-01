.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;
.super Landroid/os/Handler;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 273
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    .line 279
    .local v0, "phoneId":I
    iget v2, p1, Landroid/os/Message;->what:I

    sub-int/2addr v2, v0

    .line 280
    .local v2, "eventId":I
    const/4 v3, -0x1

    .line 282
    .local v3, "restCallingPhoneId":I
    const/4 v4, 0x0

    if-eq v2, v1, :cond_b

    const/16 v1, 0x14

    const/4 v5, 0x1

    if-eq v2, v1, :cond_a

    const/16 v1, 0x1e

    if-eq v2, v1, :cond_7

    const/16 v1, 0x28

    if-eq v2, v1, :cond_6

    const/16 v1, 0x32

    if-eq v2, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v2, v1, :cond_2

    const/16 v1, 0x46

    if-eq v2, v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message with number: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 341
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 342
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 343
    .local v6, "callAdditionalInfo":[Ljava/lang/String;
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 344
    .local v7, "type":I
    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    .line 345
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 346
    .local v8, "mtCallRq":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v9

    if-ne v8, v5, :cond_1

    move v4, v5

    :cond_1
    aput-boolean v4, v9, v0

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT_CALL_RQ, phoneId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mtCallRq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mGwsdDualSimStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 349
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 350
    .end local v8    # "mtCallRq":I
    goto/16 :goto_2

    .line 353
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "callAdditionalInfo":[Ljava/lang/String;
    .end local v7    # "type":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 354
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    .line 355
    const-string v1, "Voice Call OffHook, re-evaluate call start"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    goto/16 :goto_2

    .line 322
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 323
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_c

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 324
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$202(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;I)I

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDsdaMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 327
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget v6, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v4, v6, :cond_4

    .line 328
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 330
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDsdaStateChanged()V

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .end local v4    # "i":I
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getInstance()Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    move-result-object v4

    .line 335
    .local v4, "mSmartDataSwitchAssistant":Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onDsdaStateChanged()V

    .line 338
    .end local v4    # "mSmartDataSwitchAssistant":Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    :cond_5
    goto/16 :goto_2

    .line 296
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_6
    const-string v1, "Got \'no CS calls after SRVCC\' notification, tunnel it to VOICE_CALL_END"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    sget-object v5, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$602(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;

    .line 298
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v1

    .line 299
    .local v1, "phoneSwitcher":Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    if-eqz v1, :cond_7

    .line 300
    const/16 v5, 0x6d

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sendEmptyMessage(I)Z

    .line 305
    .end local v1    # "phoneSwitcher":Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    .line 306
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Lcom/android/internal/telephony/Call$SrvccState;

    move-result-object v1

    .line 307
    .local v1, "preSrvccState":Lcom/android/internal/telephony/Call$SrvccState;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 308
    .local v5, "ar":Landroid/os/AsyncResult;
    if-eqz v5, :cond_8

    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 309
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget-object v7, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Call$SrvccState;

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$602(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_1

    .line 311
    :cond_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    sget-object v7, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$602(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;

    .line 313
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSrvccState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Lcom/android/internal/telephony/Call$SrvccState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 314
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v1, v6, :cond_c

    .line 315
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voice Call Ended, phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 316
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v6

    aput-boolean v4, v6, v0

    .line 317
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    goto :goto_2

    .line 289
    .end local v1    # "preSrvccState":Lcom/android/internal/telephony/Call$SrvccState;
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 290
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v1

    aput-boolean v5, v1, v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice Call Started, phoneId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    goto :goto_2

    .line 284
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PHONE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_RADIO_UNAVAILABLE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$202(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;I)I

    .line 286
    nop

    .line 363
    :cond_c
    :goto_2
    return-void
.end method
