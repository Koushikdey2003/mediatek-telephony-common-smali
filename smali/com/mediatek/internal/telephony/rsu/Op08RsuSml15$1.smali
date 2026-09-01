.class Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;
.super Landroid/os/Handler;
.source "Op08RsuSml15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 100
    iput-object p1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 104
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$000(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V

    .line 106
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    const-string v2, "Unknown urc or urc that need not handle"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$300(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 115
    .local v1, "event":[I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSU_MESSAGE_UNSOL_RSU_EVENT eventId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$000(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V

    .line 116
    aget v2, v1, v4

    .line 118
    .local v2, "eventId":I
    const/4 v3, 0x1

    .line 119
    .local v3, "needReboot":Z
    const/high16 v5, -0x10000

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x10

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 120
    iget-object v5, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    const v6, 0xffff

    and-int/2addr v6, v2

    if-nez v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v5, v4}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$100(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Z)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected eventId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$200(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V

    .line 124
    nop

    .line 129
    .end local v1    # "event":[I
    .end local v2    # "eventId":I
    .end local v3    # "needReboot":Z
    :goto_0
    return-void
.end method
