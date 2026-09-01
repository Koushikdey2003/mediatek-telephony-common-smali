.class Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "SmartDataSwitchAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverStateListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$1;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;-><init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V

    return-void
.end method


# virtual methods
.method public blacklist onHandover(III)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandover() simIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ratType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 109
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onHandoverToWifi()V

    .line 111
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->access$000(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 112
    :cond_0
    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onHandoverToCellular()V

    .line 115
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->access$000(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 118
    :cond_2
    :goto_0
    return-void
.end method
