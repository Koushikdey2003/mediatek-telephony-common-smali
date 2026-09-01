.class Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
.super Lcom/android/internal/telephony/StateMachine;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;
    }
.end annotation


# instance fields
.field private blacklist mCurrentModemCause:I

.field public blacklist mCurrentModemPower:Z

.field private blacklist mDesiredModemCause:I

.field public blacklist mDesiredModemPower:Z

.field protected blacklist mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

.field protected blacklist mPhoneBitMap:I

.field protected blacklist mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

.field protected blacklist mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

.field private blacklist self:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .line 2109
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    .line 2110
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 2089
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->self:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    .line 2091
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    .line 2092
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    .line 2093
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    .line 2111
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2112
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 2113
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemCause:I

    .line 2114
    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 2117
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->addState(Lcom/android/internal/telephony/State;)V

    .line 2118
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->addState(Lcom/android/internal/telephony/State;)V

    .line 2119
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->addState(Lcom/android/internal/telephony/State;)V

    .line 2120
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 2121
    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2088
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1402(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # I

    .line 2088
    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemCause:I

    return p1
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    .line 2088
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 2088
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # I

    .line 2088
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    return-void
.end method

.method private blacklist sendEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2178
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2179
    return-void
.end method

.method private blacklist sendEvent(II)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg1"    # I

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2171
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2172
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2173
    return-void
.end method

.method private blacklist updateModemPowerState(ZII)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I
    .param p3, "cause"    # I

    .line 2125
    xor-int/lit8 v0, p1, 0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2126
    const-string v0, "Skip MODEM_POWER_OFF due to CryptKeeper mode"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->log(Ljava/lang/String;)V

    .line 2127
    return-void

    .line 2129
    :cond_0
    iput p2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mPhoneBitMap:I

    .line 2130
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, p3, :cond_4

    .line 2131
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v4, v3, :cond_2

    .line 2132
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2133
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 2134
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$1100(Lcom/mediatek/internal/telephony/RadioManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2136
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    goto :goto_0

    .line 2139
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 2142
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_1

    .line 2143
    :cond_4
    if-ne v2, p3, :cond_6

    .line 2145
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 2146
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 2147
    if-eqz p1, :cond_5

    move v2, v3

    :cond_5
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_1

    .line 2148
    :cond_6
    const/16 v1, 0x10

    if-ne v1, p3, :cond_7

    .line 2150
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 2151
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 2152
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_1

    .line 2153
    :cond_7
    const/16 v1, 0x8

    if-ne v1, p3, :cond_9

    .line 2155
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 2156
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 2157
    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_1

    .line 2158
    :cond_9
    const/16 v1, 0x40

    if-ne v1, p3, :cond_a

    .line 2160
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2161
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 2162
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_1

    .line 2163
    :cond_a
    const/16 v0, 0x80

    if-ne v0, p3, :cond_b

    .line 2164
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    .line 2166
    :cond_b
    :goto_1
    return-void
.end method
