.class public final Lcom/mediatek/internal/telephony/MtkRetryManager;
.super Lcom/android/internal/telephony/RetryManager;
.source "MtkRetryManager.java"


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String; = "MtkRetryManager"

.field private static blacklist mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;


# instance fields
.field private blacklist mBcastRegistered:Z

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

.field private blacklist mPhoneNum:I

.field private blacklist mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 115
    const/16 v0, 0x64

    sput v0, Lcom/mediatek/internal/telephony/MtkRetryManager;->MAX_SAME_APN_RETRY:I

    .line 116
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBcastRegistered:Z

    .line 86
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkRetryManager$1;-><init>(Lcom/mediatek/internal/telephony/MtkRetryManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhoneNum:I

    .line 131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getInstance(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    .line 134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mApnType:Ljava/lang/String;

    const-string v1, "ims"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mApnType:Ljava/lang/String;

    .line 136
    const-string v1, "default"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBcastRegistered:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBcastRegistered:Z

    .line 146
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->checkAndBindImsService()V

    .line 149
    :cond_2
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkRetryManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    return-wide v0
.end method

.method static synthetic blacklist access$1002(Lcom/mediatek/internal/telephony/MtkRetryManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # J

    .line 72
    iput-wide p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    return-wide p1
.end method

.method static synthetic blacklist access$1102(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkRetryManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkRetryManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    return v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkRetryManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    return-wide v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    return v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/MtkRetryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 72
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->configureRetryOnly()V

    return-void
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    return p1
.end method

.method private blacklist checkAndBindImsService()V
    .locals 3

    .line 303
    const-string v0, "mtkIms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 304
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 309
    if-nez v1, :cond_1

    .line 310
    return-void

    .line 313
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindImsService: mMtkImsService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private blacklist configureRetryOnly()V
    .locals 2

    .line 198
    const-string v0, "MtkRetryManager"

    const-string v1, "configureRetryOnly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-super {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 202
    return-void
.end method


# virtual methods
.method protected blacklist configureRetry()V
    .locals 5

    .line 163
    invoke-super {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 165
    const/4 v0, 0x0

    .line 170
    .local v0, "configString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    .line 172
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 175
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureRetry: mCurrentApnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reset MD data count for apn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->resetMdDataRetryCount(Ljava/lang/String;Landroid/os/Message;)V

    .line 178
    .end local v1    # "index":I
    goto :goto_0

    .line 179
    :cond_2
    const-string v1, "configureRetry: mWaitingApns is null or empty"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 186
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 187
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasMdAutoSetupImsCapability()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 188
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mApnType:Ljava/lang/String;

    const-string v2, "ims"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mApnType:Ljava/lang/String;

    .line 189
    const-string v2, "emergency"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    :cond_3
    const-string v1, "MtkRetryManager"

    const-string v2, "configureRetry: IMS/EIMS, no retry by mobile."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, "max_retries=0, -1, -1, -1"

    .line 192
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->configure(Ljava/lang/String;)Z

    .line 195
    :cond_4
    return-void
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .locals 2

    .line 154
    const-string v0, "RetryManager finalized"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method public blacklist getDelayForNextApn(Z)J
    .locals 7
    .param p1, "failFastEnabled"    # Z

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 218
    :cond_0
    iget-wide v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 219
    const-string v0, "Modem suggested not retrying."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 220
    return-wide v1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mApnType:Ljava/lang/String;

    const-string v3, "ims"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mApnType:Ljava/lang/String;

    .line 224
    const-string v3, "emergency"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 229
    :cond_2
    iget-wide v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    sget v3, Lcom/mediatek/internal/telephony/MtkRetryManager;->MAX_SAME_APN_RETRY:I

    if-ge v0, v3, :cond_4

    .line 233
    iget-wide v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 234
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->getValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->isNetworkOperatorForCC33()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 238
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->getValue()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 239
    return-wide v1

    .line 246
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modem suggested retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 247
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mModemSuggestedDelay:J

    return-wide v0

    .line 256
    :cond_4
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    .line 258
    .local v0, "index":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    const/4 v0, 0x0

    .line 261
    :cond_6
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 262
    nop

    .line 273
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    if-gt v0, v3, :cond_8

    .line 275
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryForever:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMaxRetryCount:I

    if-le v3, v4, :cond_7

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reached maximum retry count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMaxRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 277
    return-wide v1

    .line 279
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->getRetryTimer()I

    move-result v1

    int-to-long v1, v1

    .line 280
    .local v1, "delay":J
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryCount:I

    goto :goto_0

    .line 283
    .end local v1    # "delay":J
    :cond_8
    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mInterApnDelay:J

    .line 286
    .restart local v1    # "delay":J
    :goto_0
    if-eqz p1, :cond_9

    iget-wide v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mFailFastInterApnDelay:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_9

    .line 291
    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mFailFastInterApnDelay:J

    .line 294
    :cond_9
    return-wide v1

    .line 266
    .end local v1    # "delay":J
    :cond_a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;->INSTANCE:Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    const-string v3, "All APNs have permanently failed."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 268
    return-wide v1

    .line 225
    .end local v0    # "index":I
    :cond_b
    :goto_1
    const-string v0, "For ims or emergency request, not trigger retry on AP side"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 226
    return-wide v1

    .line 214
    :cond_c
    :goto_2
    const-string v0, "Waiting APN list is null or empty."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 215
    return-wide v1
.end method
