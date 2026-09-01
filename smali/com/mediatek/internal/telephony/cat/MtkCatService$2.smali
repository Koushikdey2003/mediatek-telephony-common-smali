.class Lcom/mediatek/internal/telephony/cat/MtkCatService$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkCatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/MtkCatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 1046
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1050
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatServiceReceiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    const-string v1, "com.mediatek.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "slot"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$200(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v1

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1055
    return-void

    .line 1058
    :cond_0
    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, "ivsrAction":Ljava/lang/String;
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    const-string v2, "[IVSR set IVSR flag"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$302(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z

    .line 1063
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const/16 v3, 0xe

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendEmptyMessageDelayed(IJ)Z

    .line 1065
    .end local v1    # "ivsrAction":Ljava/lang/String;
    :cond_1
    goto/16 :goto_2

    :cond_2
    const-string v1, "com.mediatek.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1066
    const-string v5, "mediatek.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 1079
    :cond_3
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1080
    const/4 v1, -0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1081
    .local v1, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM state change, id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", simId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$600(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$700(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1083
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const-string v5, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$802(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I

    .line 1085
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$902(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simIdfromIntent["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$900(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "],simState["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 1087
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$800(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$800(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 1089
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$1000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1090
    const-string v2, "Igonre absent sim state"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    return-void

    .line 1093
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    iput-boolean v4, v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 1094
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$1100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$1200(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)V

    goto :goto_2

    .line 1069
    .end local v1    # "id":I
    :cond_5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ", isDisplayTextDisabled: "

    if-eqz v1, :cond_6

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Set SIM Recovery flag, sim: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$400(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1073
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[World phone flag: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$500(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const/16 v2, 0xf

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->startTimeOut(IJ)V

    .line 1078
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$102(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z

    .line 1098
    :cond_7
    :goto_2
    return-void
.end method
