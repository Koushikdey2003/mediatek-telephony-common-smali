.class public Lcom/mediatek/internal/telephony/cat/MtkCatService;
.super Lcom/android/internal/telephony/cat/CatService;
.source "MtkCatService.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cat/MtkAppInterface;


# static fields
.field static final blacklist BIP_STATE_CHANGED:Ljava/lang/String; = "mediatek.intent.action.BIP_STATE_CHANGED"

.field private static final blacklist DBG:Z = true

.field private static final blacklist DISABLE_DISPLAY_TEXT_DELAYED_TIME:I = 0x7530

.field private static final blacklist IVSR_DELAYED_TIME:I = 0xea60

.field public static final blacklist MSG_ID_CACHED_DISPLAY_TEXT_TIMEOUT:I = 0x2e

.field private static final blacklist MSG_ID_CALL_CTRL:I = 0x19

.field public static final blacklist MSG_ID_CONN_RETRY_TIMEOUT:I = 0x2f

.field static final blacklist MSG_ID_DB_HANDLER:I = 0xc

.field private static final blacklist MSG_ID_DISABLE_DISPLAY_TEXT_DELAYED:I = 0xf

.field static final blacklist MSG_ID_EVENT_DOWNLOAD:I = 0xb

.field private static final blacklist MSG_ID_IVSR_DELAYED:I = 0xe

.field static final blacklist MSG_ID_LAUNCH_DB_SETUP_MENU:I = 0xd

.field private static final blacklist MSG_ID_SETUP_MENU_RESET:I = 0x18

.field protected static blacklist mLock:Ljava/lang/Object;

