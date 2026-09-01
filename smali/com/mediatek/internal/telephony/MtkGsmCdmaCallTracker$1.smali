.class Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

.field final synthetic blacklist val$dialString:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 1423
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 4

    .line 1425
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->access$300(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->access$400(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "tmpStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    .line 1429
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    const/16 v3, 0x10

    .line 1433
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1432
    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1435
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->access$500(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->access$600(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    .line 1437
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1436
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1442
    .end local v0    # "tmpStr":Ljava/lang/String;
    :cond_0
    return-void
.end method
