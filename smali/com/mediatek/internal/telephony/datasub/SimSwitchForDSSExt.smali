.class public Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;
.super Ljava/lang/Object;
.source "SimSwitchForDSSExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;


# static fields
.field public static blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SimSwitchDSSExt"

.field public static final blacklist USER_BUILD:Z

.field private static blacklist mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

.field protected static blacklist mContext:Landroid/content/Context;

.field private static blacklist mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->USER_BUILD:Z

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->DBG:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 33
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 35
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private blacklist checkOp18SubsidyCapSwitch()Z
    .locals 16

    .line 77
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v0

    new-array v0, v0, [I

    .line 78
    .local v0, "simOpInfo":[I
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v1

    new-array v1, v1, [I

    .line 79
    .local v1, "simType":[I
    const/4 v2, -0x1

    .line 80
    .local v2, "targetSim":I
    const/4 v3, 0x0

    .line 81
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 82
    .local v4, "insertedStatus":I
    sget-object v5, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v5

    new-array v5, v5, [Z

    .line 83
    .local v5, "op18Usim":[Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    .line 84
    .local v6, "defDataSubId":I
    const/4 v7, -0x1

    .line 85
    .local v7, "defDataPhoneId":I
    sget-object v8, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 87
    .local v8, "currIccId":[Ljava/lang/String;
    const-string v9, "checkOp18CapSwitch start"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 89
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 90
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 92
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sget-object v11, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v10, v11, :cond_6

    .line 93
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 94
    .local v11, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v11, :cond_1

    .line 95
    invoke-virtual {v11, v10}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v10

    .line 98
    :cond_1
    aget-object v14, v8, v10

    if-eqz v14, :cond_5

    aget-object v14, v8, v10

    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_2

    .line 102
    :cond_2
    aget-object v12, v8, v10

    const-string v14, "N/A"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 104
    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v12

    if-ne v12, v13, :cond_3

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    shl-int v12, v13, v10

    or-int/2addr v4, v12

    goto :goto_1

    .line 108
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkOp18SubsidyCapSwitch, slot"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " is power off."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 92
    .end local v11    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 99
    .restart local v11    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_5
    :goto_2
    const-string v9, "error: iccid not found, wait for next sub ready"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 100
    return v12

    .line 112
    .end local v10    # "i":I
    .end local v11    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkOp18SubsidyCapSwitch : Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", insertedStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 114
    invoke-static {v0, v1, v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v10

    if-nez v10, :cond_a

    .line 116
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 117
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isCanSwitch()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 118
    const/4 v9, 0x0

    .line 119
    .local v9, "sim1_state":I
    const/4 v10, 0x0

    .line 120
    .local v10, "sim2_state":I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->getMajorSim()I

    move-result v14

    .line 121
    .local v14, "protocolSim":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is in locked state, protocolSim: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 122
    if-ltz v14, :cond_9

    if-gt v14, v13, :cond_9

    .line 124
    rsub-int/lit8 v11, v14, 0x1

    .line 125
    .local v11, "newProtocolSim":I
    sget-object v15, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    if-nez v15, :cond_7

    .line 126
    const-string v13, "mContext is null"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 127
    return v12

    .line 129
    :cond_7
    invoke-static {v15}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    .line 130
    sget-object v15, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    .line 131
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim1_state: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", sim2_state = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 132
    const/4 v12, 0x4

    if-eq v9, v12, :cond_8

    if-ne v10, v12, :cond_9

    .line 134
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Both SIMs are in locked state, newProtocolSim: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 135
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v12, v11}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 136
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 137
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12, v11, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 138
    return v13

    .line 142
    .end local v9    # "sim1_state":I
    .end local v10    # "sim2_state":I
    .end local v11    # "newProtocolSim":I
    .end local v14    # "protocolSim":I
    :cond_9
    const/4 v9, 0x0

    return v9

    .line 146
    :cond_a
    sget-object v10, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isSimUnLocked()Z

    move-result v10

    if-nez v10, :cond_b

    .line 147
    const-string v10, "checkOp18SubsidyCapSwitch : set need wait unlock"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 148
    const-string v10, "true"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitUnlock(Ljava/lang/String;)V

    .line 150
    :cond_b
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v10

    .line 152
    .local v10, "capabilitySimId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op18: capabilitySimId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 153
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v12

    if-ge v11, v12, :cond_d

    .line 155
    aget v12, v0, v11

    const/4 v14, 0x4

    if-ne v12, v14, :cond_c

    .line 156
    aput-boolean v13, v5, v11

    .line 153
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 160
    .end local v11    # "i":I
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op18Usim: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 162
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v12

    if-ge v11, v12, :cond_15

    .line 163
    if-ne v7, v11, :cond_14

    .line 164
    aget-boolean v12, v5, v11

    if-ne v12, v13, :cond_e

    .line 165
    move v2, v11

    goto :goto_6

    .line 167
    :cond_e
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    sget-object v14, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v14

    if-ge v12, v14, :cond_10

    .line 168
    aget-boolean v14, v5, v12

    if-ne v14, v13, :cond_f

    .line 169
    move v2, v12

    .line 167
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 173
    .end local v12    # "j":I
    :cond_10
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "op18: i = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "targetSim : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 175
    aget-boolean v12, v5, v11

    if-ne v12, v13, :cond_12

    .line 176
    const-string v9, "op18-C1: cur is old op18 USIM, no change"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 177
    if-eq v10, v11, :cond_11

    .line 178
    const-string v9, "op18-C1a: old op18 SIM change slot, change!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 179
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 181
    :cond_11
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 182
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v11, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 183
    return v13

    .line 184
    :cond_12
    if-eq v2, v9, :cond_13

    .line 185
    const-string v9, "op18-C2: cur is not op18 SIM but find op18 SIM, change!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 186
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 187
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 188
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v2, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 189
    return v13

    .line 191
    :cond_13
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 192
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 193
    const-string v9, "op18-C6: no higher priority SIM, no cahnge"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 194
    return v13

    .line 162
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 198
    .end local v11    # "i":I
    :cond_15
    aget-boolean v11, v5, v10

    if-ne v11, v13, :cond_16

    .line 199
    move v2, v10

    goto :goto_8

    .line 201
    :cond_16
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v12

    if-ge v11, v12, :cond_18

    .line 202
    aget-boolean v12, v5, v11

    if-ne v12, v13, :cond_17

    .line 203
    move v2, v11

    .line 201
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 207
    .end local v11    # "i":I
    :cond_18
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op18: target SIM :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 208
    aget-boolean v11, v5, v10

    if-ne v11, v13, :cond_19

    .line 209
    const-string v9, "op18-C7: cur is new op18 USIM, no change"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 210
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 211
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 212
    return v13

    .line 213
    :cond_19
    if-eq v2, v9, :cond_1a

    .line 214
    const-string v9, "op18-C8: find op18 USIM, change!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 215
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 216
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 217
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v2, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 218
    return v13

    .line 220
    :cond_1a
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 221
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10, v13}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDataEnabled(IZ)V

    .line 222
    const-string v9, "op18-C12: no higher priority SIM, no cahnge"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 224
    return v13
.end method

.method private blacklist getMajorSim()I
    .locals 4

    .line 63
    const-string v0, "persist.vendor.radio.simswitch"

    .line 64
    .local v0, "PROPERTY_MAJOR_SIM":Ljava/lang/String;
    const-string v1, "persist.vendor.radio.simswitch"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "currMajorSim":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMajorSim]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 69
    :cond_0
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 70
    const/4 v2, -0x1

    return v2
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .line 228
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->DBG:Z

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "SimSwitchDSSExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkCapSwitch(I)Z
    .locals 1
    .param p1, "policy"    # I

    .line 48
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->checkOp18SubsidyCapSwitch()Z

    move-result v0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 1
    .param p1, "dataSubSelector"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 42
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 43
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->getInstance(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 44
    return-void
.end method

.method public blacklist isNeedSimSwitch()I
    .locals 1

    .line 57
    const/4 v0, 0x2

    return v0
.end method
