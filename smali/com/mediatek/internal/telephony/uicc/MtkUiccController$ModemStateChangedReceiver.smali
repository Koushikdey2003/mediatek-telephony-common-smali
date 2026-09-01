.class Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtkUiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModemStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;

    .line 834
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 836
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mediatek.intent.action.MODEM_POWER_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 839
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 840
    .local v2, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 841
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->sendMessage(Landroid/os/Message;)Z

    .line 842
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger GET_SIM_STATUS due to modem state changed for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 838
    .end local v2    # "index":Ljava/lang/Integer;
    .end local v3    # "msg":Landroid/os/Message;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
