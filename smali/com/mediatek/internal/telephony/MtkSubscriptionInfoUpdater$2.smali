.class Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;
.super Ljava/lang/Object;
.source "MtkSubscriptionInfoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 1009
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 4

    .line 1011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$604(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I

    .line 1012
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$600(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$700(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$800(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$900(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    .line 1019
    :cond_1
    :goto_0
    return-void
.end method
