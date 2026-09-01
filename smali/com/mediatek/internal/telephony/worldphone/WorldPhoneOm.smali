.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final blacklist EMSR_STANDBY_TIMER:I = 0x8

.field private static final blacklist FDD_STANDBY_TIMER:[I

.field private static final blacklist MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final blacklist PROJECT_SIM_NUM:I

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

.field private static blacklist sMccDomestic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static blacklist sNwPlmnStrings:[Ljava/lang/String;

.field private static blacklist sPlmnSs:Ljava/lang/String;

.field private static blacklist sPlmnType1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPlmnType1Ext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPlmnType3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sRegion:I

.field private static blacklist sRilDataRadioTechnology:I

.field private static blacklist sRilDataRegState:I

.field private static blacklist sRilVoiceRadioTechnology:I

.field private static blacklist sRilVoiceRegState:I

.field private static blacklist sServiceState:Lmediatek/telephony/MtkServiceState;

.field private static blacklist sSimLocked:I

.field private static blacklist sSimLockedSlotId:I

.field private static blacklist sSuspendId:[I

.field private static blacklist sSuspendWaitImsi:[Z

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
    .locals 13

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    .line 77
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x3c

    const/4 v4, 0x0

    aput v3, v2, v4

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    .line 80
    new-array v1, v1, [I

    const/16 v2, 0x28

    aput v2, v1, v4

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    .line 83
    const-string v1, "46000"

    const-string v2, "46002"

    const-string v3, "46004"

    const-string v5, "46007"

    const-string v6, "46008"

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 86
    const-string v1, "45412"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

    .line 89
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

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 93
    const-string v1, "460"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 103
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 105
    new-array v2, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 106
    new-array v2, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 107
    new-array v2, v0, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 110
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    .line 122
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    .line 123
    new-array v2, v0, [I

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    .line 125
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    .line 126
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    .line 127
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    .line 128
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 129
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 131
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 147
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    .line 347
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 1217
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1234
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1264
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$4;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$4;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    .line 1575
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 154
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 155
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v4, v1

    .line 156
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v4, v2, v1

    .line 157
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x50

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_2

    .line 161
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0xa

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x3c

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit16 v4, v1, 0x424

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    .line 175
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "mediatek.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    goto :goto_2

    .line 189
    :cond_3
    const-string v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 191
    :goto_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110100

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    .line 193
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    .line 196
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    .line 197
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 198
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 199
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    .line 200
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 201
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 202
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    .line 203
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    .line 204
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    .line 205
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetAllProperties()V

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    .line 212
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    .line 214
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const-string v3, "persist.vendor.radio.wm_selectmode"

    if-nez v2, :cond_4

    .line 215
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 218
    nop

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 221
    :cond_4
    const-string v0, "Auto select enable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 223
    nop

    .line 224
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_3
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v0, v2

    .line 227
    const-string v4, "persist.vendor.radio.wm_fddtimer"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 229
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v0, v0, v2

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FDD_STANDBY_TIMER = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sDefaultBootuUpModem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return v0
.end method

.method static synthetic blacklist access$1000()[Z
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic blacklist access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return p0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleWorldPhoneTest(II)V

    return-void
.end method

.method static synthetic blacklist access$1300()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    return v0
.end method

.method static synthetic blacklist access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    return p0
.end method

.method static synthetic blacklist access$1400()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1402(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic blacklist access$1408()I
    .locals 2

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1500()[I
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic blacklist access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    return p0
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1800()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic blacklist access$1808()I
    .locals 2

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic blacklist access$1900()[I
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic blacklist access$200()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    return v0
.end method

.method static synthetic blacklist access$2002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    return p0
.end method

.method static synthetic blacklist access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 74
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    return p0
.end method

.method static synthetic blacklist access$2200()[Z
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic blacklist access$2300()[I
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic blacklist access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->unRegisterEccStateReceiver()V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimApplicationStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimCardStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist access$500()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic blacklist access$600()[Lcom/mediatek/internal/telephony/MtkRIL;
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method static synthetic blacklist access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$800()I
    .locals 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic blacklist access$900()[Z
    .locals 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    return-object v0
.end method

.method private blacklist containsCdma(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .line 1568
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_1

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1570
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .line 1143
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 1147
    :cond_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "currentMcc":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1149
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1150
    const-string v1, "[getRegion] REGION_DOMESTIC"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1151
    const/4 v1, 0x1

    return v1

    .line 1153
    .end local v2    # "mcc":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1154
    :cond_2
    const-string v1, "[getRegion] REGION_FOREIGN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1155
    const/4 v1, 0x2

    return v1

    .line 1144
    .end local v0    # "currentMcc":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v1, "[getRegion] Invalid PLMN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1145
    return v0
.end method

.method private blacklist getSimLockState()Z
    .locals 3

    .line 256
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    .line 257
    .local v0, "policy":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    .line 258
    return v1

    .line 260
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getUserType(Ljava/lang/String;)I
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .line 1159
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1160
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1161
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1162
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1163
    const-string v0, "[getUserType] Type1 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1164
    return v2

    .line 1166
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1167
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1168
    .restart local v1    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1169
    const-string v0, "[getUserType] Extended Type1 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1170
    return v2

    .line 1172
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1173
    :cond_3
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1174
    .restart local v1    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1175
    const-string v0, "[getUserType] Type3 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1176
    const/4 v0, 0x3

    return v0

    .line 1178
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 1179
    :cond_5
    const-string v0, "[getUserType] Type2 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1180
    const/4 v0, 0x2

    return v0

    .line 1182
    :cond_6
    const-string v1, "[getUserType] null IMSI"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1183
    return v0
.end method

.method private blacklist handleGmssRatChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "info":[I
    const/4 v1, 0x0

    .line 671
    .local v1, "mccString":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sMajorSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 674
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 675
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 676
    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleGmssRatChange] mccString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 678
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v4, 0x3

    if-ne p2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 679
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->initNWPlmnString()V

    .line 680
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    .line 682
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 683
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 684
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v3, v4, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 686
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_0

    .line 690
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncResult is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 692
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 786
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 787
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 789
    .local v0, "invalidSimInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 790
    .local v2, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 791
    .local v4, "cs_invalid":I
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 792
    .local v5, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 793
    .local v6, "cause":I
    const/4 v7, -0x1

    .line 794
    .local v7, "testMode":I
    const-string v8, "vendor.gsm.gcf.testmode"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 795
    .end local v7    # "testMode":I
    .local v1, "testMode":I
    if-eqz v1, :cond_0

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 797
    return-void

    .line 799
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

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 801
    sget-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    if-eqz v7, :cond_1

    if-ne v4, v3, :cond_1

    .line 802
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 803
    const-string v7, "CS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 804
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 805
    return-void

    .line 808
    :cond_1
    if-ne v5, v3, :cond_2

    .line 809
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 810
    const-string v7, "PS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 811
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 812
    return-void

    .line 815
    .end local v0    # "invalidSimInfo":[Ljava/lang/String;
    .end local v1    # "testMode":I
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v4    # "cs_invalid":I
    .end local v5    # "ps_invalid":I
    .end local v6    # "cause":I
    :cond_2
    goto :goto_0

    .line 816
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    goto :goto_1

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WORLDMODE"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist handleNoService()V
    .locals 13

    .line 993
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 995
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 996
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 997
    .local v0, "mdType":I
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    .line 998
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 999
    .local v1, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_c

    .line 1000
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const-string v3, "Standby in FDD modem"

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_7

    .line 1001
    const/4 v2, 0x6

    const-wide/16 v7, 0x3e8

    const-string v9, "s. Timer index = "

    const-string v10, "Wait "

    const-string v11, "s"

    const-string v12, "Timer already set:"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_d

    .line 1019
    :cond_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v2, v4

    if-ltz v2, :cond_3

    .line 1020
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-nez v2, :cond_2

    .line 1021
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1024
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    int-to-long v3, v3

    mul-long/2addr v3, v7

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 1027
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1031
    :cond_3
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1003
    :cond_4
    :goto_0
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_6

    .line 1004
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    if-nez v2, :cond_5

    .line 1005
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    int-to-long v3, v3

    mul-long/2addr v3, v7

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1011
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1015
    :cond_6
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1034
    :cond_7
    const/4 v6, 0x2

    if-eq v2, v6, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_1

    .line 1042
    :cond_8
    const-string v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1035
    :cond_9
    :goto_1
    if-eq v0, v4, :cond_b

    if-ne v0, v5, :cond_a

    goto :goto_2

    .line 1039
    :cond_a
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1037
    :cond_b
    :goto_2
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1045
    :cond_c
    const-string v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1047
    :cond_d
    :goto_3
    const-string v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method private blacklist handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 610
    const-string v0, "persist.vendor.radio.simswitch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "currMajorSim":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v2

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMajorSim]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WORLDMODE"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 625
    :cond_0
    sput p2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 626
    const-string v1, "[getMajorSim]: fail to get major SIM"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 628
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sMajorSim:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 630
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 631
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 632
    .local v1, "plmnString":[Ljava/lang/String;
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v3, :cond_1

    .line 633
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 635
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plmnString["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 639
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 642
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 643
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v5, 0x2

    if-ne v4, p2, :cond_3

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v4, v2, :cond_3

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    if-eq v2, v5, :cond_3

    .line 645
    aget-object v2, v1, v3

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 650
    :cond_3
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v2, v5, :cond_4

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 653
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 656
    .end local v1    # "plmnString":[Ljava/lang/String;
    :cond_4
    goto :goto_3

    .line 657
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 659
    :goto_3
    return-void
.end method

.method private blacklist handleRadioOn(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 572
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioOn Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 574
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 575
    const/4 v0, 0x0

    const-string v2, "try to resume camping again"

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 605
    const-string v0, "unknow slotid"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_0
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    if-eqz v3, :cond_4

    .line 599
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 600
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 601
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    goto :goto_0

    .line 591
    :cond_1
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    if-eqz v3, :cond_4

    .line 592
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 593
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 594
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    goto :goto_0

    .line 584
    :cond_2
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    if-eqz v3, :cond_4

    .line 585
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 586
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 587
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    goto :goto_0

    .line 577
    :cond_3
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    if-eqz v3, :cond_4

    .line 578
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 579
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 580
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    .line 607
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist handleRegistrationSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration Suspend Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->isModemTypeSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 753
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, p2

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne v0, p2, :cond_3

    .line 759
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(IZ)V

    goto :goto_1

    .line 762
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    aput-boolean v1, v0, p2

    .line 763
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    if-nez v0, :cond_2

    .line 764
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    .line 765
    const-string v0, "Wait EMSR:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 768
    :cond_2
    const-string v0, "Emsr Resume Timer already set:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 770
    :goto_0
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 773
    :cond_3
    const-string v0, "Not major slot or in maual selection mode, camp on OK"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 774
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_1

    .line 777
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 779
    :goto_1
    return-void
.end method

.method private blacklist handleServiceStateChange(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 695
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RadioState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, p2

    .line 697
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 698
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 699
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    .line 700
    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    .line 702
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    .line 703
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    .line 704
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    .line 705
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    .line 706
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    .line 707
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sMajorSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sPlmnSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilVoiceRadioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    .line 714
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilDataRadioTech: , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    .line 718
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    .line 720
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v0, :cond_4

    .line 721
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNoService()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleNoService()V

    goto :goto_0

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 727
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 728
    const-string v0, "reset sIsInvalidSim"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v2, v0, p2

    goto :goto_0

    .line 732
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    const-string v0, "reset sIsInvalidSim in manual mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 734
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 735
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v2, v0, p2

    goto :goto_0

    .line 740
    :cond_2
    const-string v0, "Null sServiceState"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 745
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist handleSimApplicationStateChanged(II)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 264
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    .line 265
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    if-ne p1, v0, :cond_2

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSimLockState()Z

    move-result v0

    .line 268
    .local v0, "lockPolicy":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle sim applicatin state changed,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 269
    if-ne v0, v3, :cond_1

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    .line 270
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 271
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    goto :goto_0

    .line 273
    :cond_1
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 274
    sput p1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    .line 277
    .end local v0    # "lockPolicy":Z
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 278
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v0, :cond_3

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    if-ne p1, v0, :cond_4

    :cond_3
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    if-ne v0, v3, :cond_4

    .line 280
    const-string v0, "retry to world mode change after not major sim pin unlock"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 281
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 282
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    .line 283
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    .line 286
    :cond_4
    const/16 v0, 0xa

    if-ne p2, v0, :cond_f

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset sIsInvalidSim by solt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v2, v0, p1

    .line 289
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 290
    if-eqz v0, :cond_e

    .line 291
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    aput-object v1, v0, p1

    .line 296
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v0, p1

    if-eqz v1, :cond_d

    .line 297
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-ne v0, v3, :cond_c

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v0, :cond_c

    .line 304
    const-string v0, "Major SIM"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 306
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aget-boolean v4, v1, p1

    if-eqz v4, :cond_9

    .line 307
    aput-boolean v2, v1, p1

    .line 308
    const/16 v1, 0x64

    const/4 v4, 0x2

    if-ne v0, v3, :cond_7

    .line 309
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v3, :cond_5

    .line 310
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_1

    .line 311
    :cond_5
    if-ne v0, v4, :cond_6

    .line 312
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_1

    .line 314
    :cond_6
    const-string v0, "Region unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_7
    if-eq v0, v4, :cond_8

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 317
    :cond_8
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 320
    :cond_9
    :goto_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_f

    .line 321
    aput-boolean v2, v0, p1

    .line 322
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI fot slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " now ready, resuming PLMN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sWaitInEmsrResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 326
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    if-nez v0, :cond_a

    .line 327
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(IZ)V

    goto :goto_2

    .line 329
    :cond_a
    invoke-direct {p0, p1, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(IZ)V

    goto :goto_2

    .line 332
    :cond_b
    const-string v0, "sNwPlmnStrings is Null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 336
    :cond_c
    const-string v0, "Not major SIM or in maual selection mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_f

    .line 339
    aput-boolean v2, v0, p1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI for slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resuming with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_2

    .line 299
    :cond_d
    const-string v0, "Null sIccRecordsInstance"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 300
    return-void

    .line 293
    :cond_e
    const-string v0, "Null sUiccController"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 294
    return-void

    .line 345
    :cond_f
    :goto_2
    return-void
.end method

.method private blacklist handleSimCardStateChanged(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 237
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 238
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 239
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 240
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v0, v1, p1

    .line 241
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 242
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v1, :cond_0

    .line 243
    const-string v1, "Major SIM removed, no world phone service"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 245
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 246
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 247
    const/16 v0, -0x63

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 248
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    goto :goto_0

    .line 250
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

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 253
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleSimSwitched()V
    .locals 5

    .line 952
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 953
    const-string v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 955
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    goto/16 :goto_1

    .line 956
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 957
    const-string v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 958
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto/16 :goto_1

    .line 959
    :cond_1
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_2

    .line 960
    const-string v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 962
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability in slot"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 963
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v3, v0, v2

    if-eqz v3, :cond_a

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 969
    :cond_3
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 970
    const/16 v2, 0x64

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 971
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 972
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 974
    :cond_4
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v4, :cond_5

    .line 975
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v1, v0, v2

    .line 976
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_1

    .line 977
    :cond_5
    if-ne v0, v3, :cond_6

    .line 978
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 979
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_1

    .line 981
    :cond_6
    const-string v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 983
    :cond_7
    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    goto :goto_0

    .line 987
    :cond_8
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 984
    :cond_9
    :goto_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 985
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 990
    :goto_1
    return-void

    .line 965
    :cond_a
    :goto_2
    const-string v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 966
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 967
    return-void
.end method

.method private blacklist handleSwitchModem(I)Z
    .locals 12
    .param p1, "toModem"    # I

    .line 827
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 829
    .local v0, "mMajorSim":I
    const/4 v1, 0x0

    .line 830
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    if-nez v2, :cond_1

    .line 831
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isEccInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSwitchModem]In ECC:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 833
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    if-nez v2, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->registerEccStateReceiver()V

    .line 836
    :cond_0
    return v3

    .line 839
    :cond_1
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    .line 840
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    .line 843
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 844
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 845
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNeedSwitchModem(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 846
    const-string v2, "[handleSwitchModem]No need to handle, switch not executed!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 847
    return v3

    .line 851
    :cond_3
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    if-ne v2, v4, :cond_4

    .line 852
    const-string v2, "sim has been locked!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 853
    return v3

    .line 855
    :cond_4
    if-ltz v0, :cond_5

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    .line 856
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 857
    const-string v2, "[handleSwitchModem] Invalid SIM, switch not executed!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 858
    return v3

    .line 860
    :cond_5
    const/16 v2, 0x64

    const/16 v5, 0x65

    if-ne p1, v5, :cond_7

    .line 861
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 862
    const/4 p1, 0x6

    goto :goto_0

    .line 864
    :cond_6
    const/4 p1, 0x4

    goto :goto_0

    .line 866
    :cond_7
    if-ne p1, v2, :cond_9

    .line 867
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 868
    const/4 p1, 0x5

    goto :goto_0

    .line 870
    :cond_8
    const/4 p1, 0x3

    .line 874
    :cond_9
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-ne p1, v6, :cond_e

    .line 875
    if-ne p1, v10, :cond_a

    .line 876
    const-string v2, "Already in WG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 877
    :cond_a
    if-ne p1, v9, :cond_b

    .line 878
    const-string v2, "Already in TG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 879
    :cond_b
    if-ne p1, v8, :cond_c

    .line 880
    const-string v2, "Already in FDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 881
    :cond_c
    if-ne p1, v7, :cond_d

    .line 882
    const-string v2, "Already in TDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 884
    :cond_d
    :goto_1
    return v3

    .line 887
    :cond_e
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v6

    const/4 v11, 0x0

    if-nez v6, :cond_f

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleSwitchModem] Auto select disable, storing modem type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 889
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 891
    :cond_f
    sget v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    if-nez v6, :cond_10

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleSwitchModem] Storing modem type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 893
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 894
    :cond_10
    if-ne v6, v2, :cond_12

    .line 895
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 896
    const-string v2, "[handleSwitchModem] Storing modem type: 5"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 898
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 901
    :cond_11
    const-string v2, "[handleSwitchModem] Storing modem type: 3"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 903
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v10, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 906
    :cond_12
    if-ne v6, v5, :cond_14

    .line 907
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 908
    const-string v2, "[handleSwitchModem] Storing modem type: 6"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 910
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v7, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 913
    :cond_13
    const-string v2, "[handleSwitchModem] Storing modem type: 4"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 915
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v9, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 921
    :cond_14
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v2, v5, :cond_16

    .line 922
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_15

    .line 923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not idle, modem switch not allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 924
    return v3

    .line 921
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 928
    .end local v2    # "i":I
    :cond_16
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 930
    if-ne p1, v10, :cond_17

    .line 931
    const-string v2, "Switching to WG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 932
    :cond_17
    if-ne p1, v9, :cond_18

    .line 933
    const-string v2, "Switching to TG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 934
    :cond_18
    if-ne p1, v8, :cond_19

    .line 935
    const-string v2, "Switching to FDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 936
    :cond_19
    if-ne p1, v7, :cond_1a

    .line 937
    const-string v2, "Switching to TDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 939
    :cond_1a
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 940
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v2

    if-ne p1, v2, :cond_1b

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim switching, already will to set modem:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 942
    return v3

    .line 946
    :cond_1b
    invoke-static {v3, p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(II)V

    .line 947
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 948
    return v4
.end method

.method private blacklist handleWorldPhoneTest(II)V
    .locals 9
    .param p1, "fakeUserType"    # I
    .param p2, "fakeRegion"    # I

    .line 1639
    const/4 v0, 0x0

    .line 1641
    .local v0, "hasChanged":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1642
    const-string v1, "Leave ADB Test mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1644
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1645
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1646
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1647
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1648
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    goto/16 :goto_4

    .line 1650
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1651
    const/16 v2, -0x63

    if-eq v1, v2, :cond_8

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 1652
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 1653
    .local v1, "imsi":Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1654
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1655
    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    .line 1665
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown fakeUserType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1661
    :cond_1
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    const/4 v0, 0x1

    .line 1663
    goto :goto_0

    .line 1657
    :cond_2
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    const/4 v0, 0x1

    .line 1659
    goto :goto_0

    .line 1668
    :cond_3
    const-string v7, "Imsi of sMajorSim is unknown"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1671
    :goto_0
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 1672
    .local v7, "currentMcc":Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_4

    goto :goto_1

    .line 1675
    :cond_4
    invoke-virtual {v7, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1676
    .end local v7    # "currentMcc":Ljava/lang/String;
    .local v2, "currentMcc":Ljava/lang/String;
    if-ne p2, v3, :cond_5

    .line 1677
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    const/4 v0, 0x1

    goto :goto_2

    .line 1679
    :cond_5
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 1680
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1681
    const/4 v0, 0x1

    goto :goto_2

    .line 1683
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown fakeRegion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 1673
    .end local v2    # "currentMcc":Ljava/lang/String;
    .restart local v7    # "currentMcc":Ljava/lang/String;
    :cond_7
    :goto_1
    const-string v2, "Invalid sNwPlmnStrings"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1686
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v7    # "currentMcc":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1687
    :cond_8
    const-string v1, "sMajorSim is Unknown or Capability OFF"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1690
    :goto_3
    if-eqz v0, :cond_9

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPlmnType1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPlmnType1Ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPlmnType3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMccDomestic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    .line 1698
    :cond_9
    :goto_4
    return-void
.end method

.method private static declared-synchronized blacklist initNWPlmnString()V
    .locals 2

    const-class v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    monitor-enter v0

    .line 662
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 663
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :cond_0
    monitor-exit v0

    return-void

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist is3GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .line 1559
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 1561
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    return v0

    .line 1564
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist is4GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .line 1551
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 1552
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    const/4 v0, 0x1

    return v0

    .line 1555
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isAllowCampOn(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isAllowCampOn] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "mdType":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1055
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1056
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimSwitching mdType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 1061
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x5

    const-string v4, "Camp on OK"

    const/4 v5, 0x4

    const/4 v6, 0x6

    const-string v7, "Camp on REJECT"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-ne v1, v2, :cond_9

    .line 1062
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v2, :cond_4

    .line 1063
    if-eq v0, v6, :cond_3

    if-ne v0, v5, :cond_1

    goto :goto_1

    .line 1068
    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v0, v9, :cond_d

    .line 1070
    :cond_2
    sput v9, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1071
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1072
    return v10

    .line 1065
    :cond_3
    :goto_1
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1066
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1067
    return v2

    .line 1074
    :cond_4
    if-ne v1, v8, :cond_8

    .line 1075
    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 1080
    :cond_5
    if-eq v0, v3, :cond_6

    if-ne v0, v9, :cond_d

    .line 1082
    :cond_6
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1083
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1084
    return v2

    .line 1077
    :cond_7
    :goto_2
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1078
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1079
    return v10

    .line 1087
    :cond_8
    const-string v1, "Unknow region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 1089
    :cond_9
    if-eq v1, v8, :cond_b

    if-ne v1, v9, :cond_a

    goto :goto_3

    .line 1102
    :cond_a
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 1090
    :cond_b
    :goto_3
    if-eq v0, v6, :cond_f

    if-ne v0, v5, :cond_c

    goto :goto_6

    .line 1095
    :cond_c
    if-eq v0, v3, :cond_e

    if-ne v0, v9, :cond_d

    goto :goto_5

    .line 1104
    :cond_d
    :goto_4
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1105
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1106
    return v10

    .line 1097
    :cond_e
    :goto_5
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1098
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1099
    return v2

    .line 1092
    :cond_f
    :goto_6
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1093
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1094
    return v10
.end method

.method private blacklist isEccInProgress()Z
    .locals 6

    .line 1607
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1608
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1609
    .local v1, "inEcm":Z
    const/4 v2, 0x0

    .line 1610
    .local v2, "isInEcc":Z
    nop

    .line 1611
    const-string v3, "telecom"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1610
    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1612
    .local v3, "tm":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_0

    .line 1614
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 1617
    goto :goto_0

    .line 1615
    :catch_0
    move-exception v4

    .line 1616
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception of isEccInProgress"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1619
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

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1620
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

    .line 1110
    const/4 v0, 0x0

    .line 1112
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-nez v1, :cond_1

    .line 1114
    :cond_0
    const/4 v0, 0x1

    .line 1116
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1117
    return v0
.end method

.method private blacklist isNeedSwitchModem(I)Z
    .locals 4
    .param p1, "majorSimId"    # I

    .line 1522
    const/4 v0, 0x1

    .line 1523
    .local v0, "isNeed":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1525
    .local v1, "activeSvlteModeSlotId":I
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-ltz p1, :cond_0

    if-ne p1, v1, :cond_0

    .line 1527
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1528
    const/4 v0, 0x0

    .line 1532
    .end local v1    # "activeSvlteModeSlotId":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedSwitchModem] isNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1533
    return v0
.end method

.method private blacklist isNoService()Z
    .locals 4

    .line 1121
    const/4 v0, 0x0

    .line 1123
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    :cond_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    if-nez v1, :cond_1

    .line 1131
    const/4 v0, 0x1

    goto :goto_0

    .line 1133
    :cond_1
    const/4 v0, 0x0

    .line 1135
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1136
    return v0
.end method

.method private blacklist isSpecialCardMode()Z
    .locals 6

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "specialCardMode":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getC2KWPCardType()[I

    move-result-object v1

    .line 1540
    .local v1, "cardType":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    aget v3, v1, v4

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    aget v3, v1, v2

    .line 1541
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, v1, v4

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1542
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSpecialCardMode cardType1="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardType2="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1544
    const/4 v0, 0x1

    .line 1546
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpecialCardMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1547
    return v0
.end method

.method private static blacklist loadDefaultData()V
    .locals 6

    .line 1624
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1625
    .local v4, "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    .end local v4    # "plmn":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1627
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1628
    .restart local v4    # "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    .end local v4    # "plmn":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1630
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1631
    .restart local v4    # "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    .end local v4    # "plmn":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1633
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1634
    .local v3, "mcc":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    .end local v3    # "mcc":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1636
    :cond_3
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPOM]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    return-void
.end method

.method private blacklist registerEccStateReceiver()V
    .locals 3

    .line 1587
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1588
    const-string v0, "registerEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1589
    return-void

    .line 1591
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1593
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1594
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    .line 1595
    return-void
.end method

.method private blacklist removeEmsrResumeByTimer()V
    .locals 1

    .line 1279
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    if-eqz v0, :cond_0

    .line 1280
    const-string v0, "Remove EMSR wait timer. Set sWaitInEmsrResume = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1281
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    .line 1282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1284
    :cond_0
    return-void
.end method

.method private blacklist removeModemStandByTimer()V
    .locals 2

    .line 1252
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1253
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1254
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 1255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1257
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 1258
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1259
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1260
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1262
    :cond_1
    return-void
.end method

.method private blacklist resetAllProperties()V
    .locals 3

    .line 1287
    const-string v0, "[resetAllProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1288
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 1289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1290
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1292
    .end local v0    # "i":I
    :cond_0
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1293
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    .line 1294
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    .line 1295
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    .line 1296
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    .line 1297
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    .line 1298
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetSimProperties()V

    .line 1299
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1300
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 1301
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    .line 1302
    return-void
.end method

.method private blacklist resetNetworkProperties()V
    .locals 4

    .line 1305
    const-string v0, "[resetNetworkProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1306
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 1308
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1311
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1312
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1315
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeEmsrResumeByTimer()V

    .line 1316
    monitor-exit v0

    .line 1317
    return-void

    .line 1316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist resetSimProperties()V
    .locals 4

    .line 1320
    const-string v0, "[resetSimProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1321
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 1323
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1325
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1326
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1327
    monitor-exit v0

    .line 1328
    return-void

    .line 1327
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

    .line 1188
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

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "switchModem":Z
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    .line 1193
    aget-object v1, v1, v2

    .line 1194
    .local v1, "plmnString":Ljava/lang/String;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1198
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1199
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    move-result v0

    goto :goto_1

    .line 1200
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1201
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    move-result v0

    goto :goto_1

    .line 1195
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1204
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 1205
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1206
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeEmsrResumeByTimer()V

    .line 1207
    if-eqz p2, :cond_5

    .line 1208
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    add-int/lit8 v4, p1, 0x46

    .line 1209
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1208
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_2

    .line 1213
    .end local v1    # "plmnString":Ljava/lang/String;
    :cond_4
    const-string v1, "sNwPlmnStrings[0] is null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1215
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist searchForDesignateService(Ljava/lang/String;)V
    .locals 3
    .param p1, "strPlmn"    # Ljava/lang/String;

    .line 1331
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 1335
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1336
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1337
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1338
    const-string v0, "Find TD service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUserType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sRegion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1340
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1341
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    .line 1342
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_1

    .line 1346
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1348
    :cond_2
    :goto_1
    return-void

    .line 1332
    :cond_3
    :goto_2
    const-string v0, "[searchForDesignateService]- null source"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method private blacklist unRegisterEccStateReceiver()V
    .locals 2

    .line 1598
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1599
    const-string v0, "unRegisterEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1600
    return-void

    .line 1602
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    .line 1604
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 445
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

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    :pswitch_0
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 549
    goto/16 :goto_0

    .line 543
    :pswitch_1
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 545
    goto/16 :goto_0

    .line 539
    :pswitch_2
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 541
    goto/16 :goto_0

    .line 535
    :pswitch_3
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 537
    goto/16 :goto_0

    .line 563
    :pswitch_4
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 565
    goto/16 :goto_0

    .line 559
    :pswitch_5
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 561
    goto/16 :goto_0

    .line 555
    :pswitch_6
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 557
    goto/16 :goto_0

    .line 551
    :pswitch_7
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 553
    goto/16 :goto_0

    .line 529
    :pswitch_8
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 530
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_4> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 531
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    goto/16 :goto_0

    .line 523
    :pswitch_9
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 524
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_3> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 525
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    goto/16 :goto_0

    .line 517
    :pswitch_a
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 518
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_2> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 519
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    goto/16 :goto_0

    .line 511
    :pswitch_b
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 512
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_1> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 513
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    goto/16 :goto_0

    .line 507
    :pswitch_c
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, v5, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 509
    goto/16 :goto_0

    .line 503
    :pswitch_d
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 505
    goto/16 :goto_0

    .line 499
    :pswitch_e
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 501
    goto/16 :goto_0

    .line 495
    :pswitch_f
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 497
    goto/16 :goto_0

    .line 491
    :pswitch_10
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 493
    goto :goto_0

    .line 479
    :pswitch_11
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 481
    goto :goto_0

    .line 467
    :pswitch_12
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 469
    goto :goto_0

    .line 455
    :pswitch_13
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 457
    goto :goto_0

    .line 487
    :pswitch_14
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 489
    goto :goto_0

    .line 475
    :pswitch_15
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 477
    goto :goto_0

    .line 463
    :pswitch_16
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 465
    goto :goto_0

    .line 451
    :pswitch_17
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 453
    goto :goto_0

    .line 483
    :cond_0
    const-string v1, "handleMessage : <EVENT_RADIO_ON_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 485
    goto :goto_0

    .line 471
    :cond_1
    const-string v1, "handleMessage : <EVENT_RADIO_ON_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 473
    goto :goto_0

    .line 459
    :cond_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 461
    goto :goto_0

    .line 447
    :cond_3
    const-string v1, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 449
    nop

    .line 569
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

.method public blacklist handleRadioTechModeSwitch()V
    .locals 5

    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, "toModem":I
    const-string v1, "[handleRadioTechModeSwitch]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1467
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1468
    const-string v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1469
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto/16 :goto_3

    .line 1471
    :cond_0
    const-string v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1472
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 1478
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1479
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 1480
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1481
    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1483
    :cond_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v3, :cond_3

    .line 1484
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v4, v1, v2

    .line 1485
    const/16 v0, 0x65

    goto :goto_1

    .line 1486
    :cond_3
    if-ne v1, v2, :cond_4

    .line 1487
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v4, v1, v2

    .line 1488
    const/16 v0, 0x64

    goto :goto_1

    .line 1490
    :cond_4
    const-string v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1491
    return-void

    .line 1493
    :cond_5
    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 1497
    :cond_6
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1498
    return-void

    .line 1494
    :cond_7
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v4, v1, v2

    .line 1495
    const/16 v0, 0x64

    .line 1501
    :goto_1
    const/16 v1, 0x65

    if-ne v0, v1, :cond_9

    .line 1502
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1503
    const/4 v0, 0x6

    goto :goto_2

    .line 1505
    :cond_8
    const/4 v0, 0x4

    goto :goto_2

    .line 1507
    :cond_9
    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 1508
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1509
    const/4 v0, 0x5

    goto :goto_2

    .line 1511
    :cond_a
    const/4 v0, 0x3

    .line 1515
    :cond_b
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleRadioTechModeSwitch]: switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1516
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 1517
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1519
    :goto_3
    return-void

    .line 1474
    :cond_c
    :goto_4
    const-string v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1475
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1476
    return-void
.end method

.method public blacklist notifyRadioCapabilityChange(I)V
    .locals 7
    .param p1, "capailitySimId"    # I

    .line 1370
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1371
    .local v0, "majorSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1372
    .local v1, "activeSvlteModeSlotId":I
    const/4 v2, 0x0

    .line 1374
    .local v2, "toModem":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRadioCapabilityChange] majorSimId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capailitySimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeEmsrResumeByTimer()V

    .line 1377
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 1378
    const-string v3, "[setRadioCapabilityChange] Auto modem selection disabled"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto/16 :goto_4

    .line 1381
    :cond_0
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v3, p1

    const/4 v5, 0x0

    if-eqz v4, :cond_12

    aget-object v3, v3, p1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 1387
    :cond_1
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1388
    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    .line 1389
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1390
    aget-object v3, v3, v5

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1392
    :cond_2
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v3, v6, :cond_3

    .line 1393
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v5, v3, p1

    .line 1394
    const/16 v2, 0x65

    goto :goto_1

    .line 1395
    :cond_3
    if-ne v3, v4, :cond_4

    .line 1396
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v5, v3, p1

    .line 1397
    const/16 v2, 0x64

    goto :goto_1

    .line 1399
    :cond_4
    const-string v3, "Unknown region"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1400
    return-void

    .line 1402
    :cond_5
    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    goto :goto_0

    .line 1406
    :cond_6
    const-string v3, "Unknown user type"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1407
    return-void

    .line 1403
    :cond_7
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v5, v3, p1

    .line 1404
    const/16 v2, 0x64

    .line 1410
    :goto_1
    const/16 v3, 0x65

    if-ne v2, v3, :cond_9

    .line 1411
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1412
    const/4 v2, 0x6

    goto :goto_2

    .line 1414
    :cond_8
    const/4 v2, 0x4

    goto :goto_2

    .line 1416
    :cond_9
    const/16 v3, 0x64

    if-ne v2, v3, :cond_b

    .line 1417
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1418
    const/4 v2, 0x5

    goto :goto_2

    .line 1420
    :cond_a
    const/4 v2, 0x3

    .line 1424
    :cond_b
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1425
    const/4 v3, 0x0

    .line 1426
    .local v3, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    const/16 v4, -0x63

    if-eq v0, v4, :cond_10

    .line 1427
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1428
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isSpecialCardMode()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1429
    if-eq p1, v1, :cond_c

    .line 1431
    const-string v4, "new RT mode is CSFB"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1432
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v3, v4, v0

    goto :goto_3

    .line 1436
    :cond_c
    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    .line 1437
    const-string v4, "new RT mode is SVLTE and new type is LWG"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1438
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v3, v4, v0

    goto :goto_3

    .line 1443
    :cond_d
    const-string v4, "isSpecialCardMode=true, ignore this change!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1446
    :cond_e
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v3, v4, v5

    .line 1449
    :cond_f
    :goto_3
    if-eqz v3, :cond_11

    .line 1450
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 1451
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1452
    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->setSimSwitchingFlag(Z)V

    .line 1453
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->saveToModemType(I)V

    .line 1454
    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_4

    .line 1459
    :cond_10
    const-string v4, "notifyRadioCapabilityChange: major sim is unknown"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1462
    .end local v3    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_11
    :goto_4
    return-void

    .line 1383
    :cond_12
    :goto_5
    const-string v3, "Capaility slot IMSI not ready"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1384
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1385
    return-void
.end method

.method public blacklist setModemSelectionMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 1352
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.radio.wm_selectmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1354
    const-string v0, "Modem Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1356
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1357
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    goto :goto_0

    .line 1359
    :cond_0
    const-string v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 1363
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1364
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1367
    :cond_1
    :goto_0
    return-void
.end method
