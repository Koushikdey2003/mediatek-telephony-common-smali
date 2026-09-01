.class Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;
.super Ljava/lang/Object;
.source "DataSubSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkMode(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

.field final synthetic blacklist val$subId:I

.field final synthetic blacklist val$subInfoList:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 331
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    iput p3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    iget v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subId:I

    invoke-static {v0, v2, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V

    goto :goto_2

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 336
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 338
    .local v2, "tempSubId":I
    iget v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subId:I

    if-ne v2, v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v3, v2, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V

    goto :goto_1

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V

    .line 336
    .end local v2    # "tempSubId":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "index":I
    :cond_2
    :goto_2
    return-void
.end method
