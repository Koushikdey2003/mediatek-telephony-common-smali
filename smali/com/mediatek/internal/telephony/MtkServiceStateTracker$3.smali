.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;
.super Ljava/lang/Object;
.source "MtkServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

.field final synthetic blacklist val$old_plmn:Ljava/lang/String;

.field final synthetic blacklist val$plmn:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 3481
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;->val$old_plmn:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;->val$plmn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 3

    .line 3483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;->val$old_plmn:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;->val$plmn:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$4300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    return-void
.end method
