.class public Lcom/mediatek/internal/telephony/RadioManager;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$ModemPowerCasue;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM;,
        Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;,
        Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    }
.end annotation


# static fields
.field protected static final blacklist ACTION_AIRPLANE_CHANGE_DONE:Ljava/lang/String; = "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

.field public static final blacklist ACTION_FORCE_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field public static final blacklist ACTION_MODEM_POWER_NO_CHANGE:Ljava/lang/String; = "com.mediatek.intent.action.MODEM_POWER_CHANGE"

.field private static final blacklist ACTION_WIFI_OFFLOAD_SERVICE_ON:Ljava/lang/String; = "mediatek.intent.action.WFC_POWER_ON_MODEM"

.field private static final blacklist ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field protected static final blacklist AIRPLANE_MODE_OFF:Z = false

.field protected static final blacklist AIRPLANE_MODE_ON:Z = true

.field public static final blacklist ERROR_AIRPLANE_MODE:I = 0x2

.field public static final blacklist ERROR_ICCID_NOT_READY:I = 0x5

.field public static final blacklist ERROR_MODEM_OFF:I = 0x4

.field public static final blacklist ERROR_NO_PHONE_INSTANCE:I = 0x1

.field public static final blacklist ERROR_PCO:I = 0x6

.field public static final blacklist ERROR_PCO_ALREADY_OFF:I = 0x7

.field public static final blacklist ERROR_SIM_SWITCH_EXECUTING:I = 0x8

.field public static final blacklist ERROR_TURN_OFF_RADIO_DURING_ECC:I = 0x9

.field public static final blacklist ERROR_WIFI_ONLY:I = 0x3

