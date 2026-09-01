.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 183
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "phoneState":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    const-string v2, "onPhoneStateChanged: phone is IDLE"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    goto :goto_0

    .line 197
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const-string v2, "onPhoneStateChanged: phone is OFFHOOK"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 200
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 205
    .end local v1    # "phoneState":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method
