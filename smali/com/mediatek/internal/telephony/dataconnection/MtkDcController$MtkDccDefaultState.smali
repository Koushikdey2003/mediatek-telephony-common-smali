.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;
.super Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
.source "MtkDcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MtkDccDefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;


# direct methods
.method protected constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 92
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 4

    .line 95
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->enter()V

    .line 96
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40007

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist exit()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->exit()V

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 105
    return-void
.end method

.method protected blacklist onDataStateChanged(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataCallResponse;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 116
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 118
    .local v3, "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStateChanged: dcsList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " dcListActiveByCid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    move-object/from16 v5, p1

    .line 129
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v2, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/data/DataCallResponse;

    .line 132
    .local v6, "dcs":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v6}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v6    # "dcs":Landroid/telephony/data/DataCallResponse;
    goto :goto_1

    .line 137
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v4, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 139
    .local v7, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v8, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 140
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDataStateChanged: add to retry dc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 141
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_3
    goto :goto_2

    .line 144
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: dcsToRetry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 148
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v6, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/4 v7, 0x0

    .line 151
    .local v7, "isAnyDataCallDormant":Z
    const/4 v8, 0x0

    .line 153
    .local v8, "isAnyDataCallActive":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/DataCallResponse;

    .line 155
    .local v10, "newState":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 156
    .local v13, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v13, :cond_6

    .line 158
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v12, "onDataStateChanged: no associated DC yet, ignore"

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->loge(Ljava/lang/String;)V

    .line 159
    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 162
    :cond_6
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v14

    .line 163
    .local v14, "apnContexts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_8

    .line 164
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v12, "onDataStateChanged: no connected apns, ignore"

    invoke-virtual {v15, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->loge(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    goto/16 :goto_e

    .line 168
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 169
    iget-object v12, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDataStateChanged: Found ConnId="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " newState="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 169
    invoke-virtual {v12, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 173
    :cond_9
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v11

    const/16 v12, -0x44c

    if-ne v11, v12, :cond_b

    .line 175
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 176
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataStateChanged: trySetupDataOnEvent. EVENT_DATA_SETUP_SSC_MODE3, cid="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", lifetime="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 176
    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 180
    :cond_a
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    const v12, 0x4220e

    .line 182
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v15

    move-object/from16 v16, v0

    .end local v0    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .local v16, "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v0

    .line 180
    invoke-virtual {v11, v12, v15, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupDataOnEvent(III)V

    .line 183
    nop

    .line 153
    .end local v10    # "newState":Landroid/telephony/data/DataCallResponse;
    .end local v13    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v14    # "apnContexts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    .end local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v0    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :goto_4
    move-object/from16 v0, v16

    .end local v0    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    goto/16 :goto_3

    .line 186
    .end local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v0    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v10    # "newState":Landroid/telephony/data/DataCallResponse;
    .restart local v13    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .restart local v14    # "apnContexts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_b
    move-object/from16 v16, v0

    .end local v0    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-nez v0, :cond_12

    .line 187
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 188
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    goto/16 :goto_e

    .line 191
    :cond_c
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v0

    .line 192
    .local v0, "failCause":I
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 193
    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v12

    .line 192
    invoke-static {v11, v0, v12}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 194
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 195
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataStateChanged: X restart radio, failCause="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 198
    :cond_d
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    goto :goto_5

    .line 199
    :cond_e
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 200
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 201
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataStateChanged: inactive, add to cleanup list. failCause="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 204
    :cond_f
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 206
    :cond_10
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 207
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataStateChanged: inactive, add to retry list. failCause="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 210
    :cond_11
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    move-object v11, v13

    check-cast v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v11, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->setLostConnectionCause(I)V

    .line 215
    .end local v0    # "failCause":I
    :goto_5
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    goto/16 :goto_e

    .line 218
    :cond_12
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    .line 219
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 220
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v12, "onDataStateChanged: no change"

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    goto/16 :goto_e

    .line 222
    :cond_14
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-static {v11, v12}, Landroid/net/util/LinkPropertiesUtils;->isIdenticalInterfaceName(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 224
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-static {v11, v12}, Landroid/net/util/LinkPropertiesUtils;->isIdenticalDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 226
    invoke-static {v11, v12}, Landroid/net/util/LinkPropertiesUtils;->isIdenticalRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 228
    invoke-static {v11, v12}, Landroid/net/util/LinkPropertiesUtils;->isIdenticalHttpProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 230
    invoke-static {v11, v12, v15}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v11

    if-nez v11, :cond_15

    goto :goto_6

    .line 282
    :cond_15
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 283
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v12, "onDataStateChanged: no changes"

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    goto/16 :goto_e

    .line 282
    :cond_16
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    goto/16 :goto_e

    .line 233
    :cond_17
    :goto_6
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 234
    invoke-static {v11, v12}, Landroid/net/util/LinkPropertiesUtils;->compareAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/util/LinkPropertiesUtils$CompareResult;

    move-result-object v11

    .line 236
    .local v11, "car":Landroid/net/util/LinkPropertiesUtils$CompareResult;, "Landroid/net/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 237
    iget-object v12, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .local v17, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    const-string v2, "onDataStateChanged: oldLp="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newLp="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " car="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 236
    .end local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :cond_18
    move-object/from16 v17, v2

    .line 240
    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :goto_7
    const/4 v2, 0x0

    .line 241
    .local v2, "needToClean":Z
    iget-object v12, v11, Landroid/net/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/LinkAddress;

    .line 242
    .local v15, "added":Landroid/net/LinkAddress;
    move/from16 v18, v2

    .end local v2    # "needToClean":Z
    .local v18, "needToClean":Z
    iget-object v2, v11, Landroid/net/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/LinkAddress;

    .line 243
    .local v19, "removed":Landroid/net/LinkAddress;
    nop

    .line 244
    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 245
    move-object/from16 v21, v3

    .end local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .local v21, "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual {v15}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 243
    invoke-static {v2, v3}, Landroid/net/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 246
    const/4 v2, 0x1

    .line 247
    .end local v18    # "needToClean":Z
    .restart local v2    # "needToClean":Z
    goto :goto_a

    .line 249
    .end local v2    # "needToClean":Z
    .end local v19    # "removed":Landroid/net/LinkAddress;
    .restart local v18    # "needToClean":Z
    :cond_19
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_9

    .line 242
    .end local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_1a
    move-object/from16 v21, v3

    .end local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    move/from16 v2, v18

    .line 250
    .end local v15    # "added":Landroid/net/LinkAddress;
    .end local v18    # "needToClean":Z
    .restart local v2    # "needToClean":Z
    :goto_a
    move-object/from16 v3, v21

    goto :goto_8

    .line 252
    .end local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_1b
    move/from16 v18, v2

    move-object/from16 v21, v3

    .end local v2    # "needToClean":Z
    .end local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v18    # "needToClean":Z
    .restart local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    .line 253
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 255
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 256
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v3, "onDataStateChanged: IRAT set needToClean false"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 258
    :cond_1c
    const/4 v2, 0x0

    .end local v18    # "needToClean":Z
    .restart local v2    # "needToClean":Z
    goto :goto_b

    .line 259
    .end local v2    # "needToClean":Z
    .restart local v18    # "needToClean":Z
    :cond_1d
    nop

    .line 260
    const-string v2, "persist.vendor.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v3, "OP07"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 261
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 262
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v3, "onDataStateChanged: OP07 set needToClean false"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 264
    :cond_1e
    const/4 v2, 0x0

    .end local v18    # "needToClean":Z
    .restart local v2    # "needToClean":Z
    goto :goto_b

    .line 259
    .end local v2    # "needToClean":Z
    .restart local v18    # "needToClean":Z
    :cond_1f
    move/from16 v2, v18

    .line 266
    .end local v18    # "needToClean":Z
    .restart local v2    # "needToClean":Z
    :goto_b
    if-eqz v2, :cond_21

    .line 267
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 268
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataStateChanged: addr change, cleanup apns="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " oldLp="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " newLp="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 273
    :cond_20
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v18, v0

    goto :goto_d

    .line 275
    :cond_21
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v12, "onDataStateChanged: simple change"

    invoke-virtual {v3, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 277
    :cond_22
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 278
    .local v12, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v15, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v15}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    move-object/from16 v18, v0

    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .local v18, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 279
    .end local v12    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, v18

    goto :goto_c

    .line 277
    .end local v18    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_23
    move-object/from16 v18, v0

    .line 281
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .end local v2    # "needToClean":Z
    .end local v11    # "car":Landroid/net/util/LinkPropertiesUtils$CompareResult;, "Landroid/net/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v18    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :goto_d
    goto :goto_e

    .line 287
    .end local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .end local v18    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .end local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .local v2, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_24
    move-object/from16 v18, v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .end local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v18    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .restart local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 289
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: interface change, cleanup apns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 297
    .end local v18    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_25
    :goto_e
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_26

    .line 298
    const/4 v0, 0x1

    move v8, v0

    .line 300
    :cond_26
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 301
    const/4 v0, 0x1

    move v7, v0

    .line 303
    .end local v10    # "newState":Landroid/telephony/data/DataCallResponse;
    .end local v13    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v14    # "apnContexts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_27
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    goto/16 :goto_3

    .line 305
    .end local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .end local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .local v0, "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_28
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    const/4 v2, 0x2

    .end local v0    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .end local v3    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$1900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2e

    .line 307
    if-eqz v8, :cond_29

    .line 308
    move v11, v2

    goto :goto_f

    :cond_29
    move v11, v3

    :goto_f
    move v0, v11

    .line 309
    .local v0, "physicalLinkState":I
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2000(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)I

    move-result v2

    if-eq v2, v0, :cond_2a

    .line 310
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2102(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;I)I

    .line 311
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v2

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 313
    :cond_2a
    if-eqz v7, :cond_2c

    if-nez v8, :cond_2c

    .line 319
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 320
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    const-string v3, "onDataStateChanged: Data activity DORMANT. stopNetStatePoll"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 322
    :cond_2b
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto :goto_10

    .line 324
    :cond_2c
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 325
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isAnyDataCallDormant = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 329
    :cond_2d
    if-eqz v8, :cond_2e

    .line 330
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 335
    .end local v0    # "physicalLinkState":I
    :cond_2e
    :goto_10
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 336
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: dcsToRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " apnsToCleanup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;Ljava/lang/String;)V

    .line 341
    :cond_2f
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 342
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$2700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 343
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_11

    .line 346
    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 347
    .local v2, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->access$600()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$MtkDccDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 348
    :cond_31
    const v3, 0x40009

    iget v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(II)V

    .line 349
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_12

    .line 352
    :cond_32
    return-void

    .line 118
    .end local v4    # "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v6    # "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    .end local v7    # "isAnyDataCallDormant":Z
    .end local v8    # "isAnyDataCallActive":Z
    .end local v16    # "dcListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v17    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .end local v21    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    :goto_13
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_13
.end method
