.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;
.super Ljava/lang/Object;
.source "MtkServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

.field final synthetic blacklist val$nitzReceiveTime:J

.field final synthetic blacklist val$nitzString:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 1130
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzString:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzReceiveTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 4

    .line 1132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzString:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzReceiveTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$4200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V

    .line 1133
    return-void
.end method
