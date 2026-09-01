.class Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 80
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 88
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 90
    :cond_1
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, -0x1

    const-string v2, "subscription"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, "nDefaultDataSubId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nDefaultDataSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v2, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V

    .line 95
    .end local v1    # "nDefaultDataSubId":I
    goto/16 :goto_0

    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$302(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z

    .line 97
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_AIRPLANE_MODE_CHANGED, enabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 99
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$402(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z

    .line 101
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$500(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$602(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z

    goto :goto_0

    .line 109
    :cond_4
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_5
    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const-string v2, "DataSubSelector receive CONNECTIVITY_ACTION"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    goto :goto_0

    .line 117
    :cond_7
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const-string v2, "DataSubSelector receive ACTION_BOOT_COMPLETE"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    .line 122
    :cond_8
    :goto_0
    return-void
.end method
