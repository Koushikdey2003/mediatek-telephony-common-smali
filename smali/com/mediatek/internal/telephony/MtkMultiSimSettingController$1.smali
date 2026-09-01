.class Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkMultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->initSimMeLock(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    .line 320
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;->this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;->this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->access$000(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Ljava/lang/String;)V

    .line 328
    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;->this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaults()V

    .line 332
    :cond_1
    return-void
.end method
