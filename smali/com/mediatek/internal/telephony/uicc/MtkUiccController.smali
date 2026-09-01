.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
.super Lcom/android/internal/telephony/uicc/UiccController;
.source "MtkUiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;
    }
.end annotation


# static fields
.field protected static final blacklist COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.vendor.mtk_sim_hot_swap_common_slot"

.field protected static final blacklist DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field protected static final blacklist EVENT_BASE_ID:I = 0x64

.field protected static final blacklist EVENT_CARD_DETECTED_IND:I = 0x73

.field protected static final blacklist EVENT_COMMON_SLOT_NO_CHANGED:I = 0x6f

.field protected static final blacklist EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING:I = 0x69

.field protected static final blacklist EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY:I = 0x6a

.field protected static final blacklist EVENT_ICCID_CHANGED_IND:I = 0x74

.field protected static final blacklist EVENT_INVALID_SIM_DETECTED:I = 0x6d

.field protected static final blacklist EVENT_REPOLL_SML_STATE:I = 0x6e

.field protected static final blacklist EVENT_SIM_MISSING:I = 0x67

.field protected static final blacklist EVENT_SIM_PLUG_IN:I = 0x6c

.field protected static final blacklist EVENT_SIM_PLUG_OUT:I = 0x6b

.field protected static final blacklist EVENT_SIM_POWER_CHANGED:I = 0x72

.field protected static final blacklist EVENT_SIM_RECOVERY:I = 0x68

.field protected static final blacklist EVENT_SML_SLOT_LOCK_INFO_CHANGED:I = 0x70

.field protected static final blacklist EVENT_SUPPLY_DEVICE_LOCK_DONE:I = 0x71

.field protected static final blacklist EVENT_VIRTUAL_SIM_OFF:I = 0x66

.field protected static final blacklist EVENT_VIRTUAL_SIM_ON:I = 0x65

.field private static final blacklist LOG_TAG_EX:Ljava/lang/String; = "MtkUiccCtrl"

.field private static final blacklist PROPERTY_SIM_CARD_ONOFF:Ljava/lang/String; = "ro.vendor.mtk_sim_card_onoff"

.field private static final blacklist PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

.field private static final blacklist PROPERTY_SIM_ONOFF_SUPPORT:Ljava/lang/String; = "vendor.ril.sim.onoff.support"

.field private static final blacklist SML_FEATURE_NEED_BROADCAST_INTENT:I = 0x1

.field private static final blacklist SML_FEATURE_NO_NEED_BROADCAST_INTENT:I


# instance fields
.field private blacklist UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

