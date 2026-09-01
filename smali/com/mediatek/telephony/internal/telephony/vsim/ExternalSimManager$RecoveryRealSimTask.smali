.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;
.super Ljava/util/TimerTask;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoveryRealSimTask"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 456
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 6

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const-string v2, "vendor.gsm.external.sim.enabled"

    const-string v3, "0"

    if-ge v0, v1, :cond_1

    .line 459
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "enabled":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    const-string v2, "ExternalSimMgr"

    const-string v3, "Auto recovery time out, disable VSIM..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v3, 0x1

    shl-int v4, v3, v0

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendDisableEvent(II)V

    .line 458
    .end local v1    # "enabled":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v0

    if-nez v0, :cond_4

    .line 467
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 468
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1    # "enabled":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 472
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_2
    goto :goto_3

    .line 473
    :catch_0
    move-exception v4

    .line 474
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 477
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 479
    .end local v1    # "enabled":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .line 480
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->disableAllVsimWithResetModem()V

    .line 482
    :cond_4
    return-void
.end method
