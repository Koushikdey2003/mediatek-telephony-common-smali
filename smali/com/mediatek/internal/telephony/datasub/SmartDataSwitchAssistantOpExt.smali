.class public Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;
.super Ljava/lang/Object;
.source "SmartDataSwitchAssistantOpExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;


# static fields
.field private static blacklist DBG:Z

.field private static blacklist LOG_TAG:Ljava/lang/String;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;


# instance fields
.field private blacklist isSrvccDuringCall:Z

.field protected blacklist mVoiceNetworkType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    .line 57
    const-string v0, "SmartDataSwitchOpExt"

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mContext:Landroid/content/Context;

    .line 61
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 63
    iput v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    .line 66
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private blacklist isNetworkTypeChanged(I)Z
    .locals 3
    .param p1, "newVoiceNwType"    # I

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkTypeChanged: mVoiceNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVoiceNwType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 199
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    if-eq v1, p1, :cond_0

    .line 200
    iput p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_0
    return v0
.end method

.method protected static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 213
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    return-void
.end method

.method protected static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 219
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    return-void
.end method

.method protected static blacklist logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 225
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void
.end method

.method protected static blacklist logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 207
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkIsSwitchAvailable(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 139
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getAospTemporaryDataSettings(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "checkIsSwitchAvailable() settings is off, not passed"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 141
    return v1

    .line 145
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 146
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getDsdaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 148
    const-string v2, "checkIsSwitchAvailable(): Dsda mode, not passed"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 149
    return v1

    .line 153
    :cond_1
    sget-object v3, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getVoiceNetworkType(I)I

    move-result v3

    .line 154
    .local v3, "nwType":I
    sget-object v4, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v4, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isWifcCalling(I)Z

    move-result v4

    .line 155
    .local v4, "isWifiCalling":Z
    sget-object v5, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v5, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isVoLteCalling(I)Z

    move-result v5

    .line 156
    .local v5, "isVoLteCalling":Z
    sget-object v6, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getTemporaryDataMode()I

    move-result v6

    .line 157
    .local v6, "mode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsSwitchAvailable() nwType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isCdma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isWifcCalling="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isVoLteCalling="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSrvccDuringCall="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {v7}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 163
    const/16 v7, 0x10

    if-nez v6, :cond_3

    .line 164
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_2

    if-eq v3, v7, :cond_2

    if-eqz v4, :cond_8

    .line 167
    :cond_2
    const-string v2, "checkIsSwitchAvailable(): not passed, mode TEMP_DATA_MODE_DEFAULT"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 168
    return v1

    .line 170
    :cond_3
    if-ne v6, v2, :cond_5

    .line 171
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_4

    if-eq v3, v7, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_8

    .line 175
    :cond_4
    const-string v2, "checkIsSwitchAvailable(): not passed, mode TEMP_DATA_MODE_ONLY_VOLTE"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 176
    return v1

    .line 178
    :cond_5
    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    .line 179
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_6

    if-eq v3, v7, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_8

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    if-nez v7, :cond_8

    .line 183
    :cond_6
    const-string v2, "checkIsSwitchAvailable(): not passed, mode TEMP_DATA_MODE_EXCEPT_CSFB"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 184
    return v1

    .line 187
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsSwitchAvailable(): not passed, unknown mode:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 189
    :cond_8
    const-string v1, "checkIsSwitchAvailable(): passed"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 190
    return v2
.end method

.method public blacklist init(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V
    .locals 1
    .param p1, "smartDataSwitchAssistant"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 71
    const-string v0, "init()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 72
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 73
    return-void
.end method

.method public blacklist isNeedSwitchCallType(I)Z
    .locals 1
    .param p1, "callType"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSmartDataSwtichAllowed()Z
    .locals 1

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onCallEnded()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 87
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregServiceStateChangedEvent()V

    .line 88
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregSrvccEvent()V

    .line 89
    return-void
.end method

.method public blacklist onCallStarted()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 79
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->regServiceStateChangedEvent()V

    .line 80
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->regSrvccEvent()V

    .line 81
    return-void
.end method

.method public blacklist onHandoverToCellular()V
    .locals 0

    .line 119
    return-void
.end method

.method public blacklist onHandoverToWifi()V
    .locals 0

    .line 116
    return-void
.end method

.method public blacklist onServiceStateChanged(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 105
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getInCallPhoneId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 106
    return v1

    .line 108
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getVoiceNetworkType(I)I

    move-result v0

    .line 109
    .local v0, "voiceNwType":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isNetworkTypeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const/4 v1, 0x1

    return v1

    .line 112
    :cond_1
    return v1
.end method

.method public blacklist onSrvccStateChanged()V
    .locals 1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 100
    const-string v0, "onSrvccStateChanged, isSrvccDuringCall=true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public blacklist onSubChanged()V
    .locals 0

    .line 92
    return-void
.end method

.method public blacklist onTemporaryDataSettingsChanged()V
    .locals 0

    .line 95
    return-void
.end method

.method public blacklist preCheckByCallStateExt(Landroid/content/Intent;Z)Z
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "result"    # Z

    .line 123
    return p2
.end method
