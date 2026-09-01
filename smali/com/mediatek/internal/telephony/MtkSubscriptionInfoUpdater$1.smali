.class Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSubscriptionInfoUpdater.java"


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

    .line 979
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 982
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$000(Ljava/lang/String;)V

    .line 985
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$100(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 987
    .local v1, "subIdList":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 988
    .local v4, "subId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v5, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$200(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)V

    .line 987
    .end local v4    # "subId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 990
    .end local v1    # "subIdList":[I
    :cond_0
    goto :goto_2

    :cond_1
    const-string v1, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 991
    const-string v1, "phone"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 993
    .local v1, "slotIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Common Slot] NO_CHANTED, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$000(Ljava/lang/String;)V

    .line 994
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "slotIndex":I
    goto :goto_1

    .line 995
    :cond_2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 999
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$300(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I

    move-result v1

    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_4

    .line 1000
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$302(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)I

    .line 1001
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v1

    .line 1002
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    goto :goto_2

    .line 995
    :cond_3
    :goto_1
    nop

    .line 1005
    :cond_4
    :goto_2
    return-void
.end method
