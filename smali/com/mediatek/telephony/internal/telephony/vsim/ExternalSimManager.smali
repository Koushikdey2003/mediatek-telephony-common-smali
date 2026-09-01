.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;
    }
.end annotation


# static fields
.field private static final blacklist AUTO_RETRY_DURATION:I = 0x7d0

.field private static final blacklist ENG:Z

.field private static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x2

.field private static final blacklist EVENT_VSIM_INDICATION:I = 0x1

.field private static final blacklist MAX_VSIM_UICC_CMD_LEN:I = 0x10d

.field private static final blacklist NO_RESPONSE_STATUS_WORD_BYTE1:B = 0x0t

.field private static final blacklist NO_RESPONSE_STATUS_WORD_BYTE2:B = 0x0t

.field private static final blacklist NO_RESPONSE_TIMEOUT_DURATION:I = 0x32c8

.field private static final blacklist PLATFORM_READY_CATEGORY_RADIO:I = 0x3

.field private static final blacklist PLATFORM_READY_CATEGORY_SIM_SWITCH:I = 0x2

.field private static blacklist PLUG_IN_AUTO_RETRY:Z = false

.field private static final blacklist PLUG_IN_AUTO_RETRY_TIMEOUT:I = 0x9c40

.field private static final blacklist PREFERED_AKA_SIM_SLOT:Ljava/lang/String; = "vendor.gsm.prefered.aka.sim.slot"

.field private static final blacklist PREFERED_RSIM_SLOT:Ljava/lang/String; = "vendor.gsm.prefered.rsim.slot"

.field static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final blacklist RECOVERY_TO_REAL_SIM_TIMEOUT:I = 0x493e0

.field private static final blacklist SET_CAPABILITY_DONE:I = 0x2

.field private static final blacklist SET_CAPABILITY_FAILED:I = 0x3

.field private static final blacklist SET_CAPABILITY_NONE:I = 0x0

.field private static final blacklist SET_CAPABILITY_ONGOING:I = 0x1

.field private static final blacklist SIM_STATE_RETRY_DURATION:I = 0x4e20

.field private static final blacklist SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final blacklist TAG:Ljava/lang/String; = "ExternalSimMgr"

.field private static final blacklist TRY_RESET_MODEM_DURATION:I = 0x7d0

.field private static blacklist sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

.field private static blacklist sPreferedAkaSlot:I

.field private static blacklist sPreferedRsimSlot:I


# instance fields
.field private blacklist mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

.field private blacklist mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLockForEventReq:Ljava/lang/Object;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRecoveryTimer:Ljava/util/Timer;

.field private blacklist mSetCapabilityDone:I

.field private blacklist mUserMainPhoneId:I

