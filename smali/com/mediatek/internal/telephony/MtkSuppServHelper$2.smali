.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 728
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 731
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$700(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    goto/16 :goto_1

    .line 734
    :cond_0
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 736
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 737
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 738
    .local v1, "bAirplaneModeOn":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_AIRPLANE_MODE_CHANGED, bAirplaneModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 740
    if-eqz v1, :cond_2

    .line 742
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$800(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 743
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 747
    .end local v1    # "bAirplaneModeOn":Z
    :cond_2
    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 749
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    const-string v2, "ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$900(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 751
    return-void

    .line 753
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$1000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;

    move-result-object v1

    .line 754
    .local v1, "ssUtTest":Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->run()V

    .line 755
    .end local v1    # "ssUtTest":Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    goto :goto_1

    :cond_5
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 756
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 758
    .local v1, "simStatus":I
    const/4 v2, -0x1

    const-string v3, "subscription"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 760
    .local v2, "subId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_APPLICATION_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 762
    const/16 v3, 0xa

    if-eq v3, v1, :cond_6

    .line 763
    return-void

    .line 762
    .end local v1    # "simStatus":I
    .end local v2    # "subId":I
    :cond_6
    goto :goto_0

    .line 765
    :cond_7
    const-string v1, "com.mediatek.systemupdate.UPDATE_SUCCESSFUL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 766
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    const-string v2, "ACTION_SYSTEM_UPDATE_SUCCESSFUL"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    goto :goto_1

    .line 765
    :cond_8
    :goto_0
    nop

    .line 768
    :goto_1
    return-void
.end method
