.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;
.super Landroid/os/Handler;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .locals 0

    .line 2876
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;

    .line 2876
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2879
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x4220a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2881
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 2884
    :goto_0
    return-void
.end method
