.class Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtkSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;

    .line 1668
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1670
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1672
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, "reasonExtra":Ljava/lang/String;
    const-string v2, "phone"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1675
    .local v2, "id":I
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1676
    .local v4, "simState":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: phone id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 1678
    const-string v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1679
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    iget v5, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    if-ne v2, v5, :cond_0

    .line 1680
    const/4 v5, 0x0

    .line 1681
    .local v5, "strPuk1Count":Ljava/lang/String;
    sget-object v6, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    iget v7, v7, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    aget-object v6, v6, v7

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1683
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 1687
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$502(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 1689
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$600(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v6

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1693
    .end local v5    # "strPuk1Count":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    iget v5, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    if-ne v2, v5, :cond_2

    .line 1694
    const-string v5, ""

    .line 1695
    .local v5, "strPhbReady":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    iget v6, v6, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v7, "vendor.gsm.sim.ril.phbready"

    const-string v8, "false"

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1699
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mPhbReady: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",strPhbReady: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 1701
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1702
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v6

    const-string v7, "true"

    const/4 v8, 0x1

    if-nez v6, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1703
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$702(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z

    .line 1704
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v7

    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V

    goto :goto_0

    .line 1706
    :cond_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$900(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v6

    if-ne v8, v6, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1707
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPhbWaitSub is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$900(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", broadcast if need"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 1708
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$902(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z

    .line 1709
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z

    move-result v7

    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V

    .line 1715
    .end local v1    # "reasonExtra":Ljava/lang/String;
    .end local v2    # "id":I
    .end local v4    # "simState":Ljava/lang/String;
    .end local v5    # "strPhbReady":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
