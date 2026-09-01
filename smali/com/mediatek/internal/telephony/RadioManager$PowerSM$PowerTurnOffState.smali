.class Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;
.super Lcom/android/internal/telephony/State;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerTurnOffState"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V
    .locals 0

    .line 2286
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/RadioManager$1;

    .line 2286
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 3

    .line 2289
    const-string v0, "RadioManager"

    const-string v1, "PowerTurnOffState: enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->waitForReady(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2291
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 2292
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$1500(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$1402(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)I

    .line 2295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mPhoneBitMap:I

    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->access$1600(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 2297
    :cond_0
    return-void
.end method

.method public blacklist exit()V
    .locals 2

    .line 2300
    const-string v0, "RadioManager"

    const-string v1, "PowerTurnOffState: exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 2315
    const-string v0, "un-expected event, stay at PowerTurnOffState"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2313
    goto :goto_0

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2309
    nop

    .line 2317
    :goto_0
    return v3
.end method