.field private static final blacklist EVENT_DSBP_STATE_CHANGED:[I

.field private static final blacklist EVENT_DSBP_STATE_CHANGED_SLOT_1:I = 0xa

.field private static final blacklist EVENT_DSBP_STATE_CHANGED_SLOT_2:I = 0xb

.field private static final blacklist EVENT_DSBP_STATE_CHANGED_SLOT_3:I = 0xc

.field private static final blacklist EVENT_DSBP_STATE_CHANGED_SLOT_4:I = 0xd

.field private static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0xe

.field private static final blacklist EVENT_RADIO_AVAILABLE:[I

.field private static final blacklist EVENT_RADIO_AVAILABLE_SLOT_1:I = 0x1

.field private static final blacklist EVENT_RADIO_AVAILABLE_SLOT_2:I = 0x2

.field private static final blacklist EVENT_RADIO_AVAILABLE_SLOT_3:I = 0x3

.field private static final blacklist EVENT_RADIO_AVAILABLE_SLOT_4:I = 0x4

.field private static final blacklist EVENT_REPORT_AIRPLANE_DONE:I = 0x8

.field private static final blacklist EVENT_REPORT_SIM_MODE_DONE:I = 0x9

.field private static final blacklist EVENT_SET_MODEM_POWER_OFF_DONE:I = 0x6

.field private static final blacklist EVENT_SET_SILENT_REBOOT_DONE:I = 0x7

.field private static final blacklist EVENT_VIRTUAL_SIM_ON:I = 0x5

.field protected static final blacklist EXTRA_AIRPLANE_MODE:Ljava/lang/String; = "airplaneMode"

.field public static final blacklist EXTRA_MODEM_POWER:Ljava/lang/String; = "modemPower"

.field private static final blacklist EXTRA_WIFI_OFFLOAD_SERVICE_ON:Ljava/lang/String; = "mediatek:POWER_ON_MODEM"

.field private static final blacklist ICC_READ_NOT_READY:Z = false

.field private static final blacklist ICC_READ_READY:Z = true

.field protected static final blacklist INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field protected static final blacklist INVALID_PHONE_ID:I = -0x1

.field private static final blacklist IS_NOT_SILENT_REBOOT:Ljava/lang/String; = "0"

.field protected static final blacklist IS_SILENT_REBOOT:Ljava/lang/String; = "1"

.field static final blacklist LOG_TAG:Ljava/lang/String; = "RadioManager"

.field private static final blacklist MAX_PHONE_COUNT:I = 0x4

.field protected static final blacklist MODEM_POWER_OFF:Z = false

.field protected static final blacklist MODEM_POWER_ON:Z = true

.field protected static final blacklist MODE_PHONE1_ONLY:I = 0x1

.field private static final blacklist MODE_PHONE2_ONLY:I = 0x2

.field private static final blacklist MODE_PHONE3_ONLY:I = 0x4

.field private static final blacklist MODE_PHONE4_ONLY:I = 0x8

.field protected static final blacklist NO_SIM_INSERTED:I = 0x0

.field private static final blacklist PREF_CATEGORY_RADIO_STATUS:Ljava/lang/String; = "RADIO_STATUS"

.field private static final blacklist PROPERTY_AIRPLANE_MODE:Ljava/lang/String; = "persist.vendor.radio.airplane.mode.on"

.field protected static blacklist PROPERTY_RADIO_OFF:[Ljava/lang/String; = null

.field protected static final blacklist PROPERTY_SILENT_REBOOT_MD1:Ljava/lang/String; = "vendor.gsm.ril.eboot"

.field private static final blacklist PROPERTY_SIM_MODE:Ljava/lang/String; = "persist.vendor.radio.sim.mode"

.field protected static final blacklist RADIO_POWER_OFF:Z = false

.field protected static final blacklist RADIO_POWER_ON:Z = true

.field public static final blacklist REASON_NONE:I = -0x1

.field public static final blacklist REASON_PCO_OFF:I = 0x1

.field public static final blacklist REASON_PCO_ON:I = 0x0

.field private static final blacklist REGISTRANTS_WITH_NO_NAME:Ljava/lang/String; = "NO_NAME"

.field protected static final blacklist SIM_INSERTED:I = 0x1

.field private static final blacklist SIM_NOT_INITIALIZED:I = -0x1

.field protected static final blacklist STRING_NO_SIM_INSERTED:Ljava/lang/String; = "N/A"

.field public static final blacklist SUCCESS:I = 0x0

.field protected static final blacklist TO_SET_MODEM_POWER:I = 0x2

.field protected static final blacklist TO_SET_RADIO_POWER:I = 0x1

.field private static final blacklist WIFI_ONLY_INIT:I = -0x1

.field private static final blacklist WIFI_ONLY_MODE_OFF:Z = false

.field private static final blacklist WIFI_ONLY_MODE_ON:Z = true

.field private static final blacklist isOP01:Z

.field private static final blacklist isOP09:Z

.field private static final blacklist mFlightModePowerOffModem:Z

.field protected static blacklist mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/mediatek/internal/telephony/IRadioPower;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static blacklist sIccidPreference:Landroid/content/SharedPreferences;

.field private static blacklist sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;


# instance fields
.field private blacklist mAirDnMsgSent:Z

.field protected blacklist mAirplaneMode:Z

.field protected blacklist mBitmapForPhoneCount:I

.field private blacklist mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

.field private blacklist mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

.field private blacklist mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

.field private blacklist mInitializeWaitCounter:[I

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsDsbpChanging:[Z

.field private blacklist mIsPendingRadioByDsbpChanging:Z

.field private blacklist mIsRadioUnavailable:Z

.field private blacklist mIsWifiOn:Z

.field private blacklist mIsWifiOnlyDevice:Z

.field private blacklist mModemPower:Z

.field private blacklist mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

.field private blacklist mNeedIgnoreMessageForChangeDone:Z

.field private blacklist mNeedIgnoreMessageForWait:Z

.field private blacklist mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

.field private blacklist mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

.field protected blacklist mPhoneCount:I

.field private blacklist mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

.field private blacklist mRadioPowerRunnable:[Ljava/lang/Runnable;

.field public blacklist mReason:[I

.field protected blacklist mSimInsertedStatus:[I

.field private blacklist mSimModeSetting:I

.field private blacklist mWifiOnlyMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    .line 202
    const-string v0, "vendor.ril.ipo.radiooff"

    const-string v1, "vendor.ril.ipo.radiooff.2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    .line 222
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_RADIO_AVAILABLE:[I

    .line 225
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_DSBP_STATE_CHANGED:[I

    .line 246
    nop

    .line 247
    const-string v0, "ro.vendor.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->mFlightModePowerOffModem:Z

    .line 249
    nop

    .line 250
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/RadioManager;->isOP01:Z

    .line 251
    nop

    .line 252
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP09"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->isOP09:Z

    .line 251
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 141
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 146
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 192
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 195
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    .line 197
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 264
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    .line 267
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsRadioUnavailable:Z

    .line 408
    new-instance v6, Lcom/mediatek/internal/telephony/RadioManager$1;

    invoke-direct {v6, v0}, Lcom/mediatek/internal/telephony/RadioManager$1;-><init>(Lcom/mediatek/internal/telephony/RadioManager;)V

    iput-object v6, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 289
    .local v6, "airplaneMode":I
    invoke-static/range {p1 .. p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v7

    .line 291
    .local v7, "wifionlyMode":I
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirDnMsgSent:Z

    .line 294
    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v8

    .line 295
    .local v8, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v8}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 296
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v9

    if-nez v9, :cond_1

    .line 297
    const-string v9, "initial actual wifi state when wifi calling is on"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 298
    const-string v9, "wifi"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 299
    .local v9, "wiFiManager":Landroid/net/wifi/WifiManager;
    if-eqz v9, :cond_1

    .line 300
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-ne v10, v5, :cond_0

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 305
    .end local v9    # "wiFiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initialize RadioManager under airplane mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " wifi only mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " wifi mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "phoneCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 309
    const/4 v9, 0x4

    new-array v10, v9, [I

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    .line 310
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/4 v11, -0x1

    if-ge v10, v9, :cond_2

    .line 311
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v11, v12, v10

    .line 310
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 313
    .end local v10    # "i":I
    :cond_2
    new-array v10, v9, [I

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    .line 314
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v9, :cond_3

    .line 315
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    aput v3, v12, v10

    .line 314
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 317
    .end local v10    # "i":I
    :cond_3
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    .line 318
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v9, :cond_4

    .line 319
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v13, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v13, v0, v5, v10}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v13, v12, v10

    .line 318
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 321
    .end local v10    # "i":I
    :cond_4
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    .line 322
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v9, :cond_5

    .line 323
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    new-instance v13, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v13, v0, v5, v10}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v13, v12, v10

    .line 322
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 325
    .end local v10    # "i":I
    :cond_5
    new-instance v10, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    const/4 v12, 0x3

    invoke-direct {v10, v0, v12}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

    .line 326
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    .line 327
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    .line 329
    iput-object v1, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    .line 330
    if-nez v6, :cond_6

    move v10, v3

    goto :goto_5

    :cond_6
    move v10, v5

    :goto_5
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 331
    if-nez v7, :cond_7

    move v10, v5

    goto :goto_6

    :cond_7
    move v10, v3

    :goto_6
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 333
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 334
    iput v2, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 335
    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v12

    iput v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 341
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v13, "RADIO_STATUS"

    invoke-virtual {v12, v13, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    sput-object v12, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    const-string v14, "msim_mode_setting"

    invoke-static {v12, v14, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 346
    new-instance v12, Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    iget-object v15, v0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v12, v13, v14, v15}, Lcom/mediatek/internal/telephony/ImsSwitchController;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 348
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v12

    .line 349
    .local v12, "mainPhoneId":I
    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v13, v13, v12

    check-cast v13, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 352
    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 349
    invoke-virtual {v13, v15, v14, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 354
    const-string v11, "Not BSP Package, register intent!!!"

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 355
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v13, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v13, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v13, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/RadioManager;->registerListener()V

    .line 365
    const/16 v13, 0xe

    invoke-static {v0, v13, v4}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    iget-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v13, "connectivity"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 370
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v13

    xor-int/2addr v13, v5

    iput-boolean v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOnlyDevice:Z

    .line 372
    new-instance v13, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const-string v14, "PowerSM"

    invoke-direct {v13, v0, v14}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;-><init>(Lcom/mediatek/internal/telephony/RadioManager;Ljava/lang/String;)V

    iput-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    .line 373
    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->start()V

    .line 375
    new-array v13, v9, [I

    iput-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    .line 376
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    if-ge v13, v9, :cond_b

    .line 377
    if-ge v13, v2, :cond_a

    .line 378
    invoke-static {v13}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v14

    .line 379
    .local v14, "subId":I
    iget-object v15, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v9, "dataKeySaState"

    invoke-static {v15, v13, v9, v3}, Lcom/mediatek/internal/telephony/selfactivation/SaPersistDataHelper;->getIntData(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v9

    .line 381
    .local v9, "selfActivationState":I
    const-string v15, "persist.vendor.pco5.radio.ctrl"

    const-string v3, "0"

    invoke-static {v15, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 382
    .local v15, "pcoEnable":Ljava/lang/String;
    const/4 v5, 0x2

    if-ne v5, v9, :cond_9

    .line 383
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 384
    iget-object v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    const/4 v5, 0x1

    aput v5, v3, v13

    const/16 v16, -0x1

    goto :goto_9

    .line 383
    :cond_8
    const/4 v5, 0x1

    goto :goto_8

    .line 382
    :cond_9
    const/4 v5, 0x1

    .line 386
    :goto_8
    iget-object v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    const/16 v16, -0x1

    aput v16, v3, v13

    .line 388
    .end local v9    # "selfActivationState":I
    .end local v14    # "subId":I
    .end local v15    # "pcoEnable":Ljava/lang/String;
    :goto_9
    goto :goto_a

    .line 389
    :cond_a
    const/16 v16, -0x1

    iget-object v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aput v16, v3, v13

    .line 376
    :goto_a
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x4

    goto :goto_7

    .line 393
    .end local v13    # "i":I
    :cond_b
    const/4 v3, 0x4

    new-array v5, v3, [Z

    iput-object v5, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    .line 394
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    if-ge v5, v3, :cond_c

    .line 395
    iget-object v9, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    const/4 v13, 0x0

    aput-boolean v13, v9, v5

    .line 394
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 397
    .end local v5    # "i":I
    :cond_c
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 109
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/RadioManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 109
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    return v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/RadioManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/mediatek/internal/telephony/RadioManager;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/RadioManager;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    return-object v0
.end method

.method static synthetic blacklist access$502(Lcom/mediatek/internal/telephony/RadioManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    return p1
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/RadioManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 109
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPowerAfterCapabilitySwitch()V

    return-void
.end method

.method private blacklist binaryToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "binaryStr"    # Ljava/lang/String;

    .line 2374
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    const-string v0, "%040x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final blacklist cleanModemPowerMessage()V
    .locals 4

    .line 1999
    const-string v0, "cleanModemPowerMessage"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    if-eqz v0, :cond_1

    .line 2001
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 2002
    aput-object v3, v1, v0

    .line 2001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2004
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 2006
    :cond_1
    return-void
.end method

.method private blacklist convertPhoneCountIntoBitmap(I)I
    .locals 3
    .param p1, "phoneCount"    # I

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 402
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert phoneCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 405
    return v0
.end method

.method private static final blacklist createMessage(ZIII)[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    .locals 6
    .param p0, "power"    # Z
    .param p1, "phoneBitMap"    # I
    .param p2, "mainCapabilityPhoneId"    # I
    .param p3, "phoneCount"    # I

    .line 2025
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 2026
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMessage, config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 2028
    new-array v1, p3, [Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 2029
    .local v1, "msgs":[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    const/4 v2, 0x0

    .line 2030
    .local v2, "phoneId":I
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 2038
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 2039
    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    invoke-direct {v3, v2}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;-><init>(I)V

    aput-object v3, v1, v2

    goto :goto_0

    .line 2034
    :cond_0
    move v2, p2

    .line 2035
    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    invoke-direct {v3, v2}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;-><init>(I)V

    aput-object v3, v1, v2

    .line 2036
    nop

    .line 2043
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p3, :cond_2

    .line 2044
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 2045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMessage, ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 2043
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2048
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private blacklist eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .line 1731
    const/4 v0, 0x0

    .line 1732
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1758
    :pswitch_1
    const-string v0, "EVENT_MULTI_SIM_CONFIG_CHANGED"

    .line 1759
    goto :goto_0

    .line 1755
    :pswitch_2
    const-string v0, "EVENT_DSBP_STATE_CHANGED"

    .line 1756
    goto :goto_0

    .line 1749
    :pswitch_3
    const-string v0, "EVENT_REPORT_SIM_MODE_DONE"

    .line 1750
    goto :goto_0

    .line 1746
    :pswitch_4
    const-string v0, "EVENT_REPORT_AIRPLANE_DONE"

    .line 1747
    goto :goto_0

    .line 1743
    :pswitch_5
    const-string v0, "EVENT_SET_SILENT_REBOOT_DONE"

    .line 1744
    goto :goto_0

    .line 1740
    :pswitch_6
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    .line 1741
    goto :goto_0

    .line 1737
    :pswitch_7
    const-string v0, "EVENT_RADIO_AVAILABLE"

    .line 1738
    nop

    .line 1763
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getCiIndex(Landroid/os/Message;)I
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1768
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1775
    .local v0, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_1

    .line 1776
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1777
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 1778
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_1

    .line 1779
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1780
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1781
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 1785
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/RadioManager;
    .locals 2

    .line 280
    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    monitor-exit v0

    return-object v1

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 255
    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 256
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 259
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    monitor-exit v0

    return-object v1

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist isFlightModePowerOffModemConfigEnabled()Z
    .locals 4

    .line 1545
    const-string v0, "vendor.ril.testmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    const-string v0, "vendor.ril.test.poweroffmd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1550
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->isOP01:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->isOP09:Z

    if-eqz v0, :cond_5

    .line 1552
    :cond_1
    const-string v0, "vendor.ril.atci.flightmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "fromAtci":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1554
    return v3

    .line 1558
    :cond_2
    const-string v2, "vendor.gsm.sim.ril.testsim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1559
    const-string v2, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1560
    const-string v2, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1561
    const-string v2, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v3

    .line 1562
    .local v1, "isTestSim":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 1563
    return v3

    .line 1568
    .end local v0    # "fromAtci":Ljava/lang/String;
    .end local v1    # "isTestSim":Z
    :cond_5
    sget-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->mFlightModePowerOffModem:Z

    return v0
.end method

.method public static blacklist isFlightModePowerOffModemEnabled()Z
    .locals 2

    .line 1573
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1574
    const-string v0, "Instance not exists, return config only"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1575
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    return v0

    .line 1578
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1579
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    xor-int/2addr v0, v1

    return v0

    .line 1581
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMSimModeSupport()Z
    .locals 1

    .line 1599
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isModemPowerOff(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 1589
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPowerOnFeatureAllClosed()Z
    .locals 2

    .line 1534
    const/4 v0, 0x1

    .line 1535
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    const/4 v0, 0x0

    goto :goto_0

    .line 1537
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1538
    const/4 v0, 0x0

    .line 1540
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist isRadioAvaliable()Z
    .locals 4

    .line 1926
    const/4 v0, 0x1

    .line 1927
    .local v0, "isRadioAvaliable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 1928
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioAvaliable=false, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1930
    const/4 v0, 0x0

    .line 1931
    goto :goto_1

    .line 1927
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1934
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isRadioAvaliable(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 1939
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1940
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1941
    return v1

    .line 1944
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RadioState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1945
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1944
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1946
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist isRadioOn()Z
    .locals 3

    .line 1950
    const/4 v0, 0x1

    .line 1951
    .local v0, "isRadioOn":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 1952
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1953
    const/4 v0, 0x0

    .line 1954
    goto :goto_1

    .line 1951
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1957
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isRadioOn(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 1962
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1963
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1964
    return v1

    .line 1967
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method private blacklist isRadioUnavailable()Z
    .locals 4

    .line 1971
    const/4 v0, 0x1

    .line 1972
    .local v0, "isRadioUnavailable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 1973
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioUnavailable=false, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1975
    const/4 v0, 0x0

    .line 1976
    goto :goto_1

    .line 1972
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1979
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isRequiredRadioOff(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;

    .line 2069
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    const/4 v0, 0x1

    return v0

    .line 2072
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final blacklist isSetModemPowerFinish()Z
    .locals 3

    .line 1983
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    if-eqz v0, :cond_2

    .line 1984
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1985
    aget-object v1, v1, v0

    const-string v2, "isSetModemPowerFinish ["

    if-eqz v1, :cond_0

    .line 1986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1987
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->isFinish:Z

    if-nez v1, :cond_1

    .line 1988
    const/4 v1, 0x0

    return v1

    .line 1991
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: MPMsg is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1984
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1995
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isUnderCryptKeeper()Z
    .locals 2

    .line 713
    const-string v0, "ro.crypto.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    const-string v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const-string v0, "[Special Case] Under CryptKeeper, Not to turn on/off modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_0
    const-string v0, "[Special Case] Not Under CryptKeeper"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RadioManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return-void
.end method

.method private blacklist notifyDsbpStateChanged(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1696
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1697
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1698
    .local v0, "state":I
    const/4 v1, 0x0

    .line 1699
    .local v1, "phoneId":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1710
    :pswitch_0
    const/4 v1, 0x3

    .line 1711
    goto :goto_0

    .line 1707
    :pswitch_1
    const/4 v1, 0x2

    .line 1708
    goto :goto_0

    .line 1704
    :pswitch_2
    const/4 v1, 0x1

    .line 1705
    goto :goto_0

    .line 1701
    :pswitch_3
    const/4 v1, 0x0

    .line 1702
    nop

    .line 1715
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDsbpStateChanged state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1716
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1717
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 1719
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1720
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1721
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    if-eqz v2, :cond_1

    .line 1722
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    .line 1723
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPowerAfterCapabilitySwitch()V

    .line 1728
    .end local v0    # "state":I
    .end local v1    # "phoneId":I
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist notifyMultiSimConfigChanged(I)V
    .locals 4
    .param p1, "activeModems"    # I

    .line 1682
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 1683
    .local v0, "phoneCount":I
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 1684
    .local v1, "oldPhoneCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiSimConfigChanged, activeModems:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldPhoneCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1687
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->unregisterListener()V

    .line 1688
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 1690
    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 1691
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 1692
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->registerListener()V

    .line 1693
    return-void
.end method

.method private static declared-synchronized blacklist notifyRadioPowerChange(ZI)V
    .locals 5
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 1835
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1836
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioPowerChange: user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1837
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/IRadioPower;

    .line 1838
    .local v3, "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    invoke-interface {v3, p0, p1}, Lcom/mediatek/internal/telephony/IRadioPower;->notifyRadioPowerChange(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1839
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    .end local v3    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    goto :goto_0

    .line 1840
    :cond_0
    monitor-exit v0

    return-void

    .line 1834
    .end local p0    # "power":Z
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "phoneId":I
    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 589
    .local v1, "mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force set radio power, mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 590
    if-ne v1, v2, :cond_0

    .line 591
    const-string v2, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 592
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_3

    .line 596
    const/4 v2, 0x1

    shl-int v3, v2, v0

    and-int/2addr v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v2

    .line 597
    .local v3, "singlePhonePower":Z
    :goto_1
    if-ne v2, v3, :cond_2

    .line 598
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 594
    .end local v3    # "singlePhonePower":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_3
    return-void
.end method

.method private blacklist putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1489
    if-eqz p2, :cond_1

    .line 1491
    const-string v0, "N/A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    const-string v0, "N/A"

    .local v0, "printableIccid":Ljava/lang/String;
    goto :goto_0

    .line 1494
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_0
    nop

    .line 1495
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .restart local v0    # "printableIccid":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add radio off SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1500
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static declared-synchronized blacklist registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 1822
    if-nez p0, :cond_0

    .line 1823
    :try_start_0
    const-string v1, "NO_NAME"

    move-object p0, v1

    .line 1825
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " registerForRadioPowerChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1826
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    monitor-exit v0

    return-void

    .line 1821
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist registerListener()V
    .locals 4

    .line 2052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 2053
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2054
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_RADIO_AVAILABLE:[I

    aget v2, v2, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2055
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_DSBP_STATE_CHANGED:[I

    aget v2, v2, v0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDsbpStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2058
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1503
    if-eqz p2, :cond_1

    .line 1505
    const-string v0, "N/A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    const-string v0, "N/A"

    .local v0, "printableIccid":Ljava/lang/String;
    goto :goto_0

    .line 1508
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_0
    nop

    .line 1509
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    .restart local v0    # "printableIccid":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove radio off SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1514
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static blacklist sendRequestBeforeSetRadioPower(ZI)V
    .locals 2
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send request before EFUN, power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1524
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioPowerChange(ZI)V

    .line 1525
    return-void
.end method

.method private blacklist setModemPower(ZI)V
    .locals 7
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneBitMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "RadioManager"

    const-string v1, "[RadioManager] skip the request because device is shutdown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void

    .line 790
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 794
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->monitorModemPowerChangeDone(ZII)[Landroid/os/Message;

    move-result-object v1

    .line 797
    .local v1, "responses":[Landroid/os/Message;
    const/4 v2, 0x0

    .line 798
    .local v2, "phoneId":I
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, ", phoneId:"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    .line 813
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under SS mode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 815
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_1

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power, Power:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 804
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setModemPower(ZLandroid/os/Message;)V

    .line 805
    if-nez p1, :cond_2

    .line 806
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v3, v4, :cond_2

    .line 807
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 806
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-ne p1, v5, :cond_4

    sget-boolean v3, Lcom/mediatek/internal/telephony/RadioManager;->isOP01:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/mediatek/internal/telephony/RadioManager;->isOP09:Z

    if-eqz v3, :cond_4

    .line 820
    :cond_3
    const-string v3, "vendor.ril.atci.flightmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 821
    const-string v4, "Power on Modem, Set vendor.ril.atci.flightmode to 0"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 822
    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_4
    return-void
.end method

.method private blacklist setRadioPowerAfterCapabilitySwitch()V
    .locals 3

    .line 439
    const-string v0, "Update radio power after capability switch or dsbp changing"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 442
    .local v0, "targetPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 445
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 447
    if-eq v0, v1, :cond_1

    .line 452
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 446
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist turnOffCTARadioIfNecessary()V
    .locals 4

    .line 1136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 1137
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1138
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    .line 1139
    goto :goto_1

    .line 1141
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    .line 1142
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    const-string v2, "modem off, not to handle CTA"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1144
    return-void

    .line 1146
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn off phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " radio because we are no longer in CTA mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1147
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 1136
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    .end local v0    # "i":I
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    return-void
.end method

.method public static declared-synchronized blacklist unregisterForRadioPowerChange(Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 1830
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unregisterForRadioPowerChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1831
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    monitor-exit v0

    return-void

    .line 1829
    .end local p0    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist unregisterListener()V
    .locals 3

    .line 2061
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2062
    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForVirtualSimOn(Landroid/os/Handler;)V

    .line 2063
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 2064
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDsbpStateChanged(Landroid/os/Handler;)V

    .line 2061
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2066
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist waitRadioAvaliable(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .line 1920
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOnlyDevice:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1921
    .local v0, "wait":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitRadioAvaliable, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1922
    return v0
.end method


# virtual methods
.method protected blacklist checkForCTACase()Z
    .locals 5

    .line 1102
    const/4 v0, 0x1

    .line 1104
    .local v0, "isCTACase":Z
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 1105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_2

    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check For CTA case: mSimInsertedStatus["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v4, v3, v1

    if-eq v4, v2, :cond_0

    aget v3, v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1109
    :cond_0
    const/4 v0, 0x0

    .line 1105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 1113
    :cond_3
    const/4 v0, 0x0

    .line 1117
    :goto_1
    const/4 v1, 0x0

    .line 1118
    .local v1, "isInEcc":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 1119
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1120
    const/4 v1, 0x1

    .line 1123
    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 1124
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->turnOffCTARadioIfNecessary()V

    .line 1126
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTA case: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1127
    return v0
.end method

.method protected blacklist findMainCapabilityPhoneId()I
    .locals 3

    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, "result":I
    nop

    .line 829
    const-string v1, "persist.vendor.radio.simswitch"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 830
    .local v1, "switchStatus":I
    add-int/lit8 v0, v1, -0x1

    .line 831
    if-ltz v0, :cond_1

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    return v0

    .line 832
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist forceAllowAirplaneModeChange(Z)V
    .locals 0
    .param p1, "forceSwitch"    # Z

    .line 1857
    return-void
.end method

.method public blacklist forceRefreshSimState(ZI)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force refresh sim state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1265
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1266
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1267
    return-void

    .line 1270
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_1

    .line 1271
    const-string v1, "force refresh sim state under airplane mode, ignore"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1272
    return-void

    .line 1275
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_2

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modem Power Off for phone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Power on modem first"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    shl-int v3, v2, p2

    const/16 v4, 0x10

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 1285
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1286
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_3

    if-ne p1, v2, :cond_3

    .line 1287
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1296
    :cond_3
    move v1, p1

    .line 1297
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1298
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 1299
    return-void

    .line 1288
    .end local v1    # "radioPower":Z
    :cond_4
    :goto_0
    const-string v1, "force refresh sim state, read iccid not ready, wait for200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    new-instance v2, Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v2, v1, p2

    .line 1292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1293
    return-void
.end method

.method public blacklist forceSetRadioPower(ZI)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force set radio power for phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1220
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1221
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1222
    return-void

    .line 1225
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_1

    .line 1226
    const-string v1, "Force Set Radio Power under airplane mode, ignore"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1227
    return-void

    .line 1230
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_2

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modem Power Off for phone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Power on modem first"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1233
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    shl-int v3, v2, p2

    const/16 v4, 0x10

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 1242
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1243
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_3

    if-ne p1, v2, :cond_3

    .line 1244
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1252
    :cond_3
    move v1, p1

    .line 1253
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1254
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 1255
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 1256
    return-void

    .line 1245
    .end local v1    # "radioPower":Z
    :cond_4
    :goto_0
    const-string v1, "force set radio power, read iccid not ready, wait for200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v2, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v2, v1, p2

    .line 1248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1249
    return-void
.end method

.method public blacklist getHashCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iccid"    # Ljava/lang/String;

    .line 2077
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2078
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 2079
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 2080
    .local v1, "hashCode":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    .local v2, "strIccid":Ljava/lang/String;
    return-object v2

    .line 2082
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v1    # "hashCode":[B
    .end local v2    # "strIccid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "isRequiredRadioOff SHA-256 must exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist getSimInsertedStatus(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1050
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1613
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getCiIndex(Landroid/os/Message;)I

    move-result v0

    .line 1615
    .local v0, "phoneIdForMsg":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1616
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1676
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1672
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1673
    .local v1, "activeModems":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyMultiSimConfigChanged(I)V

    .line 1674
    goto/16 :goto_3

    .line 1668
    .end local v1    # "activeModems":I
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1669
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyDsbpStateChanged(ILandroid/os/AsyncResult;)V

    .line 1670
    goto/16 :goto_3

    .line 1628
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle EVENT_SET_MODEM_POWER_OFF_DONE -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    if-eqz v3, :cond_0

    const-string v3, "ON"

    goto :goto_0

    :cond_0
    const-string v3, "OFF"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1629
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    if-nez v1, :cond_4

    .line 1630
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1631
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 1632
    .local v3, "powerMessage":Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModemPowerMessage, message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1633
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModemPowerMessage, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1637
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModemPowerMessage, Unhandle ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1640
    :goto_1
    iput-boolean v2, v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->isFinish:Z

    .line 1642
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isSetModemPowerFinish()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1643
    return-void

    .line 1645
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->cleanModemPowerMessage()V

    .line 1647
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->unMonitorModemPowerChangeDone()V

    .line 1648
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 1649
    const-string v2, "send EVENT_MODEM_POWER_OFF_DONE"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1650
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const/4 v4, 0x5

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$700(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)V

    goto :goto_2

    .line 1657
    :cond_3
    const-string v2, "retry turn off MD()"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1658
    const/4 v2, 0x0

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 1660
    .end local v3    # "powerMessage":Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    :goto_2
    goto :goto_3

    .line 1661
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string v1, "EVENT_SET_MODEM_POWER_OFF_DONE: wrong state"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1663
    goto :goto_3

    .line 1625
    :pswitch_4
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 1626
    goto :goto_3

    .line 1622
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->what:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioAvailable(I)V

    .line 1623
    nop

    .line 1679
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist isAllowAirplaneModeChange()Z
    .locals 1

    .line 1847
    const-string v0, "always allow airplane mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1848
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist isIccIdReady(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1072
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1074
    .local v1, "ret":Z
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1078
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1075
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1080
    :goto_1
    return v1
.end method

.method protected blacklist isModemOff(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 1789
    const/4 v0, 0x0

    .line 1791
    .local v0, "powerOff":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1792
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "vendor.ril.ipo.radiooff"

    const-string v5, "1"

    if-eq v2, v3, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1814
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1811
    :cond_0
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1812
    goto :goto_0

    .line 1797
    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    .line 1805
    const/4 v0, 0x1

    .line 1806
    goto :goto_0

    .line 1802
    :cond_2
    const-string v2, "vendor.ril.ipo.radiooff.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1803
    goto :goto_0

    .line 1799
    :cond_3
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1800
    goto :goto_0

    .line 1794
    :cond_4
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1795
    nop

    .line 1817
    :goto_0
    return v0
.end method

.method protected blacklist isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 604
    if-ltz p1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist monitorModemPowerChangeDone(ZII)[Landroid/os/Message;
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I
    .param p3, "mainCapabilityPhoneId"    # I

    .line 1861
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitorModemPowerChangeDone, Power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneBitMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainCapabilityPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNeedIgnoreMessageForChangeDone:Z

    .line 1867
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsRadioUnavailable:Z

    .line 1868
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    new-array v1, v0, [Landroid/os/Message;

    .line 1870
    .local v1, "msgs":[Landroid/os/Message;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    if-nez v2, :cond_1

    .line 1873
    invoke-static {p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->createMessage(ZIII)[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    move-result-object v0

    .line 1875
    .local v0, "messages":[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 1878
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1879
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1880
    const/4 v3, 0x6

    aget-object v4, v0, v2

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1878
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1885
    .end local v0    # "messages":[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public blacklist notifyAirplaneModeChange(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .line 635
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne p1, v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAirplaneMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is not expected (the same)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 638
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v0

    .line 641
    .local v0, "phoneId":I
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDesiredPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentModemPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 648
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 645
    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 651
    if-eqz p1, :cond_1

    .line 652
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 655
    :cond_1
    const/4 v1, -0x1

    .line 657
    .local v1, "radioAction":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v2

    if-nez v2, :cond_4

    .line 658
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_2

    .line 660
    const-string v2, "Airplane mode changed: turn on all radio due to mode conflict"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x1

    goto :goto_0

    .line 662
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    if-eqz v2, :cond_3

    .line 664
    const-string v2, "airplane mode changed: airplane mode on and wifi-calling on. Then,leave airplane mode: turn on/off all radio"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 666
    const/4 v1, 0x1

    goto :goto_0

    .line 668
    :cond_3
    const-string v2, "Airplane mode changed: turn on/off all modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 669
    const/4 v1, 0x2

    goto :goto_0

    .line 671
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 672
    const-string v2, "Airplane mode changed: turn on/off all radio"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 673
    const/4 v1, 0x1

    .line 676
    :cond_5
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 677
    xor-int/lit8 v2, p1, 0x1

    .line 679
    .local v2, "radioPower":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v3

    .line 680
    .local v3, "targetPhoneId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 681
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 683
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 684
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v4, v5, :cond_8

    .line 685
    if-eq v3, v4, :cond_7

    .line 686
    invoke-virtual {p0, v2, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 684
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 690
    .end local v4    # "i":I
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v4, "intent":Landroid/content/Intent;
    xor-int/lit8 v5, p1, 0x1

    const-string v6, "airplaneMode"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 692
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v2    # "radioPower":Z
    .end local v3    # "targetPhoneId":I
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 694
    :cond_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 695
    xor-int/lit8 v3, p1, 0x1

    .line 696
    .local v3, "modemPower":Z
    const-string v4, "1"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-static {v4, v3, v5, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    goto :goto_3

    .line 694
    .end local v3    # "modemPower":Z
    :cond_a
    :goto_2
    nop

    .line 700
    :goto_3
    return-void
.end method

.method public blacklist notifyMSimModeChange(I)V
    .locals 8
    .param p1, "mode"    # I

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSIM mode changed, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1403
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1404
    const-string v0, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1405
    return-void

    .line 1407
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_5

    .line 1412
    :cond_1
    const/4 v0, 0x0

    .line 1413
    .local v0, "phoneId":I
    const/4 v2, 0x1

    .line 1414
    .local v2, "iccIdReady":Z
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    .line 1415
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1416
    const/4 v2, 0x0

    .line 1417
    goto :goto_1

    .line 1414
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1421
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1422
    if-nez v2, :cond_4

    .line 1425
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

    .line 1427
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1428
    return-void

    .line 1431
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_9

    .line 1432
    shl-int v3, v1, v0

    and-int/2addr v3, p1

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 1433
    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v1

    .line 1434
    .local v3, "singlePhonePower":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "N/A"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "phoneId "

    if-eqz v5, :cond_6

    .line 1435
    const/4 v3, 0x0

    .line 1436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sim not insert, set  power  to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1442
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v4}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 1443
    .local v4, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    if-eqz v4, :cond_7

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/IOplusUiccManager;->isUiccSlotForbid(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    .line 1444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "notifySimModeChange: isUiccSlotForbid not refreshIccId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1447
    :cond_7
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1452
    const-string v5, "after refreshIccIdPreference, updateImsServiceConfig "

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1453
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    .line 1454
    .local v5, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v5, :cond_8

    .line 1455
    invoke-virtual {v5, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 1464
    .end local v5    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to MSIM mode change, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 1431
    .end local v3    # "singlePhonePower":Z
    .end local v4    # "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1469
    .end local v0    # "phoneId":I
    .end local v2    # "iccIdReady":Z
    :cond_9
    return-void

    .line 1408
    :cond_a
    :goto_5
    const-string v0, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method public blacklist notifyRadioAvailable(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notifies radio available airplane mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cryptkeeper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWifiOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 745
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$700(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)V

    .line 748
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 751
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->cleanModemPowerMessage()V

    .line 752
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    if-nez v0, :cond_1

    .line 755
    const-string v0, "Power off modem because boot up under airplane mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const/4 v2, 0x0

    shl-int v3, v1, p1

    const/16 v4, 0x40

    invoke-static {v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 765
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirDnMsgSent:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v0, v1, :cond_3

    .line 766
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "airplaneMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 769
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 770
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirDnMsgSent:Z

    .line 772
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public blacklist notifySimModeChange(ZI)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM mode changed, power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    aget-object v0, v0, p2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1332
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1333
    const-string v0, "sim mode read iccid not ready, wait for 200ms"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v1, v0, p2

    .line 1337
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    aget-object v0, v0, p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1338
    return-void

    .line 1341
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "phoneId "

    if-eqz v0, :cond_2

    .line 1342
    const/4 p1, 0x0

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sim not insert, set  power  to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1348
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 1349
    .local v0, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusUiccManager;->isUiccSlotForbid(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "notifySimModeChange: isUiccSlotForbid not refreshIccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1358
    const-string v2, "after refreshIccIdPreference, updateImsServiceConfigForSlot "

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1359
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 1360
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_4

    .line 1361
    invoke-virtual {v2, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 1370
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Radio Power due to SIM mode change, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 1374
    .end local v0    # "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    return-void

    .line 1328
    :cond_5
    :goto_1
    const-string v0, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method protected blacklist onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 513
    const-string v0, "android.telephony.extra.SIM_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 517
    .local v0, "simStatus":I
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 519
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTENT:Invalid phone id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", do nothing!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 521
    return-void

    .line 524
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sim status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 527
    const/4 v3, 0x1

    .line 529
    .local v3, "desiredRadioPower":Z
    const/16 v5, 0xb

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    const-string v7, "]: "

    const-string v8, "Phone["

    const/4 v9, 0x1

    if-ne v5, v0, :cond_3

    .line 530
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v9, v1, v2

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "iccid":Ljava/lang/String;
    const-string v5, "N/A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 537
    return-void

    .line 540
    :cond_1
    const/4 v3, 0x1

    .line 541
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_2

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 546
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 548
    :cond_3
    if-ne v9, v0, :cond_4

    .line 549
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v1, v5, v2

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 552
    const/4 v3, 0x0

    .line 553
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_4

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 559
    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 567
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 568
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTION_WIFI_ONLY_MODE_CHANGED, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 571
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v0, v1, :cond_0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiOnlyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " is not expected (the same)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 578
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_1

    .line 579
    xor-int/lit8 v1, v0, 0x1

    .line 580
    .local v1, "radioPower":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    .line 581
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "radioPower":Z
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected blacklist onReceiveWifiStateChangedIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 458
    const/4 v0, 0x1

    .line 459
    .local v0, "extraWifiState":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 460
    const-string v1, "mediatek:POWER_ON_MODEM"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 461
    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    move v0, v1

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiving ACTION_WIFI_OFFLOAD_SERVICE_ON, airplaneMode: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isFlightModePowerOffModemConfigEnabled:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsWifiOn: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x4

    const-string v5, "1"

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: WIFI_STATE_CHANGED extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_1
    const-string v3, "WIFI_STATE_CHANGED enabled"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 477
    const/4 v3, 0x1

    .line 478
    .local v3, "modemPower":Z
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 479
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v6, v4, :cond_4

    .line 480
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    const/4 v4, 0x1

    .line 484
    .local v4, "currModemPower":Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const/4 v4, 0x0

    .line 488
    :cond_2
    const-string v2, "WIFI_STATE_CHANGED enabled, set modem on"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-static {v2, v3, v5, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 492
    .end local v4    # "currModemPower":Z
    goto :goto_1

    .line 495
    .end local v3    # "modemPower":Z
    :cond_3
    const-string v3, "WIFI_STATE_CHANGED disabled"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 496
    const/4 v3, 0x0

    .line 497
    .restart local v3    # "modemPower":Z
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 498
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v2, v4, :cond_4

    .line 499
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    const-string v2, "WIFI_STATE_CHANGED disabled, set modem off"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-static {v2, v3, v4, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 510
    .end local v3    # "modemPower":Z
    :cond_4
    :goto_1
    return-void

    .line 463
    :cond_5
    const-string v1, "Wrong intent"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method protected blacklist readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .line 1084
    const-string v0, "N/A"

    .line 1087
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1088
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v1, :cond_0

    .line 1089
    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    .line 1092
    :cond_0
    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1093
    const-string v2, "N/A"

    .local v2, "printableIccid":Ljava/lang/String;
    goto :goto_0

    .line 1095
    .end local v2    # "printableIccid":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .restart local v2    # "printableIccid":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash(ICCID) for phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1098
    return-object v0
.end method

.method protected blacklist refreshIccIdPreference(ZLjava/lang/String;)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1472
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->simSwitchMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1474
    const-string v0, "SIM on/off feature is enabled, don\'t refresh iccid preference"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1475
    return-void

    .line 1478
    :cond_0
    const-string v0, "refresh iccid preference"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1479
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1480
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    const-string v1, "N/A"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1481
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 1483
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1485
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1486
    return-void
.end method

.method protected blacklist refreshSimSetting(ZI)V
    .locals 5
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .line 1158
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    const-string v0, "RadioManager"

    const-string v1, "[RadioManager] skip the refreshSimSetting because device is shutdown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1164
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 1166
    .local v0, "oldMode":I
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1167
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    shl-int/2addr v1, p2

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    goto :goto_0

    .line 1169
    :cond_1
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    shl-int/2addr v1, p2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 1172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh MSIM mode setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 1175
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1176
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1173
    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 1177
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    const-string v3, "msim_mode_setting"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1179
    return-void
.end method

.method protected blacklist resetSimInsertedStatus(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset Sim InsertedStatus for Phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1605
    return-void
.end method

.method public blacklist setRadioPower(ZI)I
    .locals 16
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 858
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioPower, power="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 860
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 861
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 862
    return v4

    .line 865
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v5, v4, :cond_2

    .line 866
    const-string v4, "Set Radio Power on under airplane mode, ignore"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 867
    return v6

    .line 873
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 874
    .local v5, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    const/4 v7, 0x4

    if-eqz v5, :cond_3

    .line 875
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setRadioPowerByPhone: isUiccSlotForbid :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v2}, Lcom/android/internal/telephony/IOplusUiccManager;->isUiccSlotForbid(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 876
    invoke-interface {v5, v2}, Lcom/android/internal/telephony/IOplusUiccManager;->isUiccSlotForbid(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 877
    const-string v4, "setRadioPowerByPhone: isUiccSlotForbid return"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 878
    return v7

    .line 884
    :cond_3
    iget-object v9, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 886
    .local v9, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v9, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 887
    const-string v4, "wifi-only device, so return"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 888
    const/4 v4, 0x3

    return v4

    .line 892
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 893
    const-string v4, "SIM switch executing, return and wait SIM switch done"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 894
    const/16 v4, 0x8

    return v4

    .line 897
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modem for phone "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " off, do not set radio again"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 899
    return v7

    .line 903
    :cond_6
    const-string v7, "persist.vendor.pco5.radio.ctrl"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 904
    .local v7, "pcoEnable":Ljava/lang/String;
    iget-object v11, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aget v11, v11, v2

    if-ne v4, v11, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 905
    const-string v4, "Not allow to turn on radio under PCO=5"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 906
    const/4 v4, 0x6

    return v4

    .line 910
    :cond_7
    iget-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aget v10, v10, v2

    if-ne v4, v10, :cond_8

    iget-object v10, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 911
    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v10

    if-nez v10, :cond_8

    .line 912
    const-string v4, "PCO5 and already off"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 913
    const/4 v4, 0x7

    return v4

    .line 917
    :cond_8
    const/4 v10, 0x0

    .line 918
    .local v10, "isInEcc":Z
    iget-object v11, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v12, "telecom"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/TelecomManager;

    .line 919
    .local v11, "tm":Landroid/telecom/TelecomManager;
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 920
    const/4 v10, 0x1

    .line 924
    :cond_9
    if-nez v1, :cond_b

    if-eqz v10, :cond_b

    .line 925
    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-eqz v4, :cond_a

    .line 927
    iget-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 928
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v4, "intent":Landroid/content/Intent;
    const-string v12, "airplaneMode"

    invoke-virtual {v4, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    iget-object v8, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 932
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v4, "Not allow to operate radio power during emergency call"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 933
    return v6

    .line 940
    :cond_b
    iget-object v6, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 941
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 942
    iget-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ForceSetRadioPowerRunnable exists queue, do not execute RadioPowerRunnablefor phone "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_c
    const-string v4, "RILD initialize not completed, wait for 200ms"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 947
    iget-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v6, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v6, v4, v2

    .line 948
    iget-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v4, v4, v2

    const-wide/16 v12, 0xc8

    invoke-virtual {v0, v4, v12, v13}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 950
    :goto_0
    const/4 v4, 0x5

    return v4

    .line 953
    :cond_d
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 955
    move/from16 v6, p1

    .line 956
    .local v6, "radioPower":Z
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v12

    .line 958
    .local v12, "iccId":Ljava/lang/String;
    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/RadioManager;->isRequiredRadioOff(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 959
    if-eqz v10, :cond_e

    .line 960
    const-string v4, "Adjust radio to off because once manually turned off during ECC, return"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 961
    const/16 v4, 0x9

    return v4

    .line 964
    :cond_e
    const-string v13, "N/A"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 965
    const-string v13, "N/A"

    .local v13, "printableIccid":Ljava/lang/String;
    goto :goto_1

    .line 967
    .end local v13    # "printableIccid":Ljava/lang/String;
    :cond_f
    nop

    .line 968
    invoke-static {v12}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 967
    invoke-virtual {v0, v13}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 970
    .restart local v13    # "printableIccid":Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adjust radio to off because once manually turned off, hash(iccid): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " , phone: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 972
    const/4 v6, 0x0

    .line 973
    .end local v13    # "printableIccid":Ljava/lang/String;
    :cond_10
    goto :goto_2

    :cond_11
    iget-boolean v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v13, :cond_10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aget v13, v13, v2

    if-eq v4, v13, :cond_10

    .line 975
    const/4 v6, 0x1

    .line 978
    :goto_2
    iget-boolean v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v13, v4, :cond_12

    if-nez v10, :cond_12

    .line 979
    const-string v13, "setradiopower but wifi only, turn off"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 980
    const/4 v6, 0x0

    .line 983
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/RadioManager;->checkForCTACase()Z

    move-result v13

    .line 985
    .local v13, "isCTACase":Z
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->getSimInsertedStatus(I)I

    move-result v14

    const-string v15, ", phoneId: "

    if-nez v14, :cond_1b

    .line 986
    if-ne v13, v4, :cond_18

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v14

    .line 988
    .local v14, "capabilityPhoneId":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SIM inserted, force to turn on 3G/4G phone "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " radio if no any sim radio is enabled!"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 994
    invoke-static {v14}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 995
    instance-of v4, v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v4, :cond_14

    move-object v4, v3

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 996
    const-string v4, "NO SIM GSM CASE, To check if there would be anyother CDMA Phone"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 997
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget v15, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v4, v15, :cond_14

    .line 998
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 999
    instance-of v15, v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v15, :cond_13

    move-object v15, v3

    check-cast v15, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1000
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v14

    .line 1001
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "It found that CDMA Phone in capabilityPhoneId = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1002
    goto :goto_4

    .line 997
    :cond_13
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 1008
    .end local v4    # "i":I
    :cond_14
    :goto_4
    invoke-static {v14}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v8, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v8, v15, v15, v15}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 1010
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget v8, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v4, v8, :cond_17

    .line 1011
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1012
    if-nez v3, :cond_15

    .line 1013
    goto :goto_6

    .line 1015
    :cond_15
    if-eq v4, v14, :cond_16

    const/4 v8, 0x1

    if-eq v10, v8, :cond_16

    .line 1016
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8, v8, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 1010
    :cond_16
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1020
    .end local v4    # "i":I
    .end local v14    # "capabilityPhoneId":I
    :cond_17
    const/4 v8, 0x0

    goto :goto_7

    :cond_18
    const/4 v4, 0x1

    if-ne v4, v10, :cond_1a

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v4, :cond_1a

    .line 1021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No SIM inserted, turn/keep Radio On for ECC! target power: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1023
    const/4 v4, 0x1

    if-ne v6, v4, :cond_19

    .line 1024
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v8, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    goto :goto_7

    .line 1023
    :cond_19
    const/4 v8, 0x0

    goto :goto_7

    .line 1027
    :cond_1a
    const-string v4, "No SIM inserted, turn Radio off!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1028
    const/4 v6, 0x0

    .line 1029
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v8, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    goto :goto_7

    .line 1032
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trigger set Radio Power, power: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1033
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v8, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 1035
    :goto_7
    invoke-virtual {v0, v6, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 1036
    return v8
.end method

.method public blacklist setRadioPower(ZII)I
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I
    .param p3, "reason"    # I

    .line 1045
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aput p3, v0, p2

    .line 1046
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    move-result v0

    return v0
.end method

.method public blacklist setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 7
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .line 725
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 726
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v1

    .line 727
    .local v1, "phoneId":I
    const/4 v2, 0x0

    .line 728
    .local v2, "on":I
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    const/4 v2, 0x1

    .line 732
    :cond_0
    const-string v3, "enable silent reboot"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 733
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0xa

    .line 734
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    .line 735
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 733
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 736
    return-void
.end method

.method protected blacklist setSimInsertedStatus(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1054
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "iccId":Ljava/lang/String;
    const-string v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v2, v1, p1

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v3, v1, p1

    .line 1062
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1065
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_1

    .line 1066
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v2, v3, v1

    .line 1065
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1069
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected blacklist simStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "simStatus"    # I

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "result":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    const-string v0, "SIM DETECTED"

    .line 619
    goto :goto_0

    .line 621
    :cond_1
    const-string v0, "NO SIM DETECTED"

    goto :goto_0

    .line 615
    :cond_2
    const-string v0, "SIM HAVE NOT INITIALIZED"

    .line 616
    nop

    .line 624
    :goto_0
    return-object v0
.end method

.method protected blacklist unMonitorModemPowerChangeDone()V
    .locals 5

    .line 1889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNeedIgnoreMessageForChangeDone:Z

    .line 1891
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    xor-int/2addr v0, v2

    const-string v2, "airplaneMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1893
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 1897
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1898
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_0

    .line 1899
    goto :goto_1

    .line 1901
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unMonitorModemPowerChangeDone, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1896
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1904
    .end local v0    # "i":I
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method protected blacklist waitForReady(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .line 1907
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->waitRadioAvaliable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    const-string v0, "waitForReady, wait radio avaliable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 1913
    const/4 v0, 0x1

    return v0

    .line 1915
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
