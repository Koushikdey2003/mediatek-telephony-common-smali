.class Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;
.super Landroid/os/Handler;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

.field final synthetic blacklist val$this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 94
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->val$this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 97
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->access$000(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 99
    .local v0, "callback":Landroid/telephony/data/DataServiceCallback;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 100
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 136
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$100(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 137
    return-void

    .line 133
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    .line 134
    goto :goto_6

    .line 124
    :pswitch_1
    nop

    .line 125
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    move v3, v4

    .line 128
    :goto_0
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 124
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 131
    goto :goto_6

    .line 119
    :pswitch_2
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    move v3, v4

    .line 119
    :goto_2
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    .line 122
    goto :goto_6

    .line 114
    :pswitch_3
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move v3, v4

    .line 114
    :goto_3
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    .line 117
    goto :goto_6

    .line 109
    :pswitch_4
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 110
    goto :goto_4

    .line 111
    :cond_4
    move v3, v4

    .line 109
    :goto_4
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 112
    goto :goto_6

    .line 102
    :pswitch_5
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    .line 103
    .local v2, "response":Landroid/telephony/data/DataCallResponse;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move v3, v4

    .line 103
    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 107
    nop

    .line 139
    .end local v2    # "response":Landroid/telephony/data/DataCallResponse;
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