.field private blacklist mUserRadioOn:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 109
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->PLUG_IN_AUTO_RETRY:Z

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 176
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 183
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    .line 184
    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 148
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    .line 149
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 150
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 151
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLockForEventReq:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    .line 171
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserMainPhoneId:I

    .line 174
    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    .line 280
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    const-string v0, "ExternalSimMgr"

    const-string v1, "construtor 0 parameter is called - done"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 148
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    .line 149
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 150
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 151
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLockForEventReq:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    .line 171
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserMainPhoneId:I

    .line 174
    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    .line 280
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    const-string v0, "ExternalSimMgr"

    const-string v1, "construtor 1 parameter is called - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->initVsimConfiguration()V

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->startRecoveryTimer()V

    .line 202
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    .line 203
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 218
    invoke-virtual {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->start()V

    .line 220
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 234
    invoke-virtual {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->start()V

    .line 238
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    const-string v2, "construtor is called - end"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    return-object v0
.end method

.method static synthetic blacklist access$002(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 108
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    return-object p1
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    return-object v0
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 108
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    return-object p1
.end method

.method static synthetic blacklist access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->truncateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1300()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z

    return v0
.end method

.method static synthetic blacklist access$1900()I
    .locals 1

    .line 108
    sget v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    return v0
.end method

.method static synthetic blacklist access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 108
    sput p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    return p0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$202(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;[Lcom/android/internal/telephony/CommandsInterface;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 108
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object p1
.end method

.method static synthetic blacklist access$2100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    return v0
.end method

.method static synthetic blacklist access$2102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    return p1
.end method

.method static synthetic blacklist access$2200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->waitRildSetDisabledProperty(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendExternalSimConnectedEvent(I)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    return v0
.end method

.method static synthetic blacklist access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    return p1
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 108
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendCapabilityDoneEvent()V

    return-void
.end method

.method static synthetic blacklist access$800()I
    .locals 1

    .line 108
    sget v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    return v0
.end method

.method static synthetic blacklist access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 108
    sput p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    return p0
.end method

.method private static blacklist getITelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .locals 1

    .line 262
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPreferedRsimSlot()I
    .locals 1

    .line 389
    sget v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    return v0
.end method

.method public static blacklist isAnyVsimEnabled()Z
    .locals 8

    .line 396
    const-string v0, "ro.vendor.mtk_external_sim_only_slots"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "vsimOnly":I
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 398
    return v2

    .line 400
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 401
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.enabled"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "enable":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v6, "vendor.gsm.external.sim.inserted"

    invoke-static {v3, v6, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "inserted":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v6, :cond_1

    .line 406
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 407
    return v2

    .line 400
    .end local v4    # "enable":Ljava/lang/String;
    .end local v6    # "inserted":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist isNonDsdaRemoteSimSupport()Z
    .locals 3

    .line 356
    nop

    .line 357
    const-string v0, "ro.vendor.mtk_non_dsda_rsim_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 358
    return v2

    .line 361
    :cond_0
    return v1
.end method

.method public static blacklist isSupportVsimHotPlugOut()Z
    .locals 5

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 366
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v1, "vendor.gsm.modem.vsim.capability"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "capability":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    .line 375
    const/4 v2, 0x1

    return v2

    .line 381
    :cond_0
    goto :goto_1

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExternalSimMgr"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "capability":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 247
    sget-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 251
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    return-object v0
.end method

.method private blacklist sendCapabilityDoneEvent()V
    .locals 4

    .line 266
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x0

    const/16 v2, 0x7d2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 271
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 272
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    const-string v2, "ExternalSimMgr"

    const-string v3, "sendCapabilityDoneEvent...."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private blacklist sendExternalSimConnectedEvent(I)V
    .locals 4
    .param p1, "connected"    # I

    .line 522
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 527
    .local v0, "connectedEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 529
    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 531
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 532
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExternalSimConnectedEvent connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method private static blacklist truncateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "original"    # Ljava/lang/String;

    .line 255
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    :goto_0
    return-object p0
.end method

.method private blacklist waitRildSetDisabledProperty(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 539
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.enabled"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "enabled":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 543
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_1

    .line 544
    :catch_0
    move-exception v3

    .line 545
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 547
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist disableAllVsimWithResetModem()V
    .locals 3

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 488
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->waitRildSetDisabledProperty(I)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    if-eqz v0, :cond_1

    .line 492
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 496
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 499
    .local v0, "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    .line 500
    const-string v1, "ExternalSimMgr"

    const-string v2, "disableAllVsimWithResetModem..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public blacklist finalizeService([B)Z
    .locals 3
    .param p1, "userData"    # [B

    .line 337
    const-string v0, "ExternalSimMgr"

    const-string v1, "finalizeService() - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v1, "ro.vendor.mtk_external_sim_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const-string v1, "initializeService() - mtk_external_sim_support didn\'t support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v2

    .line 344
    :cond_0
    const-string v1, "ctl.stop"

    const-string v2, "osi"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "finalizeService() - end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist initVsimConfiguration()V
    .locals 2

    .line 351
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    .line 352
    const-string v0, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    .line 353
    return-void
.end method

.method public blacklist initializeService([B)Z
    .locals 3
    .param p1, "userData"    # [B

    .line 323
    const-string v0, "ExternalSimMgr"

    const-string v1, "initializeService() - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "ro.vendor.mtk_external_sim_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const-string v1, "initializeService() - mtk_external_sim_support didn\'t support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v2

    .line 330
    :cond_0
    const-string v1, "ctl.start"

    const-string v2, "osi"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "initializeService() - end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendDisableEvent(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "simType"    # I

    .line 504
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 510
    .local v0, "disableEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 512
    invoke-virtual {v0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 514
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 515
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDisableEvent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public blacklist startRecoveryTimer()V
    .locals 9

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const-string v2, "ExternalSimMgr"

    if-ge v0, v1, :cond_3

    .line 415
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v1, "persist.vendor.radio.external.sim"

    const-string v3, "0"

    invoke-static {v0, v1, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "persist":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    if-nez v3, :cond_1

    .line 420
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 422
    const v3, 0x493e0

    .line 424
    .local v3, "timout":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const v4, 0x493e0

    .line 427
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 424
    const-string v5, "persist.vendor.radio.vsim.timeout"

    invoke-static {v0, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "userTimeout":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 v5, v5, 0x3e8

    move v3, v5

    .line 435
    :cond_0
    goto :goto_1

    .line 433
    :catch_0
    move-exception v5

    .line 434
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 437
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    new-instance v6, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;

    invoke-direct {v6, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    int-to-long v7, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecoveryTimer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v3    # "timout":I
    .end local v4    # "userTimeout":Ljava/lang/String;
    :cond_1
    return-void

    .line 414
    .end local v1    # "persist":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 444
    .end local v0    # "i":I
    :cond_3
    const-string v0, "No need to startRecoveryTimer since didn\'t set persist VSIM."

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method public blacklist stopRecoveryTimer()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 450
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 452
    const-string v0, "ExternalSimMgr"

    const-string v1, "stopRecoveryTimer."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    return-void
.end method