.field private static blacklist sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private static blacklist sInstKey:[Ljava/lang/String;


# instance fields
.field private blacklist MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist isDisplayTextDisabled:Z

.field private blacklist isIvsrBootUp:Z

.field private blacklist mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

.field private blacklist mIsProactiveCmdResponsed:Z

.field private blacklist mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

.field private blacklist mMtkStkAppInstalled:Z

.field private blacklist mPhoneType:I

.field private blacklist mReadFromPreferenceDone:Z

.field public blacklist mSaveNewSetUpMenu:Z

.field private blacklist mSetUpMenuFromMD:Z

.field blacklist mTimeoutHandler:Landroid/os/Handler;

.field private blacklist simIdfromIntent:I

.field private blacklist simState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 133
    const-string v0, "sInstanceSim1"

    const-string v1, "sInstanceSim2"

    const-string v2, "sInstanceSim3"

    const-string v3, "sInstanceSim4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p7, "slotId"    # I

    .line 197
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    .line 139
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mReadFromPreferenceDone:Z

    .line 141
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 150
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    .line 151
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I

    .line 154
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    .line 157
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    .line 160
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 164
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    .line 166
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;-><init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mTimeoutHandler:Landroid/os/Handler;

    .line 1046
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;-><init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 203
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "c6m_1rild"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0, p0, v2, v3, p5}, Lcom/mediatek/internal/telephony/cat/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/mediatek/internal/telephony/cat/BipService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 209
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.intent.action.IVSR_NOTIFY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v2, "mediatek.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "mSIMStateChangeFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    const-string v3, "CatService: is running"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x18

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isMtkStkAppInstalled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK STK app installed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v3, :cond_1

    .line 227
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 228
    .local v3, "simCount":I
    new-array v4, v3, [Lcom/android/internal/telephony/cat/CatCmdMessage;

    sput-object v4, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 229
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 230
    sget-object v5, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    aput-object v1, v5, v4

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v3    # "simCount":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    return v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    return p1
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    return v0
.end method

.method static synthetic blacklist access$802(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    return p1
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I

    return v0
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I

    return p1
.end method

.method private blacklist checkSetupWizardInstalled()Z
    .locals 9

    .line 1200
    const-string v0, "com.google.android.setupwizard"

    const-string v1, "com.google.android.setupwizard"

    .line 1201
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.google.android.setupwizard.SetupWizardActivity"

    .line 1203
    .local v2, "activityName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1204
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1205
    const-string v0, "fail to get PM"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    return v4

    .line 1210
    :cond_0
    const/4 v5, 0x1

    .line 1212
    .local v5, "isPkgInstalled":Z
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    goto :goto_0

    .line 1213
    :catch_0
    move-exception v6

    .line 1214
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "fail to get SetupWizard package"

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    const/4 v5, 0x0

    .line 1218
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1219
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 1221
    .local v0, "pkgEnabledState":I
    if-eq v0, v6, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 1226
    :cond_1
    const-string v6, "Setup Wizard Activity is not activate"

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1223
    :cond_2
    :goto_1
    const-string v4, "should not show DISPLAY_TEXT immediately"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    return v6

    .line 1230
    .end local v0    # "pkgEnabledState":I
    :cond_3
    :goto_2
    const-string v0, "isPkgInstalled = false"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    return v4
.end method

.method public static blacklist getBatteryState(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .line 1297
    const/16 v0, 0xff

    .line 1298
    .local v0, "batteryState":I
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1300
    .local v2, "batteryStatus":Landroid/content/Intent;
    const-string v3, "MtkCatService"

    if-eqz v2, :cond_7

    .line 1301
    const-string v4, "level"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1302
    .local v4, "level":I
    const-string v6, "scale"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1303
    .local v6, "scale":I
    const-string v7, "status"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1304
    .local v5, "status":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v7, 0x5

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 1307
    .local v7, "isCharging":Z
    :goto_1
    int-to-float v8, v4

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 1308
    .local v8, "batteryPct":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " batteryPct == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "isCharging:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    if-eqz v7, :cond_2

    .line 1311
    const/16 v0, 0xff

    goto :goto_2

    .line 1312
    :cond_2
    float-to-double v9, v8

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_3

    .line 1313
    const/4 v0, 0x0

    goto :goto_2

    .line 1314
    :cond_3
    float-to-double v9, v8

    cmpl-double v9, v9, v11

    const-wide v10, 0x3fc3333333333333L    # 0.15

    if-lez v9, :cond_4

    float-to-double v12, v8

    cmpg-double v9, v12, v10

    if-gtz v9, :cond_4

    .line 1315
    const/4 v0, 0x1

    goto :goto_2

    .line 1316
    :cond_4
    float-to-double v12, v8

    cmpl-double v9, v12, v10

    const-wide v10, 0x3fe3333333333333L    # 0.6

    if-lez v9, :cond_5

    float-to-double v12, v8

    cmpg-double v9, v12, v10

    if-gtz v9, :cond_5

    .line 1317
    const/4 v0, 0x2

    goto :goto_2

    .line 1318
    :cond_5
    float-to-double v12, v8

    cmpl-double v9, v12, v10

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v9, :cond_6

    cmpg-float v9, v8, v10

    if-gez v9, :cond_6

    .line 1319
    const/4 v0, 0x3

    goto :goto_2

    .line 1320
    :cond_6
    cmpl-float v9, v8, v10

    if-nez v9, :cond_7

    .line 1321
    const/4 v0, 0x4

    .line 1324
    .end local v4    # "level":I
    .end local v5    # "status":I
    .end local v6    # "scale":I
    .end local v7    # "isCharging":Z
    .end local v8    # "batteryPct":F
    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryState() batteryState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    return v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 738
    const-string v0, "CatService"

    const-string v1, "call getInstance 2"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/4 v1, 0x0

    .line 740
    .local v1, "sim_id":I
    if-eqz p2, :cond_0

    .line 741
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v1

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SIM id from UiccCard. sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_0
    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/cat/MtkAppInterface;
    .locals 2

    .line 753
    const-string v0, "CatService"

    const-string v1, "call getInstance 4"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    return-object v0
.end method

.method public static blacklist getInstance(I)Lcom/mediatek/internal/telephony/cat/MtkAppInterface;
    .locals 2
    .param p0, "slotId"    # I

    .line 763
    const-string v0, "CatService"

    const-string v1, "call getInstance 3"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    return-object v0
.end method

.method private blacklist getPhoneType()I
    .locals 4

    .line 1339
    const/4 v0, 0x0

    .line 1340
    .local v0, "phoneType":I
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1341
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 1342
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType phoneType:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    :cond_0
    return v0
.end method

.method public static blacklist getSaveNewSetUpMenuFlag(I)Z
    .locals 3
    .param p0, "sim_id"    # I

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "result":Z
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 820
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    check-cast v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mSaveNewSetUpMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CatService"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_0
    return v0
.end method

.method private blacklist handleDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDBHandler, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method private blacklist handleEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    .line 964
    iget v1, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    iget v2, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mSourceId:I

    iget v3, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mDestinationId:I

    iget-object v4, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAdditionalInfo:[B

    iget-boolean v5, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mOneShot:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->eventDownload(III[BZ)V

    .line 966
    return-void
.end method

.method private static blacklist handleProactiveCmdFromDB(Lcom/mediatek/internal/telephony/cat/MtkCatService;Ljava/lang/String;)V
    .locals 3
    .param p0, "inst"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "data"    # Ljava/lang/String;

    .line 769
    const-string v0, "MtkCatService"

    if-nez p1, :cond_0

    .line 770
    const-string v1, "handleProactiveCmdFromDB: cmd = null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleProactiveCmdFromDB: cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(ILjava/lang/String;)V

    .line 776
    .local v1, "rilMsg":Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 777
    const-string v2, "handleProactiveCmdFromDB: over"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private blacklist isAlarmBoot()Z
    .locals 2

    .line 1195
    const-string v0, "vendor.sys.boot.reason"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isMtkStkAppInstalled()Z
    .locals 5

    .line 1329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1331
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1333
    .local v2, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1335
    .local v4, "numReceiver":I
    :goto_0
    if-lez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private blacklist isSetUpMenuCmd(Ljava/lang/String;)Z
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x0

    .line 790
    .local v0, "validCmd":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 791
    return v1

    .line 794
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    const/16 v4, 0x35

    const/16 v5, 0x32

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1

    .line 795
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 796
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v4, :cond_2

    .line 800
    const/4 v0, 0x1

    .line 807
    :cond_2
    :goto_0
    nop

    .line 809
    return v0

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException isSetUpMenuCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 806
    return v1
.end method

.method private blacklist mtkBroadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 716
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    const-string v2, "SLOT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtkBroadcastCatCmdIntent Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on slotid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method private static blacklist readCmdFromPreference(Lcom/mediatek/internal/telephony/cat/MtkCatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inst"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 1258
    const/4 v0, 0x0

    .line 1259
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    .local v1, "cmd":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1262
    const-string v2, "MtkCatService"

    const-string v3, "readCmdFromPreference with null instance"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const/4 v2, 0x0

    return-object v2

    .line 1266
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1267
    :try_start_0
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mReadFromPreferenceDone:Z

    if-nez v3, :cond_1

    .line 1268
    const-string v3, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    .line 1269
    const-string v3, ""

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1270
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mReadFromPreferenceDone:Z

    .line 1271
    const-string v3, "MtkCatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readCmdFromPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1272
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :cond_1
    const-string v3, "MtkCatService"

    const-string v4, "readCmdFromPreference, do not read again"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1278
    const/4 v1, 0x0

    .line 1280
    :cond_2
    return-object v1

    .line 1276
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static blacklist saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1248
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1249
    :try_start_0
    const-string v3, "MtkCatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCmdToPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v3, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    .line 1251
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v1, v3

    .line 1252
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1253
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1254
    monitor-exit v2

    .line 1255
    return-void

    .line 1254
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private blacklist sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 11
    .param p1, "catCmd"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 237
    if-nez p1, :cond_0

    .line 238
    const-string v0, "catCmd is null."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 242
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send TR for cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 253
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 250
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    const/4 v4, 0x0

    .line 249
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 251
    goto :goto_0

    .line 246
    :cond_2
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 247
    nop

    .line 257
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist cancelTimeOut(I)V
    .locals 2
    .param p1, "msg"    # I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    return-void
.end method

.method public blacklist dispose()V
    .locals 3

    .line 260
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing MtkCatService object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_2

    .line 273
    const-string v1, "Send TR for the last pending commands."

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetOnStkSetupMenuReset(Landroid/os/Handler;)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 279
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->dispose()V

    .line 286
    :cond_3
    invoke-super {p0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 287
    return-void

    .line 264
    :cond_4
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sInstance is null, maybe dispose already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    monitor-exit v0

    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .line 1240
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1241
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object v1

    .line 1242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 11
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .line 975
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    return-void

    .line 978
    :cond_0
    const/4 v0, 0x0

    .line 979
    .local v0, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v7, 0x0

    .line 980
    .local v7, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v8

    .line 981
    .local v8, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v1, v8, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    .line 983
    .local v9, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1027
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_4

    .line 1028
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    if-nez v1, :cond_1

    .line 1030
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    .line 1032
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iget v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    move-object v1, p0

    move-object v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1034
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1035
    return-void

    .line 1013
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1015
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 1014
    invoke-virtual {v1, v2, v3, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 1016
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1017
    return-void

    .line 1019
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_4

    .line 1020
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iget v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    move-object v1, p0

    move-object v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1022
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1023
    return-void

    .line 985
    :pswitch_2
    const/4 v7, 0x1

    .line 1003
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v9, v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_4

    .line 1006
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1007
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 1006
    invoke-virtual {v1, v2, v3, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 1008
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1009
    return-void

    .line 1039
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1040
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 29
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .line 366
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    if-eqz p2, :cond_0

    .line 370
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProactiveCommand mSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmdParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->addLocalLog(Ljava/lang/String;)V

    .line 378
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object v9, v0

    .line 380
    .local v9, "cmdMsg":Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;
    const/4 v10, 0x0

    .line 383
    .local v10, "response":Landroid/os/Message;
    const/4 v11, 0x0

    .line 384
    .local v11, "isAlarmState":Z
    const/4 v12, 0x0

    .line 385
    .local v12, "isFlightMode":Z
    const/4 v13, 0x0

    .line 387
    .local v13, "flightMode":I
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ", flightMode = "

    const-string v2, ", isFlightMode = "

    const-string v3, "isAlarmState = "

    const-string v4, "airplane_mode_on"

    const-string v5, "fail to get property from Settings"

    const/4 v14, 0x0

    const-string v15, "Default Message"

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 690
    const-string v0, "HandleCommand Callback to CatService"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 692
    return-void

    .line 641
    :pswitch_0
    move-object v15, v8

    check-cast v15, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 648
    .local v15, "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    const/4 v1, 0x0

    .line 650
    .local v1, "noAlphaUsrCnf":Z
    :try_start_0
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v1    # "noAlphaUsrCnf":Z
    .local v0, "noAlphaUsrCnf":Z
    goto :goto_0

    .line 652
    .end local v0    # "noAlphaUsrCnf":Z
    .restart local v1    # "noAlphaUsrCnf":Z
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    move v0, v1

    .line 655
    .end local v1    # "noAlphaUsrCnf":Z
    .local v0, "noAlphaUsrCnf":Z
    :goto_0
    iget-object v1, v15, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-boolean v1, v15, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 656
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with null alpha id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_2

    .line 659
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 660
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_3

    .line 661
    iget-object v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 662
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    .line 661
    invoke-virtual {v1, v6, v2, v14}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 664
    :cond_3
    :goto_1
    return-void

    .line 668
    :cond_4
    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mStkAppInstalled:Z

    if-nez v1, :cond_5

    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    if-nez v1, :cond_5

    .line 669
    const-string v1, "No STK application found."

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    if-eqz p2, :cond_5

    .line 671
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 673
    return-void

    .line 682
    :cond_5
    if-eqz p2, :cond_1b

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_6

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_6

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_1b

    .line 686
    :cond_6
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_a

    .line 628
    .end local v0    # "noAlphaUsrCnf":Z
    .end local v15    # "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_1
    iput-boolean v6, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 629
    goto/16 :goto_a

    .line 620
    :pswitch_2
    iput-boolean v6, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 621
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_1b

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 622
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 623
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const v1, 0x1040763

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 624
    .local v0, "message":Ljava/lang/CharSequence;
    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_a

    .line 610
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_3
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 612
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v14, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 614
    :cond_7
    iput-boolean v6, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 615
    goto/16 :goto_a

    .line 600
    :pswitch_4
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimCardState(I)I

    move-result v0

    iput v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1b

    .line 603
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 605
    return-void

    .line 581
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isAlarmBoot()Z

    move-result v11

    .line 583
    :try_start_1
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    .end local v13    # "flightMode":I
    .local v0, "flightMode":I
    move v13, v0

    goto :goto_2

    .line 585
    .end local v0    # "flightMode":I
    .restart local v13    # "flightMode":I
    :catch_1
    move-exception v0

    .line 586
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v7, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    const/4 v4, 0x0

    move v13, v4

    .line 589
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_2
    if-eqz v13, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    move v12, v6

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    if-eqz v11, :cond_1b

    if-eqz v12, :cond_1b

    .line 593
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 595
    return-void

    .line 571
    :pswitch_6
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_1b

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 573
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 574
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const v1, 0x104043e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 575
    .local v0, "message":Ljava/lang/CharSequence;
    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_a

    .line 495
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_7
    const/4 v0, 0x0

    .line 497
    .local v0, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-ne v1, v2, :cond_9

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 500
    .local v14, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 501
    .local v1, "temp":I
    const/4 v5, 0x0

    .line 502
    .local v5, "hibyte":I
    const/4 v15, 0x0

    .line 503
    .local v15, "lobyte":I
    const/4 v2, 0x7

    new-array v2, v2, [B

    .line 505
    .local v2, "datetime":[B
    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit16 v3, v3, -0x7d0

    .line 506
    .end local v1    # "temp":I
    .local v3, "temp":I
    div-int/lit8 v1, v3, 0xa

    .line 507
    .end local v5    # "hibyte":I
    .local v1, "hibyte":I
    rem-int/lit8 v5, v3, 0xa

    shl-int/2addr v5, v4

    .line 508
    .end local v15    # "lobyte":I
    .local v5, "lobyte":I
    or-int v15, v5, v1

    int-to-byte v15, v15

    const/16 v17, 0x0

    aput-byte v15, v2, v17

    .line 510
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    .line 511
    .end local v3    # "temp":I
    .local v19, "temp":I
    div-int/lit8 v1, v19, 0xa

    .line 512
    rem-int/lit8 v3, v19, 0xa

    shl-int/2addr v3, v4

    .line 513
    .end local v5    # "lobyte":I
    .local v3, "lobyte":I
    or-int v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 515
    const/4 v5, 0x5

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 516
    .end local v19    # "temp":I
    .local v15, "temp":I
    div-int/lit8 v1, v15, 0xa

    .line 517
    rem-int/lit8 v19, v15, 0xa

    shl-int/lit8 v3, v19, 0x4

    .line 518
    or-int v6, v3, v1

    int-to-byte v6, v6

    const/16 v18, 0x2

    aput-byte v6, v2, v18

    .line 520
    const/16 v6, 0xb

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 521
    .end local v15    # "temp":I
    .local v6, "temp":I
    div-int/lit8 v1, v6, 0xa

    .line 522
    rem-int/lit8 v15, v6, 0xa

    shl-int/lit8 v3, v15, 0x4

    .line 523
    or-int v15, v3, v1

    int-to-byte v15, v15

    const/16 v16, 0x3

    aput-byte v15, v2, v16

    .line 525
    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 526
    div-int/lit8 v1, v6, 0xa

    .line 527
    rem-int/lit8 v15, v6, 0xa

    shl-int/lit8 v3, v15, 0x4

    .line 528
    or-int v15, v3, v1

    int-to-byte v15, v15

    aput-byte v15, v2, v4

    .line 530
    const/16 v15, 0xd

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 531
    div-int/lit8 v1, v6, 0xa

    .line 532
    rem-int/lit8 v15, v6, 0xa

    shl-int/lit8 v3, v15, 0x4

    .line 533
    or-int v15, v3, v1

    int-to-byte v15, v15

    aput-byte v15, v2, v5

    .line 536
    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const v16, 0xdbba0

    div-int v15, v15, v16

    .line 537
    .end local v6    # "temp":I
    .restart local v15    # "temp":I
    div-int/lit8 v16, v15, 0xa

    .line 538
    .end local v1    # "hibyte":I
    .local v16, "hibyte":I
    rem-int/lit8 v1, v15, 0xa

    shl-int/lit8 v20, v1, 0x4

    .line 539
    .end local v3    # "lobyte":I
    .local v20, "lobyte":I
    or-int v1, v20, v16

    int-to-byte v1, v1

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    .line 541
    new-instance v6, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;

    const/4 v1, 0x0

    aget-byte v22, v2, v1

    const/4 v1, 0x1

    aget-byte v23, v2, v1

    const/4 v1, 0x2

    aget-byte v24, v2, v1

    const/4 v1, 0x3

    aget-byte v25, v2, v1

    aget-byte v26, v2, v4

    aget-byte v27, v2, v5

    aget-byte v28, v2, v3

    move-object/from16 v21, v6

    invoke-direct/range {v21 .. v28}, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;-><init>(IIIIIII)V

    .line 544
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "datetime":[B
    .local v17, "datetime":[B
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 546
    return-void

    .line 547
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v14    # "cal":Ljava/util/Calendar;
    .end local v15    # "temp":I
    .end local v16    # "hibyte":I
    .end local v17    # "datetime":[B
    .end local v20    # "lobyte":I
    .restart local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_9
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    if-ne v1, v4, :cond_a

    .line 550
    const/4 v1, 0x2

    new-array v14, v1, [B

    .line 551
    .local v14, "lang":[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 553
    .local v15, "locale":Ljava/util/Locale;
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v14, v2

    .line 554
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v14, v2

    .line 556
    new-instance v6, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;

    invoke-direct {v6, v14}, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;-><init>([B)V

    .line 558
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 560
    return-void

    .line 561
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v14    # "lang":[B
    .end local v15    # "locale":Ljava/util/Locale;
    .restart local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_a
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    .line 563
    iget-object v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getBatteryState(Landroid/content/Context;)I

    move-result v14

    .line 564
    .local v14, "batterystate":I
    new-instance v6, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;

    invoke-direct {v6, v14}, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;-><init>(I)V

    .line 565
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 566
    return-void

    .line 569
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v14    # "batterystate":I
    .restart local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_b
    return-void

    .line 488
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    if-eqz v0, :cond_c

    .line 489
    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/cat/BipService;->setSetupEventList(Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)V

    .line 492
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 493
    goto/16 :goto_a

    .line 412
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isAlarmBoot()Z

    move-result v11

    .line 414
    :try_start_2
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 419
    .end local v13    # "flightMode":I
    .local v0, "flightMode":I
    move v13, v0

    goto :goto_4

    .line 416
    .end local v0    # "flightMode":I
    .restart local v13    # "flightMode":I
    :catch_2
    move-exception v0

    .line 417
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v7, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const/4 v4, 0x0

    move v13, v4

    .line 420
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_4
    if-eqz v13, :cond_d

    const/4 v6, 0x1

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    :goto_5
    move v12, v6

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    if-eqz v11, :cond_e

    if-eqz v12, :cond_e

    .line 425
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 426
    return-void

    .line 430
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->checkSetupWizardInstalled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 434
    const-string v0, "ro.oppo.version"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 435
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 437
    return-void

    .line 445
    :cond_f
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 446
    .local v0, "tmpText":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 448
    const-string v1, "Error in application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 449
    const-string v1, "invalid input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 450
    const-string v1, "DF A8\'H Default Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 451
    const-string v1, "DF A8\'H, Default Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 452
    const-string v1, "Out of variable memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 454
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 456
    .local v14, "tmpMccMnc":Ljava/lang/String;
    if-eqz v14, :cond_11

    const-string v1, "404"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "405"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    if-nez v14, :cond_13

    .line 458
    :cond_12
    const-string v1, "Ignore India sim card popup info, send TR directly"

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 460
    return-void

    .line 467
    .end local v14    # "tmpMccMnc":Ljava/lang/String;
    :cond_13
    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    if-eqz v1, :cond_14

    .line 468
    const-string v1, "[IVSR send TR directly"

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 471
    return-void

    .line 474
    :cond_14
    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    if-eqz v1, :cond_1b

    .line 475
    const-string v1, "[Sim Recovery send TR directly"

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 478
    return-void

    .line 631
    .end local v0    # "tmpText":Ljava/lang/String;
    :pswitch_a
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_1b

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 632
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 633
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const v1, 0x10400b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 634
    .local v0, "message":Ljava/lang/CharSequence;
    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_a

    .line 482
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_b
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    goto :goto_6

    .line 483
    :cond_15
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    :goto_6
    nop

    .line 484
    .local v3, "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 485
    goto :goto_a

    .line 389
    .end local v3    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :pswitch_c
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 390
    iput-object v14, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_7

    .line 392
    :cond_16
    iput-object v9, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 394
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSetUpMenuFromMD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAT"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 396
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;

    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_8

    .line 397
    :cond_17
    const/4 v1, 0x0

    .line 396
    :goto_8
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkMenu;->setSetUpMenuFlag(I)V

    .line 399
    :cond_18
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    if-nez v0, :cond_19

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 401
    goto :goto_a

    .line 403
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    .line 405
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    goto :goto_9

    .line 406
    :cond_1a
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    :goto_9
    nop

    .line 407
    .restart local v3    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 408
    nop

    .line 694
    .end local v3    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :cond_1b
    :goto_a
    iput-object v9, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 699
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aput-object v9, v0, v1

    .line 704
    invoke-direct {v7, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mtkBroadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 705
    invoke-virtual {v9, v8, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->convertToCatCmdMessage(Lcom/android/internal/telephony/cat/CommandParams;Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 706
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 829
    const-string v0, "com.mediatek.engineermode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkCatservice handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, "cmd":Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;
    const/4 v2, 0x0

    .line 832
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x0

    .line 834
    .local v3, "ret":I
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x5

    if-eq v4, v6, :cond_3

    const/16 v0, 0x18

    const/4 v6, 0x0

    if-eq v4, v0, :cond_1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 888
    :pswitch_0
    const-string v0, "[IVSR cancel IVSR flag"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    .line 890
    return-void

    .line 902
    :pswitch_1
    const-string v0, "MSG_ID_LAUNCH_DB_SETUP_MENU"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "strCmd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 906
    .local v4, "inst":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    sget-object v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v6, v6, v7

    check-cast v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->readCmdFromPreference(Lcom/mediatek/internal/telephony/cat/MtkCatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    sget-object v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 910
    sget-object v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v6, v6, v7

    check-cast v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleProactiveCmdFromDB(Lcom/mediatek/internal/telephony/cat/MtkCatService;Ljava/lang/String;)V

    .line 911
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 913
    :cond_0
    return-void

    .line 884
    .end local v0    # "strCmd":Ljava/lang/String;
    .end local v4    # "inst":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V

    .line 885
    return-void

    .line 881
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V

    .line 882
    return-void

    .line 893
    :cond_1
    const-string v0, "SETUP_MENU_RESET : Setup menu reset."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 895
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 896
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    goto :goto_0

    .line 898
    :cond_2
    const-string v4, "SETUP_MENU_RESET : AsyncResult null."

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-void

    .line 839
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ril message arrived, slotid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    const/4 v4, 0x0

    .line 841
    .local v4, "data":Ljava/lang/String;
    const/4 v6, 0x0

    .line 842
    .local v6, "flag":Z
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 843
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 844
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v8, :cond_4

    .line 845
    const-string v0, "mMsgDecoder == null, return."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    return-void

    .line 848
    :cond_4
    if-eqz v7, :cond_7

    iget-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 850
    :try_start_0
    iget-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 853
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isSetUpMenuCmd(Ljava/lang/String;)Z

    move-result v8

    .line 854
    .local v8, "isValid":Z
    if-eqz v8, :cond_5

    sget-object v9, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v9, v9, v10

    if-ne p0, v9, :cond_5

    .line 855
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v9, v9, v10

    invoke-static {v0, v9, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 857
    const/4 v6, 0x1

    .line 858
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v5, v4}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(ILjava/lang/String;)V

    .line 859
    .local v0, "rilMsg":Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->setSetUpMenuFromMD(Z)V

    .line 860
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 861
    return-void

    .line 863
    .end local v0    # "rilMsg":Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    :cond_5
    const-string v5, "BIP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 864
    new-instance v5, Landroid/content/Intent;

    const-string v9, "mediatek.intent.action.BIP_STATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "BIP_CMD"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-string v9, "SLOT_ID"

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    move-object v9, v0

    .line 868
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Broadcast BIP Intent: Sending data: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " on slotid:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    return-void

    .line 876
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "isValid":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/ClassCastException;
    return-void

    .line 915
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "flag":Z
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleMessage(Landroid/os/Message;)V

    .line 916
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .line 291
    if-nez p1, :cond_0

    .line 292
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 356
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 357
    return-void

    .line 299
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    .line 300
    if-eqz v0, :cond_5

    .line 301
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 302
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 304
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event notify error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    .line 311
    :cond_3
    const-string v1, "notify user text message even though get icon fail"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 314
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 315
    const-string v1, "Open Channel with ResultCode"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 320
    :cond_5
    :goto_0
    return-void

    .line 322
    :cond_6
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    if-ne v1, v2, :cond_7

    .line 323
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 326
    :cond_7
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 337
    nop

    .line 338
    if-eqz v0, :cond_b

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_8

    .line 340
    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    .line 342
    :cond_8
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v1, v2, :cond_a

    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_9

    goto :goto_1

    .line 349
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-handleMessage: invalid proactive command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAT"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v5, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 344
    :cond_a
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 354
    :cond_b
    :goto_2
    return-void

    .line 327
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Fail to parse proactive command"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_c

    .line 333
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 336
    :cond_c
    return-void
.end method

.method protected blacklist handleSessionEnd()V
    .locals 3

    .line 1353
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    aput-object v2, v0, v1

    .line 1354
    invoke-super {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    .line 1355
    return-void
.end method

.method public declared-synchronized blacklist onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 5
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    monitor-enter p0

    .line 920
    :try_start_0
    const-string v0, "MtkCatService onCmdResponse"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    if-nez p1, :cond_0

    .line 922
    monitor-exit p0

    return-void

    .line 924
    :cond_0
    const/4 v0, 0x0

    .line 925
    .local v0, "msg":Landroid/os/Message;
    :try_start_1
    const-class v1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    .line 927
    invoke-virtual {p0, v2, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    .line 928
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 931
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    :cond_1
    const/4 v1, 0x0

    .line 932
    .local v1, "resMtkMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_2

    .line 933
    new-instance v3, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v3, v4, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    move-object v1, v3

    goto :goto_0

    .line 935
    :cond_2
    new-instance v3, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-static {}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getCmdMsg()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    move-object v1, v3

    .line 937
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object v0, v2

    .line 938
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    .end local v1    # "resMtkMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    :goto_1
    monitor-exit p0

    return-void

    .line 919
    .end local v0    # "msg":Landroid/os/Message;
    .end local p1    # "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onDBHandler(I)V
    .locals 2
    .param p1, "sim_id"    # I

    monitor-enter p0

    .line 953
    const/16 v0, 0xc

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 954
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    monitor-exit p0

    return-void

    .line 952
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .end local p1    # "sim_id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V
    .locals 1
    .param p1, "resMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    monitor-enter p0

    .line 943
    if-nez p1, :cond_0

    .line 944
    monitor-exit p0

    return-void

    .line 947
    :cond_0
    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 948
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    monitor-exit p0

    return-void

    .line 942
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .end local p1    # "resMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onLaunchCachedSetupMenu()V
    .locals 3

    monitor-enter p0

    .line 959
    const/16 v0, 0xd

    :try_start_0
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 960
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    .line 958
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected blacklist onSetResponsedFlag()V
    .locals 1

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 726
    return-void
.end method

.method protected blacklist sendMenuSelection(IZ)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .line 730
    const-string v0, "CatService"

    const-string v1, "sendMenuSelection SET_UP_MENU"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    .line 732
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->cancelTimeOut(I)V

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    .line 734
    return-void
.end method

.method blacklist startTimeOut(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->cancelTimeOut(I)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 192
    return-void
.end method

.method public blacklist update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 1103
    const/4 v0, 0x0

    .line 1104
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 1106
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_2

    .line 1116
    const/4 v2, 0x1

    .line 1117
    .local v2, "newPhoneType":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getPhoneType()I

    move-result v2

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update PhoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSlotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkCatService"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    .line 1121
    .local v3, "oldPhoneType":I
    iput v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    .line 1129
    if-eqz v3, :cond_0

    if-eq v3, v2, :cond_0

    .line 1130
    const-string v4, "MtkCatService"

    const-string v5, "phone type change,reset card state to absent....."

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1133
    :cond_0
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1134
    invoke-virtual {p3, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    goto :goto_0

    .line 1136
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1138
    :goto_0
    if-eqz v0, :cond_2

    .line 1139
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1143
    .end local v2    # "newPhoneType":I
    .end local v3    # "oldPhoneType":I
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1144
    if-eqz v1, :cond_4

    :try_start_0
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v3, v1, :cond_4

    .line 1145
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_3

    .line 1146
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1149
    :cond_3
    const-string v3, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    sput-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1152
    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1155
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    :cond_4
    monitor-exit v2

    .line 1160
    return-void

    .line 1159
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected blacklist updateIccAvailability()V
    .locals 6

    .line 1164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 1165
    const-string v0, "updateIccAvailability, mUiccController is null"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    return-void

    .line 1169
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1170
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 1171
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_1

    .line 1172
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    .line 1174
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1175
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " New Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Old Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v3, :cond_2

    .line 1179
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 1180
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v3, :cond_4

    .line 1182
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 1183
    const-string v3, "updateIccAvailability(): Radio unavailable"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_0

    .line 1187
    :cond_3
    const-string v3, "SIM present. Reporting STK service running now..."

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 1191
    :cond_4
    :goto_0
    return-void
.end method

.method protected blacklist validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .line 1358
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lxj mCurrntCmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1361
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 1363
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_1

    .line 1368
    const-string v0, "lxj  mCurrntCmd: is null "

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1371
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lxj sCurrntCmd["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sCurrntCmd:[Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    :cond_2
    const/4 v0, 0x1

    .line 1374
    .local v0, "validResponse":Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 1375
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 1377
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_6

    .line 1378
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1380
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 1382
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1376
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    :cond_6
    :goto_1
    return v0
.end method
