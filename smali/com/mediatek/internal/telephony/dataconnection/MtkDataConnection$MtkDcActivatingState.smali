.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDcActivatingState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    .line 1065
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 3

    .line 1069
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: enter dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1073
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->enter()V

    .line 1074
    return-void
.end method

.method public blacklist exit()V
    .locals 3

    .line 1079
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: exit dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1083
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->exit()V

    .line 1084
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1092
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4600(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1093
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1273
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    .local v0, "retVal":Z
    goto/16 :goto_6

    .line 1269
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1270
    const/4 v0, 0x1

    .line 1271
    .restart local v0    # "retVal":Z
    goto/16 :goto_6

    .line 1260
    .end local v0    # "retVal":Z
    :sswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState deferMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", address info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1265
    const/4 v0, 0x1

    .line 1266
    .restart local v0    # "retVal":Z
    goto/16 :goto_6

    .line 1111
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1116
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1117
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActivatingState ERROR no such apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in this dc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_0

    .line 1121
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1123
    :goto_0
    const/4 v1, 0x1

    .line 1124
    .local v1, "retVal":Z
    move v0, v1

    goto/16 :goto_6

    .line 1126
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v1    # "retVal":Z
    :sswitch_3
    const/4 v0, 0x0

    .line 1128
    .local v0, "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    const/4 v2, 0x0

    .line 1130
    .local v2, "resultCode":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1131
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1132
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1133
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/telephony/data/DataCallResponse;

    .line 1134
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .local v4, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    goto :goto_3

    .line 1140
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :cond_3
    const/4 v3, 0x0

    .line 1141
    .local v3, "castException":Z
    const/4 v4, 0x0

    .line 1143
    .restart local v4    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 1148
    if-eqz v3, :cond_4

    .line 1149
    :goto_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1150
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    goto :goto_2

    .line 1148
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 1144
    :catch_0
    move-exception v5

    .line 1145
    .local v5, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .line 1146
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v7, "msg.obj can not be cast to ConnectionParams"

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_4

    .line 1149
    goto :goto_1

    .line 1153
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 1154
    const/4 v1, 0x1

    .line 1155
    .restart local v1    # "retVal":Z
    move v0, v1

    goto/16 :goto_6

    .line 1158
    .end local v1    # "retVal":Z
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data_call_response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/telephony/data/DataCallResponse;

    .line 1160
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1163
    .end local v3    # "castException":Z
    :goto_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v2, v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object v3

    .line 1165
    .local v3, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq v3, v5, :cond_6

    .line 1166
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v5

    if-eq v5, v4, :cond_6

    .line 1167
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " != cp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1171
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1172
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1175
    :cond_7
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v5, :cond_8

    .line 1176
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetupConnectionCompleted result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1178
    :cond_8
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$3;->$SwitchMap$com$android$internal$telephony$dataconnection$DataConnection$SetupResult:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    const/4 v1, 0x2

    if-eq v5, v1, :cond_12

    const/4 v1, 0x3

    if-eq v5, v1, :cond_11

    const/4 v1, 0x4

    if-eq v5, v1, :cond_a

    const/4 v1, 0x5

    if-ne v5, v1, :cond_9

    .line 1248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " != mTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v6, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1250
    goto/16 :goto_4

    .line 1252
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Unknown SetupResult, should not happen"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1205
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J

    move-result-wide v5

    .line 1209
    .local v5, "delay":J
    iget v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v7, 0x1a

    if-eq v1, v7, :cond_b

    iget v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v7, 0x1f

    if-eq v1, v7, :cond_b

    iget v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v7, 0x22

    if-eq v1, v7, :cond_b

    iget v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v7, 0x26

    if-ne v1, v7, :cond_d

    .line 1213
    :cond_b
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v7, "DcActivatingState: resetDelayTimeForAuTelstraOperator"

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1214
    :cond_c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    move-result-wide v5

    .line 1217
    :cond_d
    iget-object v1, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setModemSuggestedDelay(J)V

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActivatingState: ERROR_DATA_SERVICE_SPECIFIC_ERROR  delay="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " result="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " result.isRadioRestartFailure="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1223
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1224
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    .line 1223
    invoke-static {v7, v8, v9}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isPermanentFailure="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1226
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1228
    :cond_e
    iget-object v7, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v7, :cond_f

    iget-object v7, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1231
    :cond_f
    iget v7, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v8, -0x3e8

    if-ne v7, v8, :cond_10

    .line 1233
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7, v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1235
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1236
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v8, 0x40024

    iget v9, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1237
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_4

    .line 1243
    :cond_10
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v7, v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;I)V

    .line 1244
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1246
    goto :goto_4

    .line 1195
    .end local v1    # "str":Ljava/lang/String;
    .end local v5    # "delay":J
    :cond_11
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->tearDownData(Ljava/lang/Object;)V

    .line 1196
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1197
    goto :goto_4

    .line 1190
    :cond_12
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;I)V

    .line 1191
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1192
    goto :goto_4

    .line 1181
    :cond_13
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v5, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5402(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1183
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1184
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1185
    nop

    .line 1254
    :goto_4
    const/4 v1, 0x1

    .line 1255
    .local v1, "retVal":Z
    move v0, v1

    goto :goto_6

    .line 1148
    .end local v1    # "retVal":Z
    .local v3, "castException":Z
    :goto_5
    if-eqz v3, :cond_14

    .line 1149
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1150
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1152
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :cond_14
    throw v1

    .line 1099
    .end local v0    # "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    .end local v2    # "resultCode":I
    .end local v3    # "castException":Z
    .end local v4    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1100
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1102
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: mApnContexts size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1107
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :cond_15
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1108
    const/4 v0, 0x1

    .line 1109
    .local v0, "retVal":Z
    nop

    .line 1276
    :goto_6
    return v0

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_4
        0x40001 -> :sswitch_3
        0x40004 -> :sswitch_2
        0x4000b -> :sswitch_5
        0x40020 -> :sswitch_1
        0x40021 -> :sswitch_1
        0x40023 -> :sswitch_0
        0x40025 -> :sswitch_1
    .end sparse-switch
.end method
