.class public Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;
.super Ljava/lang/Object;
.source "CapabilitySwitch.java"


# static fields
.field private static blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CapaSwitch"

.field private static final blacklist capability_switch_policy:I

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

.field private static blacklist mInstance:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->DBG:Z

    .line 26
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mInstance:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 27
    sput-object v1, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mContext:Landroid/content/Context;

    .line 29
    sput-object v1, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 31
    nop

    .line 32
    const-string v1, "persist.vendor.mtk_sim_switch_policy"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->capability_switch_policy:I

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSubSelector"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mContext:Landroid/content/Context;

    .line 43
    sput-object p2, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 44
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataSubSelector"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 35
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mInstance:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;-><init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mInstance:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 38
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mInstance:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    return-object v0
.end method

.method public static blacklist getSimStatus()I
    .locals 2

    .line 140
    const-string v0, "getSimStatus"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 141
    const-string v0, "persist.vendor.radio.sim.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isNeedWaitImsi()Z
    .locals 2

    .line 106
    const-string v0, "persist.vendor.radio.wait.imsi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNeedWaitImsiRoaming()Z
    .locals 2

    .line 110
    const-string v0, "persist.vendor.radio.waitimsi.roaming"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNeedWaitUnlock()Z
    .locals 2

    .line 90
    const-string v0, "persist.vendor.radio.unlock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNeedWaitUnlockRoaming()Z
    .locals 2

    .line 94
    const-string v0, "persist.vendor.radio.unlock.roaming"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .line 197
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->DBG:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "CapaSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .line 203
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->DBG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "CapaSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method

.method public static blacklist resetSimStatus()V
    .locals 2

    .line 135
    const-string v0, "resetSimStatus"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 136
    const-string v0, "persist.vendor.radio.sim.status"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static blacklist setNeedWaitImsi(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 114
    const-string v0, "persist.vendor.radio.wait.imsi"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static blacklist setNeedWaitImsiRoaming(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 118
    const-string v0, "persist.vendor.radio.waitimsi.roaming"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static blacklist setNeedWaitUnlock(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 98
    const-string v0, "persist.vendor.radio.unlock"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist setNeedWaitUnlockRoaming(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 102
    const-string v0, "persist.vendor.radio.unlock.roaming"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist setSimStatus(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 122
    if-nez p0, :cond_0

    .line 123
    const-string v0, "setSimStatus, intent is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 124
    return-void

    .line 126
    :cond_0
    const-string v0, "setSimStatus"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    const-string v1, "simDetectStatus"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "detectedType":I
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->getSimStatus()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.vendor.radio.sim.status"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist getCapabilitySwitchPolicy()I
    .locals 1

    .line 180
    sget v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->capability_switch_policy:I

    return v0
.end method

.method public blacklist handleSimImsiStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 184
    const-string v0, "android.telephony.extra.SIM_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, "simStatus":I
    const-string v2, "phone"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, "slotId":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 188
    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 191
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 194
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist isCanSwitch()Z
    .locals 3

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, "ret":Z
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getAirPlaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataSubselector,isCanSwitch AirplaneModeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 51
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getAirPlaneModeOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 52
    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isSimUnLocked()Z

    move-result v1

    return v1
.end method

.method public blacklist isSimUnLocked()Z
    .locals 8

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "simState":I
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v1

    .line 61
    .local v1, "simNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    .line 62
    sget-object v4, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 63
    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x6

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimUnLocked, sim locked, simState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", slot="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 70
    if-ne v0, v6, :cond_2

    .line 71
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    nop

    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v0, v5, :cond_3

    .line 78
    const-string v4, "DataSubselector,sim locked : allow sim-switch for subsidy-lock"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 79
    return v3

    .line 83
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 86
    .end local v2    # "i":I
    :cond_4
    return v3
.end method

.method public blacklist setCapability(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v0

    .line 146
    .local v0, "phoneNum":I
    new-array v1, v0, [I

    .line 147
    .local v1, "phoneRat":[I
    const/4 v2, 0x1

    .line 149
    .local v2, "isSwitchSuccess":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 150
    .local v3, "curr3GSim":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCapability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current 3G Sim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    .line 154
    .local v4, "proxyController":Lcom/android/internal/telephony/ProxyController;
    new-array v5, v0, [Landroid/telephony/RadioAccessFamily;

    .line 155
    .local v5, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 156
    if-ne p1, v6, :cond_0

    .line 157
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v7

    aput v7, v1, v6

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v7

    aput v7, v1, v6

    .line 161
    :goto_1
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    aget v8, v1, v6

    invoke-direct {v7, v6, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v5, v6

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set phone rat fail!!! MaxPhoneRat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->log(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    .line 169
    :cond_2
    return v2
.end method

.method public blacklist setCapabilityIfNeeded(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    move-result v0

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
