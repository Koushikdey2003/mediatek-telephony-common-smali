.class Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "RttEmcGuardTimerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    .line 76
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "onReceive : mRttReceiver rtt guard timer 180"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->access$002(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->access$102(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Z)Z

    .line 87
    :cond_0
    return-void
.end method