.field private blacklist mIccid:[Ljava/lang/String;

.field private blacklist mMdStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

.field private blacklist mSimPower:[I

.field private blacklist mSimPowerExecutingState:[I

.field private blacklist prevActiveModemCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 163
    const-string v0, "vendor.ril.sim.onoff.state1"

    const-string v1, "vendor.ril.sim.onoff.state2"

    const-string v2, "vendor.ril.sim.onoff.state3"

    const-string v3, "vendor.ril.sim.onoff.state4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    .line 171
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .line 192
    const-string v2, "MtkUiccCtrl"

    const-string v3, "Creating MtkUiccController"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .line 196
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 197
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 199
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 200
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 201
    const-string v5, "ro.crypto.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "unencrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unsupported"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    const-string v5, "ro.crypto.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_restart_framework"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/4 v6, 0x5

    invoke-interface {v5, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    .line 207
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/4 v6, 0x6

    invoke-interface {v5, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x65

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x66

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x67

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x68

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6b

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6c

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6f

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x70

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmlSlotLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x72

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x73

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCardDetectedInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x74

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIccidChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .end local v4    # "index":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 240
    .end local v3    # "i":I
    :cond_2
    const-string v3, "ro.vendor.mtk_external_sim_support"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 245
    :cond_3
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMdStateReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.MODEM_POWER_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMdStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    .line 251
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    .line 252
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    .line 257
    const-string v3, ""

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getRsuSmlFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 262
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RSU-SIMLOCK] Create RsuSml, mCis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_3

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RSU-SIMLOCK] e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x8050159
        0x805015a
        0x805015b
        0x805015c
    .end array-data
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method public static blacklist getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    .locals 7
    .param p0, "slotId"    # I

    .line 798
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 799
    .local v0, "rSim":I
    const-string v2, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 800
    .local v2, "akaSim":I
    const/4 v3, 0x0

    .line 802
    .local v3, "isVsim":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.inserted"

    const-string v5, "0"

    invoke-static {p0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "inserted":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 805
    const/4 v3, 0x1

    .line 808
    :cond_0
    if-ne p0, v0, :cond_1

    if-eqz v3, :cond_1

    .line 809
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 812
    :cond_1
    if-ne p0, v2, :cond_3

    .line 813
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    .line 814
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 816
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 820
    :cond_3
    if-ne v0, v1, :cond_4

    if-ne v2, v1, :cond_4

    if-eqz v3, :cond_4

    .line 821
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 824
    :cond_4
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1
.end method

.method private blacklist onMultiSimConfigChangedEx(I)V
    .locals 7
    .param p1, "newActiveModemCount"    # I

    .line 560
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    array-length v0, v0

    .line 561
    .local v0, "prevActualActiveModemCount":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 564
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    .line 565
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    .line 567
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    .line 568
    move v1, v0

    .local v1, "i":I
    :goto_0
    const-string v2, ""

    const/4 v3, -0x1

    if-ge v1, p1, :cond_0

    .line 569
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mPhoneIdToSlotId:[I

    aput v3, v4, v1

    .line 570
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aput v3, v4, v1

    .line 571
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aput v3, v4, v1

    .line 573
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aput-object v2, v3, v1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 580
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 581
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aput v3, v5, v1

    .line 582
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aput v3, v5, v1

    .line 584
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aput-object v2, v5, v1

    .line 587
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x65

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 588
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x66

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 591
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x67

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x68

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6b

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 596
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6c

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 599
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6f

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x70

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmlSlotLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 606
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x72

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 607
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x73

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCardDetectedInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 609
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x74

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIccidChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 579
    .end local v4    # "index":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 611
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist onSmlSlotLoclInfoChaned(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .line 615
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "onSmlSlotLoclInfoChaned exception"

    const-string v2, "MtkUiccCtrl"

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 620
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 621
    .local v0, "info":[I
    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 622
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 626
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmlSlotLoclInfoChaned, infomation:,lock policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",lock state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",service capability:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",sim valid:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 632
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v1, "smlLockInfoChanged":Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 635
    .local v6, "slotId":I
    invoke-static {v1, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 636
    const-string v7, "slot"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    aget v2, v0, v2

    const-string v7, "DEVICE_LOCK_POLICY"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    aget v2, v0, v3

    const-string v3, "DEVICE_LOCK_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    aget v2, v0, v4

    const-string v3, "SIM_SERVICE_CAPABILITY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    aget v2, v0, v5

    const-string v3, "SIM_VALID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION for mSlotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 648
    return-void

    .line 616
    .end local v0    # "info":[I
    .end local v1    # "smlLockInfoChanged":Landroid/content/Intent;
    .end local v6    # "slotId":I
    :cond_2
    :goto_0
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private blacklist parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePersoType, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 741
    const-string v0, "UNKNOWN"

    return-object v0

    .line 737
    :cond_0
    const-string v0, "SIM"

    return-object v0

    .line 735
    :cond_1
    const-string v0, "SERVICE_PROVIDER"

    return-object v0

    .line 733
    :cond_2
    const-string v0, "CORPORATE"

    return-object v0

    .line 731
    :cond_3
    const-string v0, "NETWORK_SUBSET"

    return-object v0

    .line 729
    :cond_4
    const-string v0, "NETWORK"

    return-object v0
.end method

.method private blacklist parseUnlockDeviceResult(Landroid/os/AsyncResult;)I
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 666
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 667
    .local v0, "result":[I
    if-nez v0, :cond_0

    .line 668
    const/4 v1, -0x1

    return v1

    .line 670
    :cond_0
    array-length v1, v0

    .line 671
    .local v1, "length":I
    const/4 v2, -0x1

    .line 672
    .local v2, "attemptsRemaining":I
    if-lez v1, :cond_1

    .line 673
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 675
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseUnlockDeviceResult: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 676
    return v2
.end method

.method private blacklist removeNotificationVirtual(II)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .line 712
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 714
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 715
    return-void
.end method

.method private blacklist setNotificationVirtual(II)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNotificationVirtual(): notifyType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 684
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 685
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 686
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 687
    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 688
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 691
    const/4 v2, 0x0

    .line 693
    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    const v4, 0x8050158

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 694
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 695
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 697
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 698
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 700
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 701
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "detail":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 703
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 705
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 706
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 708
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v4, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 709
    return-void
.end method

.method private blacklist triggerUpdateInternalSimMountState(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 652
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 653
    .local v0, "subInfoUpdator":Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->triggerUpdateInternalSimMountState(I)V

    goto :goto_0

    .line 656
    :cond_0
    const-string v1, "subInfoUpdate is null."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 658
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getIccApplicationChannel(II)I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIccid(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .line 923
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccid: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 924
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccid: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 925
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getRsuSml()Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    if-nez v0, :cond_0

    .line 278
    const-string v0, "MtkUiccCtrl"

    const-string v1, "getRsuSml : [RSU-SIMLOCK] Sml not supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    return-object v0
.end method

.method public blacklist getRsuSml(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .locals 3
    .param p1, "operator"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getRsuSmlFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 285
    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->checkAndMakeRsuSml(Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    .line 287
    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRsuSml: [RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sml not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCtrl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    return-object v0
.end method

.method public blacklist getSimOnOffExecutingState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 906
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimOnOffExecutingState slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSimPowerExecutingState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aget v0, v0, p1

    return v0

    .line 907
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimOnOffExecutingState: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 908
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSimOnOffState(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 865
    const/4 v0, -0x1

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    const-string v1, "ro.vendor.mtk_sim_card_onoff"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 871
    .local v1, "onoffAPSupport":Z
    const-string v2, "vendor.ril.sim.onoff.support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 872
    .local v2, "onoffMDSupport":Z
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 873
    .local v3, "onoffState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimOnOffState slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " onoffAPSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " onoffMDSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mSimPower = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " onoffState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 877
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 878
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aget v5, v4, p1

    if-ne v5, v0, :cond_1

    .line 880
    return v3

    .line 882
    :cond_1
    aget v0, v4, p1

    return v0

    .line 885
    :cond_2
    const/16 v0, 0xb

    return v0

    .line 866
    .end local v1    # "onoffAPSupport":Z
    .end local v2    # "onoffMDSupport":Z
    .end local v3    # "onoffState":I
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOnOffState: invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 867
    return v0
.end method

.method public blacklist getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 313
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    goto/16 :goto_4

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 320
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 324
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_14

    const/16 v6, 0xa

    if-eq v3, v6, :cond_11

    const/4 v7, 0x5

    if-eq v3, v7, :cond_f

    const/4 v7, 0x6

    if-eq v3, v7, :cond_f

    const/16 v7, 0x65

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 554
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 537
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 538
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 543
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_ICCID_CHANGED_IND index error"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    monitor-exit v0

    return-void

    .line 546
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_ICCID_CHANGED_IND, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 551
    goto/16 :goto_3

    .line 539
    :cond_4
    :goto_0
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_ICCID_CHANGED_IND exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    monitor-exit v0

    return-void

    .line 512
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.phone.ACTION_CARD_DETECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v3, "cardDetectedInd":Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 514
    .local v4, "slotId":I
    invoke-static {v3, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent ACTION_CARD_DETECTED, mSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 519
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    goto/16 :goto_3

    .line 481
    .end local v3    # "cardDetectedInd":Landroid/content/Intent;
    .end local v4    # "slotId":I
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 482
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 486
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 487
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_SIM_POWER_CHANGED index error"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    monitor-exit v0

    return-void

    .line 491
    :cond_6
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 492
    .local v3, "state":[I
    array-length v7, v3

    if-ne v7, v4, :cond_8

    .line 493
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v8, v3, v5

    aput v8, v4, v7

    .line 494
    aget v4, v3, v5

    if-eq v4, v6, :cond_7

    aget v4, v3, v5

    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    .line 496
    :cond_7
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 501
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EVENT_SIM_POWER_CHANGED, index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " simPower: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    .line 502
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSimPowerExecutingState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    .line 503
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->SendbroadcastSimInfoContentChanged()V

    .line 508
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->broadcastManualProvisionStatusChanged(II)V

    .line 510
    goto/16 :goto_3

    .line 483
    .end local v3    # "state":[I
    :cond_9
    :goto_1
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_SIM_POWER_CHANGED exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    monitor-exit v0

    return-void

    .line 468
    :pswitch_3
    const-string v3, "handleMessage (EVENT_SUPPLY_DEVICE_LOCK_DONE)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 469
    const/4 v3, -0x1

    .line 470
    .local v3, "attemptsRemaining":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object v2, v4

    .line 471
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 472
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->parseUnlockDeviceResult(Landroid/os/AsyncResult;)I

    move-result v4

    move v3, v4

    .line 474
    :cond_a
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 475
    .local v4, "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 476
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 477
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 478
    goto/16 :goto_3

    .line 454
    .end local v3    # "attemptsRemaining":I
    .end local v4    # "response":Landroid/os/Message;
    :pswitch_4
    const-string v3, "handleMessage (EVENT_SML_SLOT_LOCK_INFO_CHANGED)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 455
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 458
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IOplusSimlockManager;->DEFAULT:Lcom/android/internal/telephony/IOplusSimlockManager;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IOplusSimlockManager;

    .line 459
    .local v3, "simlockManager":Lcom/android/internal/telephony/IOplusSimlockManager;
    if-eqz v3, :cond_b

    .line 460
    const-string v4, "SimlockManager onSmlSlotLoclInfoChaned"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 461
    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/IOplusSimlockManager;->onSmlSlotLoclInfoChaned(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 464
    :cond_b
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onSmlSlotLoclInfoChaned(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 465
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->triggerUpdateInternalSimMountState(I)V

    .line 466
    goto/16 :goto_3

    .line 442
    .end local v3    # "simlockManager":Lcom/android/internal/telephony/IOplusSimlockManager;
    :pswitch_5
    const-string v3, "handleMessage (EVENT_COMMON_SLOT_NO_CHANGED)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 443
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v3, "intentNoChanged":Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 446
    .local v4, "slotId":I
    invoke-static {v3, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent ACTION_COMMON_SLOT_NO_CHANGED for mSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 449
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    goto/16 :goto_3

    .line 363
    .end local v3    # "intentNoChanged":Landroid/content/Intent;
    .end local v4    # "slotId":I
    :pswitch_6
    const-string v3, "Received EVENT_REPOLL_SML_STATE"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 364
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 366
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_c

    move v5, v4

    :cond_c
    move v3, v5

    .line 369
    .local v3, "needIntent":Z
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 372
    if-ne v3, v4, :cond_17

    .line 373
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 374
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v4, :cond_d

    .line 375
    const-string v5, "UiccCardApplication = null"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 376
    goto/16 :goto_3

    .line 378
    :cond_d
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_e

    .line 379
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v5, "lockIntent":Landroid/content/Intent;
    const-string v6, "Broadcast ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 381
    const-string v6, "com.mediatek.phone.ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v6, "ss"

    const-string v7, "LOCKED"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v6, "reason"

    .line 385
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;

    move-result-object v7

    .line 384
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 387
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "lockIntent":Landroid/content/Intent;
    :cond_e
    goto/16 :goto_3

    .line 435
    .end local v3    # "needIntent":Z
    :pswitch_7
    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 436
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 437
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 438
    goto/16 :goto_3

    .line 430
    :pswitch_8
    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 431
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 432
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 433
    goto/16 :goto_3

    .line 415
    :pswitch_9
    const-string v3, "handleMessage (EVENT_SIM_RECOVERY)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x6a

    .line 417
    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 416
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 419
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.mediatek.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    goto/16 :goto_3

    .line 424
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_a
    const-string v3, "handleMessage (EVENT_SIM_MISSING)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x69

    .line 427
    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 426
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 428
    goto/16 :goto_3

    .line 404
    :pswitch_b
    const-string v3, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->removeNotificationVirtual(II)V

    .line 407
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v4, "AutoAnswer"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 409
    .local v3, "shOff":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 410
    .local v4, "editorOff":Landroid/content/SharedPreferences$Editor;
    const-string v6, "flag"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    goto/16 :goto_3

    .line 394
    .end local v3    # "shOff":Landroid/content/SharedPreferences;
    .end local v4    # "editorOff":Landroid/content/SharedPreferences$Editor;
    :pswitch_c
    const-string v3, "handleMessage (EVENT_VIRTUAL_SIM_ON)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->setNotificationVirtual(II)V

    .line 397
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v6, "AutoAnswer"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 399
    .local v3, "shOn":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 400
    .local v5, "editorOn":Landroid/content/SharedPreferences$Editor;
    const-string v6, "flag"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    goto/16 :goto_3

    .line 352
    .end local v3    # "shOn":Landroid/content/SharedPreferences;
    .end local v5    # "editorOn":Landroid/content/SharedPreferences$Editor;
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->ignoreGetSimStatus()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlightMode ON, Modem OFF: ignore get sim status, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 358
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->handleMessage(Landroid/os/Message;)V

    .line 360
    goto/16 :goto_3

    .line 522
    :cond_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 523
    .local v3, "activeModemCount":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .line 524
    move v4, v3

    .local v4, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    if-ge v4, v5, :cond_13

    .line 525
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getSlotIdFromPhoneId(I)I

    move-result v5

    .line 526
    .local v5, "slotIndex":I
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v6

    .line 527
    .local v6, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v6, :cond_12

    .line 528
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable()V

    .line 530
    :cond_12
    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 524
    .end local v5    # "slotIndex":I
    .end local v6    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 532
    .end local v4    # "i":I
    :cond_13
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->handleMessage(Landroid/os/Message;)V

    .line 533
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onMultiSimConfigChangedEx(I)V

    .line 534
    goto :goto_3

    .line 328
    .end local v3    # "activeModemCount":I
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus,index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->ignoreGetSimStatus()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 334
    const-string v3, "FlightMode ON, Modem OFF: ignore get sim status"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    goto :goto_3

    .line 339
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 340
    .local v3, "uiccManagerImpl":Lcom/android/internal/telephony/IOplusUiccManager;
    if-eqz v3, :cond_16

    .line 341
    invoke-interface {v3}, Lcom/android/internal/telephony/IOplusUiccManager;->enableHypnusAction()V

    .line 344
    :cond_16
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 349
    .end local v3    # "uiccManagerImpl":Lcom/android/internal/telephony/IOplusUiccManager;
    nop

    .line 556
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_17
    :goto_3
    monitor-exit v0

    .line 557
    return-void

    .line 314
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_18
    :goto_4
    const-string v2, "MtkUiccCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit v0

    return-void

    .line 556
    .end local v1    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist ignoreGetSimStatus()Z
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 760
    .local v0, "airplaneMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreGetSimStatus(): airplaneMode - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 762
    const-string v2, "ignoreGetSimStatus(): return true"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 763
    return v1

    .line 766
    :cond_0
    return v2
.end method

.method public blacklist isAllRadioAvailable()Z
    .locals 4

    .line 775
    const/4 v0, 0x1

    .line 776
    .local v0, "isRadioReady":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 777
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 776
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllRadioAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 784
    return v0
.end method

.method protected blacklist mtkLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 770
    const-string v0, "MtkUiccCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void
.end method

.method public blacklist repollIccStateForModemSmlChangeFeatrue(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "needIntent"    # Z

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 748
    goto :goto_0

    :cond_0
    move v1, v0

    .line 751
    .local v1, "arg1":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/16 v3, 0x6e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 752
    return-void
.end method

.method public blacklist resetRadioForVsim()V
    .locals 3

    .line 788
    const-string v0, "resetRadioForVsim...resetRadio"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 790
    .local v0, "mainPhoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 791
    return-void
.end method

.method public blacklist setSimOnOffExecutingState(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 896
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aput p2, v0, p1

    .line 897
    return-void
.end method

.method public blacklist setSimPower(IILandroid/os/Message;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 856
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->setSimPower(ILandroid/os/Message;)V

    .line 857
    return-void
.end method

.method public blacklist supplyDeviceNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 662
    const/16 v1, 0x71

    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 661
    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 663
    return-void
.end method
