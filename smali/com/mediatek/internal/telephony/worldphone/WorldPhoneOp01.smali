.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.super Landroid/os/Handler;
.source "WorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final blacklist EMSR_STANDBY_TIMER:I = 0x8

.field private static final blacklist FDD_STANDBY_TIMER:[I

.field private static final blacklist MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final blacklist PROJECT_SIM_NUM:I

.field private static final blacklist PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final blacklist TDD_STANDBY_TIMER:[I

.field private static blacklist sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sBtSapState:I

.field private static blacklist sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sDataRegState:I

.field private static blacklist sDefaultBootuUpModem:I

.field private static blacklist sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static blacklist sDenyReason:I

.field private static blacklist sFddStandByCounter:I

.field private static blacklist sFirstSelect:[Z

.field private static blacklist sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static blacklist sImsi:[Ljava/lang/String;

.field private static blacklist sIsAutoSelectEnable:Z

.field private static blacklist sIsInvalidSim:[Z

.field private static blacklist sIsResumeCampingFail1:Z

.field private static blacklist sIsResumeCampingFail2:Z

.field private static blacklist sIsResumeCampingFail3:Z

.field private static blacklist sIsResumeCampingFail4:Z

.field private static blacklist sIsWaintInFddTimeOut:I

.field private static blacklist sIsWaintInTddTimeOut:I

.field private static blacklist sLastPlmn:Ljava/lang/String;

.field private static blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMajorSim:I

.field private static blacklist sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static blacklist sNwPlmnStrings:[Ljava/lang/String;

.field private static blacklist sPlmnSs:Ljava/lang/String;

.field private static blacklist sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sRegion:I

.field private static blacklist sRilDataRadioTechnology:I

.field private static blacklist sRilDataRegState:I

.field private static blacklist sRilVoiceRadioTechnology:I

.field private static blacklist sRilVoiceRegState:I

.field private static blacklist sServiceState:Lmediatek/telephony/MtkServiceState;

.field private static blacklist sSimLocked:I

.field private static blacklist sSuspendId:[I

.field private static blacklist sSuspendWaitImsi:[Z

.field private static blacklist sSwitchModemCauseType:I

.field private static blacklist sTddStandByCounter:I

.field private static blacklist sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static blacklist sUserType:I

.field private static blacklist sVoiceCapable:Z

.field private static blacklist sVoiceRegState:I

.field private static blacklist sWaitInEmsrResume:Z

.field private static blacklist sWaitInFdd:Z

.field private static blacklist sWaitInTdd:Z

.field private static blacklist smCi:[Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private blacklist mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

.field private blacklist mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private blacklist mIsRegisterEccStateReceiver:Z

.field private blacklist mTddStandByTimerRunnable:Ljava/lang/Runnable;

.field private blacklist mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 24

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    .line 74
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x3c

    const/4 v4, 0x0

    aput v3, v2, v4

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    .line 77
    new-array v1, v1, [I

    const/16 v2, 0x28

    aput v2, v1, v4

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    .line 80
    const-string v5, "46000"

    const-string v6, "46002"

    const-string v7, "46004"

    const-string v8, "46007"

    const-string v9, "46008"

    const-string v10, "00101"

    const-string v11, "00211"

    const-string v12, "00321"

    const-string v13, "00431"

    const-string v14, "00541"

    const-string v15, "00651"

    const-string v16, "00761"

    const-string v17, "00871"

    const-string v18, "00902"

    const-string v19, "01012"

    const-string v20, "01122"

    const-string v21, "01232"

    const-string v22, "46602"

    const-string v23, "50270"

    filled-new-array/range {v5 .. v23}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 87
    const-string v5, "46001"

    const-string v6, "46006"

    const-string v7, "46009"

    const-string v8, "45407"

    const-string v9, "46003"

    const-string v10, "46005"

    const-string v11, "45502"

    const-string v12, "46011"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 91
    const-string v5, "460"

    const-string v6, "001"

    const-string v7, "002"

    const-string v8, "003"

    const-string v9, "004"

    const-string v10, "005"

    const-string v11, "006"

    const-string v12, "007"

    const-string v13, "008"

    const-string v14, "009"

    const-string v15, "010"

    const-string v16, "011"

    const-string v17, "012"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 102
    const-string v1, "vendor.gsm.ril.ct3g"

    const-string v2, "vendor.gsm.ril.ct3g.2"

    const-string v3, "vendor.gsm.ril.ct3g.3"

    const-string v5, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    .line 110
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 111
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 112
    new-array v2, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 113
    new-array v2, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 114
    new-array v2, v0, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 117
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    .line 129
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    .line 130
    new-array v2, v0, [I

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    .line 132
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    .line 133
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    .line 134
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    .line 135
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 136
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 138
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    .line 327
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 1167
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1185
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1216
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    .line 1449
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 161
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 162
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v4, v1

    .line 163
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v4, v2, v1

    .line 164
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x50

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_2

    .line 168
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0xa

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x3c

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit16 v4, v1, 0x424

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 178
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_3

    .line 188
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    goto :goto_2

    .line 190
    :cond_3
    const-string v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 192
    :goto_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110100

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceCapable:Z

    .line 194
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    .line 197
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    .line 198
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 199
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 200
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    .line 201
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 202
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 203
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I

    .line 204
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    .line 205
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    .line 206
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetAllProperties()V

    .line 207
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const-string v3, "persist.vendor.radio.wm_selectmode"

    if-nez v2, :cond_4

    .line 208
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 210
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 211
    nop

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :cond_4
    const-string v0, "Auto select enable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 216
    nop

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_3
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v0, v2

    .line 220
    const-string v4, "persist.vendor.radio.wm_fddtimer"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 222
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v0, v0, v2

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FDD_STANDBY_TIMER = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sDefaultBootuUpModem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    return v0
.end method

.method static synthetic blacklist access$1002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    return p0
.end method

.method static synthetic blacklist access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    return p0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    return-void
.end method

.method static synthetic blacklist access$1200()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I

    return v0
.end method

.method static synthetic blacklist access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I

    return p0
.end method

.method static synthetic blacklist access$1300()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic blacklist access$1308()I
    .locals 2

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1400()[I
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic blacklist access$1500()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    return v0
.end method

.method static synthetic blacklist access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    return p0
.end method

.method static synthetic blacklist access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    return p0
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1800()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic blacklist access$1808()I
    .locals 2

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1900()[I
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimApplicationStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist access$2002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    return p0
.end method

.method static synthetic blacklist access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 71
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    return p0
.end method

.method static synthetic blacklist access$2200()[Z
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic blacklist access$2300()[I
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic blacklist access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->unRegisterEccStateReceiver()V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimCardStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist access$400()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic blacklist access$500()[Lcom/mediatek/internal/telephony/MtkRIL;
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method static synthetic blacklist access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$700()I
    .locals 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic blacklist access$800()[Z
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    return-object v0
.end method

.method static synthetic blacklist access$900()[Z
    .locals 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    return-object v0
.end method

.method private blacklist getRegion(Ljava/lang/String;)I
    .locals 7
    .param p1, "plmn"    # Ljava/lang/String;

    .line 1097
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 1103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1104
    .local v1, "currentMcc":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const-string v4, "46602"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "50270"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1105
    :cond_2
    return v3

    .line 1107
    :cond_3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1108
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_5

    aget-object v5, v2, v0

    .line 1109
    .local v5, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1110
    const-string v0, "[getRegion] REGION_DOMESTIC"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1111
    return v3

    .line 1108
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1114
    :cond_5
    const-string v0, "[getRegion] REGION_FOREIGN"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1115
    const/4 v0, 0x2

    return v0

    .line 1098
    .end local v1    # "currentMcc":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v1, "[getRegion] Invalid PLMN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1099
    return v0
.end method

.method private blacklist getUserType(Ljava/lang/String;)I
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .line 1119
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1120
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1121
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1122
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1123
    const-string v0, "[getUserType] Type1 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1124
    const/4 v0, 0x1

    return v0

    .line 1121
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1128
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1129
    const-string v0, "[getUserType] Type3 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1130
    const/4 v0, 0x3

    return v0

    .line 1127
    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1133
    :cond_3
    const-string v0, "[getUserType] Type2 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1134
    const/4 v0, 0x2

    return v0

    .line 1136
    :cond_4
    const-string v1, "[getUserType] null IMSI"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1137
    return v0
.end method

.method private blacklist handleGmssRatChange(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 630
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 633
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 635
    .local v0, "info":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "mccString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleGmssRatChange] mccString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 637
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v3, 0x3

    if-ne p2, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 638
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->initNWPlmnString()V

    .line 639
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 641
    :cond_0
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v2, :cond_1

    .line 642
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 643
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eq v4, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 645
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 648
    .end local v0    # "info":[I
    .end local v1    # "mccString":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 649
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void
.end method

.method private blacklist handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 735
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 736
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 737
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 738
    .local v0, "invalidSimInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 739
    .local v2, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 740
    .local v4, "cs_invalid":I
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 741
    .local v5, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 742
    .local v6, "cause":I
    const/4 v7, -0x1

    .line 743
    .local v7, "testMode":I
    const-string v8, "vendor.gsm.gcf.testmode"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 744
    .end local v7    # "testMode":I
    .local v1, "testMode":I
    if-eqz v1, :cond_0

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 746
    return-void

    .line 748
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", cs_invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ps_invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", plmn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 750
    sget-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceCapable:Z

    if-eqz v7, :cond_1

    if-ne v4, v3, :cond_1

    .line 751
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 752
    const-string v7, "CS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 753
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 754
    return-void

    .line 757
    :cond_1
    if-ne v5, v3, :cond_2

    .line 758
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 759
    const-string v7, "PS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 760
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 761
    return-void

    .line 764
    .end local v0    # "invalidSimInfo":[Ljava/lang/String;
    .end local v1    # "testMode":I
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v4    # "cs_invalid":I
    .end local v5    # "ps_invalid":I
    .end local v6    # "cause":I
    :cond_2
    goto :goto_0

    .line 765
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_0
    goto :goto_1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WORLDMODE"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist handleNoService()V
    .locals 14

    .line 940
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 942
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 944
    .local v0, "mdType":I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 945
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v1, v1, v2

    .line 946
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 947
    .local v1, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_d

    .line 948
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const-string v3, "Standby in FDD modem"

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4

    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 988
    :cond_0
    if-ne v2, v6, :cond_3

    .line 989
    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_1

    goto :goto_0

    .line 993
    :cond_1
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 991
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 996
    :cond_3
    const-string v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 949
    :cond_4
    :goto_1
    const/4 v2, 0x6

    const-wide/16 v8, 0x3e8

    const-string v10, "s. Timer index = "

    const-string v11, "Wait "

    const-string v12, "s"

    const-string v13, "Timer already set:"

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    goto/16 :goto_2

    .line 965
    :cond_5
    if-eq v0, v4, :cond_6

    if-ne v0, v6, :cond_e

    .line 967
    :cond_6
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v2, v4

    if-ltz v2, :cond_9

    .line 968
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v2, v5, :cond_8

    .line 969
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    if-nez v2, :cond_7

    .line 970
    sput-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 973
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    int-to-long v3, v3

    mul-long/2addr v3, v8

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 976
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 980
    :cond_8
    sput v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 982
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_3

    .line 985
    :cond_9
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 951
    :cond_a
    :goto_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_c

    .line 952
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    if-nez v2, :cond_b

    .line 953
    sput-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v3, v4

    int-to-long v3, v3

    mul-long/2addr v3, v8

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 959
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 963
    :cond_c
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 999
    :cond_d
    const-string v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1001
    :cond_e
    :goto_3
    const-string v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method private blacklist handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 588
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 590
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 591
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 592
    .local v0, "plmnString":[Ljava/lang/String;
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p2, v1, :cond_0

    .line 593
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    .line 595
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plmnString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_1
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v1, :cond_4

    .line 600
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, p2, :cond_3

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    if-eq v1, v2, :cond_3

    .line 602
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->searchForDesignateService(Ljava/lang/String;)V

    .line 606
    :cond_3
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 611
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    if-ne v1, v2, :cond_4

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 613
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 615
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 618
    .end local v0    # "plmnString":[Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 619
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 621
    :goto_1
    return-void
.end method

.method private blacklist handleRadioOn(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 550
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioOn Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 553
    const/4 v0, 0x0

    const-string v2, "try to resume camping again"

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 583
    const-string v0, "unknow slotid"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_0
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail4:Z

    if-eqz v3, :cond_4

    .line 577
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 578
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 579
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail4:Z

    goto :goto_0

    .line 569
    :cond_1
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail3:Z

    if-eqz v3, :cond_4

    .line 570
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 571
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 572
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail3:Z

    goto :goto_0

    .line 562
    :cond_2
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail2:Z

    if-eqz v3, :cond_4

    .line 563
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 564
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 565
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail2:Z

    goto :goto_0

    .line 555
    :cond_3
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail1:Z

    if-eqz v3, :cond_4

    .line 556
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 557
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 558
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail1:Z

    .line 585
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist handleRegistrationSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration Suspend Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->isModemTypeSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    return-void

    .line 704
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 705
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, p2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 707
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne v0, p2, :cond_3

    .line 708
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 709
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(IZ)V

    goto :goto_1

    .line 711
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aput-boolean v1, v0, p2

    .line 712
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    if-nez v0, :cond_2

    .line 713
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    .line 714
    const-string v0, "Wait EMSR:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 717
    :cond_2
    const-string v0, "Emsr Resume Timer already set:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 719
    :goto_0
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    :cond_3
    const-string v0, "Not major slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 723
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_1

    .line 726
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 728
    :goto_1
    return-void
.end method

.method private blacklist handleServiceStateChange(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 654
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RadioState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, p2

    .line 656
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 657
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    .line 659
    if-eqz v0, :cond_1

    .line 660
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    .line 661
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    .line 662
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    .line 663
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I

    .line 664
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    .line 665
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    .line 666
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sMajorSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sPlmnSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilVoiceRadioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I

    .line 673
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilDataRadioTech: , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I

    .line 677
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sIsAutoSelectEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 679
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 681
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p2, v0, :cond_3

    .line 682
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNoService()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleNoService()V

    goto :goto_0

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isInService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 687
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 688
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    goto :goto_0

    .line 692
    :cond_1
    const-string v0, "Null sServiceState"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 697
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleSimApplicationStateChanged(II)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 250
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-eq p1, v0, :cond_0

    .line 252
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    .line 254
    :cond_0
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    if-ne v0, v1, :cond_1

    .line 257
    const-string v0, "retry to world mode change after not major sim pin unlock"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 258
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    .line 259
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    .line 261
    :cond_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_d

    .line 262
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/16 v3, -0x63

    if-ne v0, v3, :cond_2

    .line 263
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 265
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 266
    if-eqz v0, :cond_c

    .line 267
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    aput-object v3, v0, p1

    .line 272
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v3, v0, p1

    if-eqz v3, :cond_b

    .line 273
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 278
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    const-string v3, "IMSI fot slot"

    if-eqz v0, :cond_a

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p1, v0, :cond_a

    .line 279
    const-string v0, "Major SIM"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 281
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aget-boolean v5, v4, p1

    if-eqz v5, :cond_7

    .line 282
    aput-boolean v2, v4, p1

    .line 283
    const/16 v4, 0x64

    const/4 v5, 0x2

    const-string v6, "sSwitchModemCauseType = "

    if-eq v0, v1, :cond_4

    if-ne v0, v5, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 294
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_1

    .line 284
    :cond_4
    :goto_0
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 286
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v0, v1, :cond_5

    .line 287
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_1

    .line 288
    :cond_5
    if-ne v0, v5, :cond_6

    .line 289
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_1

    .line 291
    :cond_6
    const-string v0, "Region unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 300
    :cond_7
    :goto_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aget-boolean v4, v0, p1

    if-eqz v4, :cond_d

    .line 301
    aput-boolean v2, v0, p1

    .line 302
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " now ready, resuming PLMN:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with ID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sWaitInEmsrResume:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 306
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    if-nez v0, :cond_8

    .line 307
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(IZ)V

    goto :goto_2

    .line 309
    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(IZ)V

    goto :goto_2

    .line 312
    :cond_9
    const-string v0, "sNwPlmnStrings is Null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 316
    :cond_a
    const-string v0, "Not major SIM"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_d

    .line 319
    aput-boolean v2, v0, p1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resuming with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_2

    .line 275
    :cond_b
    const-string v0, "Null sIccRecordsInstance"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 276
    return-void

    .line 269
    :cond_c
    const-string v0, "Null sUiccController"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 270
    return-void

    .line 325
    :cond_d
    :goto_2
    return-void
.end method

.method private blacklist handleSimCardStateChanged(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 230
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 231
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 232
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 233
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v0, v1, p1

    .line 234
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 235
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aput-boolean v2, v1, p1

    .line 236
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p1, v1, :cond_0

    .line 237
    const-string v1, "Major SIM removed, no world phone service"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 239
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 240
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 241
    const/16 v0, -0x63

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 242
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not major SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 247
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleSimSwitched()V
    .locals 5

    .line 896
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 897
    const-string v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 899
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    goto/16 :goto_1

    .line 900
    :cond_0
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v2, :cond_1

    .line 901
    const-string v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    goto/16 :goto_1

    .line 903
    :cond_1
    const/16 v2, -0x63

    if-ne v0, v2, :cond_2

    .line 904
    const-string v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 906
    :cond_2
    const-string v0, "Auto modem selection enabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability in slot"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 908
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v3, v0, v2

    if-eqz v3, :cond_a

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 914
    :cond_3
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 916
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 917
    const/16 v2, 0x64

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 930
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 931
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 932
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_1

    .line 934
    :cond_5
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 918
    :cond_6
    :goto_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 919
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 921
    :cond_7
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v0, v4, :cond_8

    .line 922
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v1, v0, v2

    .line 923
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_1

    .line 924
    :cond_8
    if-ne v0, v3, :cond_9

    .line 925
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 926
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_1

    .line 928
    :cond_9
    const-string v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 937
    :goto_1
    return-void

    .line 910
    :cond_a
    :goto_2
    const-string v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 911
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 912
    return-void
.end method

.method private blacklist handleSwitchModem(I)Z
    .locals 12
    .param p1, "toModem"    # I

    .line 776
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 778
    .local v0, "mMajorSim":I
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    if-nez v1, :cond_1

    .line 779
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isEccInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSwitchModem]In ECC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 781
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    if-nez v1, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->registerEccStateReceiver()V

    .line 784
    :cond_0
    return v2

    .line 787
    :cond_1
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    .line 788
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    .line 790
    :cond_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 791
    const-string v1, "sim has been locked!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 792
    return v2

    .line 794
    :cond_3
    if-ltz v0, :cond_4

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    .line 795
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 796
    const-string v1, "Invalid SIM, switch not executed!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 797
    return v2

    .line 800
    :cond_4
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNeedSwitchModem()Z

    move-result v1

    if-nez v1, :cond_5

    .line 801
    const-string v1, "[handleSwitchModem]No need to handle, switch not executed!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 802
    return v2

    .line 805
    :cond_5
    const/16 v1, 0x64

    const/16 v4, 0x65

    if-ne p1, v4, :cond_7

    .line 806
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 807
    const/4 p1, 0x6

    goto :goto_0

    .line 809
    :cond_6
    const/4 p1, 0x4

    goto :goto_0

    .line 811
    :cond_7
    if-ne p1, v1, :cond_9

    .line 812
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 813
    const/4 p1, 0x5

    goto :goto_0

    .line 815
    :cond_8
    const/4 p1, 0x3

    .line 819
    :cond_9
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-ne p1, v5, :cond_e

    .line 820
    if-ne p1, v9, :cond_a

    .line 821
    const-string v1, "Already in WG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 822
    :cond_a
    if-ne p1, v8, :cond_b

    .line 823
    const-string v1, "Already in TG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 824
    :cond_b
    if-ne p1, v7, :cond_c

    .line 825
    const-string v1, "Already in FDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 826
    :cond_c
    if-ne p1, v6, :cond_d

    .line 827
    const-string v1, "Already in TDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 829
    :cond_d
    :goto_1
    return v2

    .line 832
    :cond_e
    sget-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    const-string v10, "Storing modem type: "

    const/4 v11, 0x0

    if-nez v5, :cond_f

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 834
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 836
    :cond_f
    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    if-nez v5, :cond_10

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 838
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 839
    :cond_10
    if-ne v5, v1, :cond_12

    .line 840
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 841
    const-string v1, "Storing modem type: 5"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 842
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v7, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 845
    :cond_11
    const-string v1, "Storing modem type: 3"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 846
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v9, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 849
    :cond_12
    if-ne v5, v4, :cond_14

    .line 850
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 851
    const-string v1, "Storing modem type: 6"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 852
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v6, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 855
    :cond_13
    const-string v1, "Storing modem type: 4"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 856
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 862
    :cond_14
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v4, :cond_16

    .line 863
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_15

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not idle, modem switch not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 865
    return v2

    .line 862
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 869
    .end local v1    # "i":I
    :cond_16
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 871
    if-ne p1, v9, :cond_17

    .line 872
    const-string v1, "Switching to WG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 873
    :cond_17
    if-ne p1, v8, :cond_18

    .line 874
    const-string v1, "Switching to TG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 875
    :cond_18
    if-ne p1, v7, :cond_19

    .line 876
    const-string v1, "Switching to FDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 877
    :cond_19
    if-ne p1, v6, :cond_1a

    .line 878
    const-string v1, "Switching to TDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 880
    :cond_1a
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    if-ne v1, v3, :cond_1b

    .line 881
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v1

    if-ne p1, v1, :cond_1b

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim switching, already will to set modem:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 883
    return v2

    .line 887
    :cond_1b
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModemCauseType(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 890
    invoke-static {v2, p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(II)V

    .line 891
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 892
    return v3
.end method

.method private static declared-synchronized blacklist initNWPlmnString()V
    .locals 2

    const-class v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    monitor-enter v0

    .line 624
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 625
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_0
    monitor-exit v0

    return-void

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist isAllowCampOn(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isAllowCampOn]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "mdType":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 1009
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1010
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimSwitching mdType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1016
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-string v5, "Camp on OK"

    const/4 v6, 0x6

    const-string v7, "Camp on REJECT"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eq v1, v2, :cond_6

    if-ne v1, v8, :cond_1

    goto :goto_2

    .line 1044
    :cond_1
    if-ne v1, v9, :cond_5

    .line 1045
    if-eq v0, v6, :cond_4

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 1050
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v9, :cond_f

    .line 1052
    :cond_3
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1053
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1054
    return v2

    .line 1047
    :cond_4
    :goto_1
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1048
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1049
    return v10

    .line 1057
    :cond_5
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 1017
    :cond_6
    :goto_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v1, v2, :cond_a

    .line 1018
    if-eq v0, v6, :cond_9

    if-ne v0, v4, :cond_7

    goto :goto_3

    .line 1023
    :cond_7
    if-eq v0, v3, :cond_8

    if-ne v0, v9, :cond_f

    .line 1025
    :cond_8
    sput v9, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1026
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1027
    return v10

    .line 1020
    :cond_9
    :goto_3
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1021
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1022
    return v2

    .line 1029
    :cond_a
    if-ne v1, v8, :cond_e

    .line 1030
    if-eq v0, v6, :cond_d

    if-ne v0, v4, :cond_b

    goto :goto_4

    .line 1035
    :cond_b
    if-eq v0, v3, :cond_c

    if-ne v0, v9, :cond_f

    .line 1037
    :cond_c
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1038
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1039
    return v2

    .line 1032
    :cond_d
    :goto_4
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1033
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1034
    return v10

    .line 1042
    :cond_e
    const-string v1, "Unknow region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1059
    :cond_f
    :goto_5
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1060
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1062
    return v10
.end method

.method private blacklist isCdmaCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 1421
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1422
    return v1

    .line 1424
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getC2KWPCardType()[I

    move-result-object v0

    .line 1425
    .local v0, "cardType":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCard(), cardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1426
    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x4

    if-gtz v2, :cond_1

    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x8

    if-gtz v2, :cond_1

    .line 1428
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1429
    .local v1, "retCdmaCard":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCard(), slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " retCdmaCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1430
    return v1
.end method

.method private blacklist isCt3gDualMode(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .line 1440
    if-ltz p1, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    aget-object v0, v0, p1

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCt3gDualMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1446
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1441
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCt3gDualMode: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1442
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isEccInProgress()Z
    .locals 6

    .line 1481
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1483
    .local v1, "inEcm":Z
    const/4 v2, 0x0

    .line 1484
    .local v2, "isInEcc":Z
    nop

    .line 1485
    const-string v3, "telecom"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1484
    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1486
    .local v3, "tm":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_0

    .line 1488
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 1491
    goto :goto_0

    .line 1489
    :catch_0
    move-exception v4

    .line 1490
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception of isEccInProgress"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1493
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEccInProgress, value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", inEcm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInEcc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1494
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4
.end method

.method private blacklist isInService()Z
    .locals 3

    .line 1066
    const/4 v0, 0x0

    .line 1068
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    if-nez v1, :cond_1

    .line 1070
    :cond_0
    const/4 v0, 0x1

    .line 1072
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1073
    return v0
.end method

.method private blacklist isNeedReloadModem(I)Z
    .locals 4
    .param p1, "capabilitySimId"    # I

    .line 1403
    const/4 v0, 0x1

    .line 1404
    .local v0, "isNeed":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1406
    .local v1, "activeSvlteModeSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNeedReloadModem] activeSvlteModeSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sUserType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", capabilitySimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1408
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-ltz p1, :cond_0

    if-eq p1, v1, :cond_1

    .line 1410
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isCdmaCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1411
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1412
    const/4 v0, 0x0

    .line 1416
    .end local v1    # "activeSvlteModeSlotId":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedReloadModem] isNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1417
    return v0
.end method

.method private blacklist isNeedSwitchModem()Z
    .locals 5

    .line 1386
    const/4 v0, 0x1

    .line 1387
    .local v0, "isNeed":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 1388
    .local v1, "majorSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1389
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 1390
    .local v2, "activeSvlteModeSlotId":I
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ltz v1, :cond_0

    if-eq v1, v2, :cond_1

    .line 1392
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1393
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 1394
    const/4 v0, 0x0

    .line 1398
    .end local v2    # "activeSvlteModeSlotId":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNeedSwitchModem] isNeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1399
    return v0
.end method

.method private blacklist isNoService()Z
    .locals 4

    .line 1077
    const/4 v0, 0x0

    .line 1079
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    :cond_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    if-nez v1, :cond_1

    .line 1087
    const/4 v0, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    const/4 v0, 0x0

    .line 1091
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1092
    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPOP01]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    return-void
.end method

.method private blacklist registerEccStateReceiver()V
    .locals 3

    .line 1461
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1462
    const-string v0, "registerEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1463
    return-void

    .line 1465
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1467
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    .line 1469
    return-void
.end method

.method private blacklist removeEmsrResumeByTimer()V
    .locals 1

    .line 1231
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    if-eqz v0, :cond_0

    .line 1232
    const-string v0, "Remove EMSR wait timer. Set sWaitInEmsrResume = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    .line 1234
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1236
    :cond_0
    return-void
.end method

.method private blacklist removeModemStandByTimer()V
    .locals 2

    .line 1204
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1205
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1206
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 1207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1209
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 1210
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1211
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 1212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1214
    :cond_1
    return-void
.end method

.method private blacklist resetAllProperties()V
    .locals 3

    .line 1239
    const-string v0, "[resetAllProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1240
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    .line 1241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1242
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    .end local v0    # "i":I
    :cond_0
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1245
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetSimProperties()V

    .line 1246
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 1247
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    .line 1248
    return-void
.end method

.method private blacklist resetNetworkProperties()V
    .locals 4

    .line 1251
    const-string v0, "[resetNetworkProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1252
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 1254
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1256
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1257
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1258
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1261
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeEmsrResumeByTimer()V

    .line 1262
    const/16 v1, 0xff

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1264
    monitor-exit v0

    .line 1265
    return-void

    .line 1264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist resetSimProperties()V
    .locals 4

    .line 1268
    const-string v0, "[resetSimProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1269
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 1271
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1273
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1274
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 1275
    monitor-exit v0

    .line 1276
    return-void

    .line 1275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist resumeCampingProcedure(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "isResumeModem"    # Z

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume camping slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isResumeModem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSimLocked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1144
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1145
    .local v0, "plmnString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1146
    .local v2, "switchModem":Z
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNeedSwitchModem()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",DenyReason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1151
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1152
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    move-result v2

    goto :goto_1

    .line 1153
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 1154
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    move-result v2

    goto :goto_1

    .line 1147
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 1157
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 1158
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 1159
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeEmsrResumeByTimer()V

    .line 1160
    if-eqz p2, :cond_4

    .line 1161
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    add-int/lit8 v4, p1, 0x46

    .line 1162
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1161
    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 1165
    :cond_4
    return-void
.end method

.method private blacklist searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .param p1, "strPlmn"    # Ljava/lang/String;

    .line 1279
    if-nez p1, :cond_0

    .line 1280
    const-string v0, "[searchForDesignateService]- null source"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1281
    return-void

    .line 1283
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1284
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1285
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1286
    const-string v0, "Find TD service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUserType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sRegion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1288
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1289
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1291
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 1292
    goto :goto_1

    .line 1284
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist unRegisterEccStateReceiver()V
    .locals 2

    .line 1472
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1473
    const-string v0, "unRegisterEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1474
    return-void

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    .line 1478
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 423
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :pswitch_0
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 503
    goto/16 :goto_0

    .line 497
    :pswitch_1
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 499
    goto/16 :goto_0

    .line 493
    :pswitch_2
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 495
    goto/16 :goto_0

    .line 489
    :pswitch_3
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 491
    goto/16 :goto_0

    .line 541
    :pswitch_4
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 543
    goto/16 :goto_0

    .line 537
    :pswitch_5
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 539
    goto/16 :goto_0

    .line 533
    :pswitch_6
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 535
    goto/16 :goto_0

    .line 529
    :pswitch_7
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 531
    goto/16 :goto_0

    .line 523
    :pswitch_8
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 524
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_4> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 525
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail4:Z

    goto/16 :goto_0

    .line 517
    :pswitch_9
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 518
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_3> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 519
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail3:Z

    goto/16 :goto_0

    .line 511
    :pswitch_a
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 512
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_2> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 513
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail2:Z

    goto/16 :goto_0

    .line 505
    :pswitch_b
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 506
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_1> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 507
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail1:Z

    goto/16 :goto_0

    .line 485
    :pswitch_c
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, v5, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 487
    goto/16 :goto_0

    .line 481
    :pswitch_d
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 483
    goto/16 :goto_0

    .line 477
    :pswitch_e
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 479
    goto/16 :goto_0

    .line 473
    :pswitch_f
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 475
    goto/16 :goto_0

    .line 469
    :pswitch_10
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 471
    goto :goto_0

    .line 457
    :pswitch_11
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 459
    goto :goto_0

    .line 445
    :pswitch_12
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 447
    goto :goto_0

    .line 433
    :pswitch_13
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 435
    goto :goto_0

    .line 465
    :pswitch_14
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 467
    goto :goto_0

    .line 453
    :pswitch_15
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 455
    goto :goto_0

    .line 441
    :pswitch_16
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 443
    goto :goto_0

    .line 429
    :pswitch_17
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 431
    goto :goto_0

    .line 461
    :cond_0
    const-string v1, "handleMessage : <EVENT_RADIO_ON_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 463
    goto :goto_0

    .line 449
    :cond_1
    const-string v1, "handleMessage : <EVENT_RADIO_ON_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 451
    goto :goto_0

    .line 437
    :cond_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 439
    goto :goto_0

    .line 425
    :cond_3
    const-string v1, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 427
    nop

    .line 547
    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x50
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x424
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist notifyRadioCapabilityChange(I)V
    .locals 5
    .param p1, "capabilitySimId"    # I

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, "toModem":I
    const-string v1, "[setRadioCapabilityChange]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability will be set to slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1324
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeEmsrResumeByTimer()V

    .line 1325
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v1, :cond_0

    .line 1326
    const-string v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1327
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    goto/16 :goto_3

    .line 1329
    :cond_0
    const-string v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1330
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v2, v1, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 1336
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1337
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1351
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1352
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1353
    const/16 v0, 0x64

    goto :goto_1

    .line 1355
    :cond_3
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1356
    return-void

    .line 1338
    :cond_4
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1339
    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 1341
    :cond_5
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v1, v4, :cond_6

    .line 1342
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1343
    const/16 v0, 0x65

    goto :goto_1

    .line 1344
    :cond_6
    if-ne v1, v2, :cond_c

    .line 1345
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1346
    const/16 v0, 0x64

    .line 1359
    :goto_1
    const/16 v1, 0x65

    if-ne v0, v1, :cond_8

    .line 1360
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1361
    const/4 v0, 0x6

    goto :goto_2

    .line 1363
    :cond_7
    const/4 v0, 0x4

    goto :goto_2

    .line 1365
    :cond_8
    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    .line 1366
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1367
    const/4 v0, 0x5

    goto :goto_2

    .line 1369
    :cond_9
    const/4 v0, 0x3

    .line 1373
    :cond_a
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNeedReloadModem(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1376
    return-void

    .line 1378
    :cond_b
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 1379
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 1380
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->setSimSwitchingFlag(Z)V

    .line 1381
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->saveToModemType(I)V

    .line 1383
    :goto_3
    return-void

    .line 1348
    :cond_c
    const-string v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1349
    return-void

    .line 1332
    :cond_d
    :goto_4
    const-string v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1333
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1334
    return-void
.end method

.method public blacklist setModemSelectionMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 1300
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.radio.wm_selectmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1303
    const-string v1, "Modem Selection <AUTO>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1304
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 1305
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 1306
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    goto :goto_0

    .line 1308
    :cond_0
    const-string v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 1311
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 1314
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1315
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 1318
    :cond_1
    :goto_0
    return-void
.end method
