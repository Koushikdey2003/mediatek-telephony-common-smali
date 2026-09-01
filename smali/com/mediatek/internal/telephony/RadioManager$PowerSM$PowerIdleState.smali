.class Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;
.super Lcom/android/internal/telephony/State;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerIdleState"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V
    .locals 0

    .line 2181
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/RadioManager$1;

    .line 2181
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 3

    .line 2184
    const-string v0, "RadioManager"

    const-string v1, "PowerIdleState: enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredModemPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentModemPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$1200(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v1, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_0

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2194
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist exit()V
    .locals 2

    .line 2197
    const-string v0, "RadioManager"

    const-string v1, "PowerIdleState: exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2201
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

    .line 2202
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "the same power state: "

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    .line 2244
    const-string v0, "un-expected event, stay at idle"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v4, :cond_2

    .line 2237
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v1, :cond_1

    .line 2238
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    .line 2237
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_1

    .line 2240
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    goto/16 :goto_1

    .line 2225
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2226
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v1, :cond_9

    .line 2227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v0, :cond_4

    .line 2228
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_1

    .line 2230
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_1

    .line 2218
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v4, :cond_6

    .line 2219
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 2221
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    goto :goto_1

    .line 2204
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v4, :cond_8

    .line 2205
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 2207
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.MODEM_POWER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "modemPower"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$1300(Lcom/mediatek/internal/telephony/RadioManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2216
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 2246
    :cond_9
    :goto_1
    return v3
.end method
