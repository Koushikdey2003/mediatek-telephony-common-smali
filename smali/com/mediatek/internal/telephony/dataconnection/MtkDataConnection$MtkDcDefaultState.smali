.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDcDefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    .line 870
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 5

    .line 873
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v1, "DcDefaultState: enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 877
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x4000b

    .line 876
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000c

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 882
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000d

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4001b

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 886
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4001d

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 892
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 893
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 894
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasRaCapability()Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 901
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 902
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState: register for intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 909
    return-void
.end method

.method public blacklist exit()V
    .locals 3

    .line 912
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v1, "DcDefaultState: exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 916
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 915
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    .line 918
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 919
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 920
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNrStateChanged(Landroid/os/Handler;)V

    .line 921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNrFrequencyChanged(Landroid/os/Handler;)V

    .line 924
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 926
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/AsyncChannel;->disconnected()V

    .line 928
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/AsyncChannel;)Lcom/android/internal/telephony/AsyncChannel;

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 931
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 932
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2602(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 933
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;

    .line 934
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 935
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 936
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3002(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 937
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 938
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;

    .line 940
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3402(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 945
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 946
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 947
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasRaCapability()Z

    move-result v0

    if-nez v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 952
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 956
    const/4 v0, 0x1

    .line 958
    .local v0, "retVal":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefault msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RefCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 960
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 962
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x4000b

    if-eq v1, v2, :cond_6

    const v2, 0x40025

    if-eq v1, v2, :cond_5

    const v2, 0x40027

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    .line 1012
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    goto/16 :goto_2

    .line 988
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 989
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 990
    goto/16 :goto_2

    .line 976
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 977
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 970
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 971
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcDefaultState: ignore EVENT_IPV6_ADDRESS_REMOVED not in ActiveState"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 964
    :pswitch_3
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 965
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcDefaultState: ignore EVENT_IPV4_ADDRESS_REMOVED not in ActiveState"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1002
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1003
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UPDATE_NETWORKAGENT_SSC_MODE3: lifetime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", new score="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1006
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V

    .line 1007
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V

    .line 1008
    goto :goto_2

    .line 982
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 983
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcDefaultState: ignore EVENT_IPV6_ADDRESS_UPDATED not in ActiveState"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 993
    :cond_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 994
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 995
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v2

    .line 994
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 997
    :cond_7
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    .line 998
    nop

    .line 1016
    :cond_8
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x40020
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
