.class Lcom/mediatek/internal/telephony/MtkRetryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkRetryManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 86
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSameApnRetryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 93
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$000(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mModemSuggestedDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 94
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$100(Lcom/mediatek/internal/telephony/MtkRetryManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentApnIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 95
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$200(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$300(Lcom/mediatek/internal/telephony/MtkRetryManager;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, -0x1

    const-string v1, "subscription"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 100
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$400(Lcom/mediatek/internal/telephony/MtkRetryManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$500(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v1

    .line 103
    .local v1, "sameApnRetryCountTemp":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$600(Lcom/mediatek/internal/telephony/MtkRetryManager;)J

    move-result-wide v2

    .line 104
    .local v2, "modemSuggestedDelayTemp":J
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$700(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v4

    .line 105
    .local v4, "currentApnIndexTemp":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$800(Lcom/mediatek/internal/telephony/MtkRetryManager;)V

    .line 106
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v5, v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$902(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I

    .line 107
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v5, v2, v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$1002(Lcom/mediatek/internal/telephony/MtkRetryManager;J)J

    .line 108
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-static {v5, v4}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$1102(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I

    .line 111
    .end local v0    # "subId":I
    .end local v1    # "sameApnRetryCountTemp":I
    .end local v2    # "modemSuggestedDelayTemp":J
    .end local v4    # "currentApnIndexTemp":I
    :cond_0
    return-void
.end method
