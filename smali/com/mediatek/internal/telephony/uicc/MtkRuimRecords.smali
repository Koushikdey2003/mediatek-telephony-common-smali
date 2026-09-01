.class public Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
.super Lcom/android/internal/telephony/uicc/RuimRecords;
.source "MtkRuimRecords.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/uicc/MtkIccConstants;


# static fields
.field public static final blacklist C2K_PHB_NOT_READY:I = 0x2

.field public static final blacklist C2K_PHB_READY:I = 0x3

.field private static final blacklist CSIM_FDN_SERVICE_MASK_ACTIVE:I = 0x1

.field private static final blacklist CSIM_FDN_SERVICE_MASK_EXIST:I = 0x2

.field private static final blacklist EVENT_DELAYED_SEND_PHB_CHANGE:I = 0x1f7

.field private static final blacklist EVENT_GET_EST_DONE:I = 0x1f5

.field private static final blacklist EVENT_PHB_READY:I = 0x1f8

.field private static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x1f6

.field public static final blacklist GSM_PHB_NOT_READY:I = 0x0

.field public static final blacklist GSM_PHB_READY:I = 0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "RuimRecords"

.field private static final blacklist MCC_LEN:I = 0x3

.field static final blacklist MTK_LOG_TAG:Ljava/lang/String; = "MtkRuimRecords"

.field public static final blacklist PHB_DELAY_SEND_TIME:I = 0x1f4

.field static final blacklist PROPERTY_RIL_C2K_PHB_READY:Ljava/lang/String; = "vendor.cdma.sim.ril.phbready"

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final blacklist PROPERTY_RIL_GSM_PHB_READY:Ljava/lang/String; = "vendor.gsm.sim.ril.phbready"

.field private static final blacklist RUIM_FDN_SERVICE_MASK_EXIST_ACTIVE:I = 0x30

.field private static final blacklist RUIM_FDN_SERVICE_MASK_EXIST_INACTIVE:I = 0x10


# instance fields
.field private blacklist mDispose:Z

.field private blacklist mEnableService:[B

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPendingPhbNotify:Z

.field private blacklist mPhbReady:Z

.field private blacklist mPhbWaitSub:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mRuimImsi:Ljava/lang/String;

.field private blacklist mSimService:[B

.field private blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 120
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "app"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 143
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    .line 146
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDispose:Z

    .line 147
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    .line 222
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtkRuimRecords X ctor this="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 226
    new-instance v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3, p3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 227
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x1f8

    invoke-virtual {v1, p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1f6

    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const-string v1, "updateIccRecords in IccPhoneBookeInterfaceManager"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 249
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 252
    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    return v0
.end method

.method static synthetic blacklist access$1102(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    return v0
.end method

.method static synthetic blacklist access$602(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    return p1
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    return v0
.end method

.method static synthetic blacklist access$702(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    return v0
.end method

.method private blacklist broadcastPhbStateChangedIntent(ZZ)V
    .locals 8
    .param p1, "isReady"    # Z
    .param p2, "isForceSendIntent"    # Z

    .line 643
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDispose:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 645
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 646
    const-string v0, "broadcastPhbStateChangedIntent, No active Phone will notfiy when dispose"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 647
    return-void

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    if-ne p1, v1, :cond_4

    .line 652
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 653
    .local v2, "subIds":[I
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 654
    aget v0, v2, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 657
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    if-gtz v0, :cond_3

    .line 658
    const-string v0, "broadcastPhbStateChangedIntent, mSubId <= 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 659
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    .line 660
    return-void

    .line 662
    .end local v2    # "subIds":[I
    :cond_3
    goto :goto_0

    .line 663
    :cond_4
    if-ne p2, v1, :cond_5

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    if-ne v2, v1, :cond_5

    .line 664
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 665
    .restart local v2    # "subIds":[I
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    .line 666
    aget v0, v2, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 669
    .end local v2    # "subIds":[I
    :cond_5
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    if-gtz v0, :cond_6

    .line 670
    const-string v0, "broadcastPhbStateChangedIntent, isReady == false and mSubId <= 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 671
    return-void

    .line 674
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 675
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    .line 676
    .local v2, "isUnlock":Z
    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v2, :cond_7

    goto :goto_1

    .line 682
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "ready"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    const-string v6, "subscription"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " sub id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 686
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 685
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 687
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 689
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 690
    .local v3, "bootIntent":Landroid/content/Intent;
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v4, "com.mediatek.simprocessor"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v4, "Broadcasting intent ACTION_PHB_STATE_CHANGED to package: simprocessor"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 696
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 698
    if-nez p1, :cond_8

    .line 699
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 701
    :cond_8
    return-void

    .line 677
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "bootIntent":Landroid/content/Intent;
    :cond_9
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastPhbStateChangedIntent, boot not completed, isUnlock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 678
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 679
    return-void
.end method

.method private blacklist mtkLogd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkRuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private blacklist mtkLoge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkRuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method private blacklist mtkLogi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkRuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private blacklist updatePhbStatus(IZ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "isSimLocked"    # Z

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhbStatus] status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSimLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPhbReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "isReady":Z
    const/4 v1, 0x0

    .line 709
    .local v1, "simLockedState":Z
    const-string v2, "ro.vendor.mtk_ril_mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c6m_1rild"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    const/4 v1, 0x0

    goto :goto_0

    .line 712
    :cond_0
    move v1, p2

    .line 714
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->isUsingGsmPhbReady(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 715
    if-ne p1, v3, :cond_1

    .line 716
    const/4 v0, 0x1

    goto :goto_1

    .line 717
    :cond_1
    if-nez p1, :cond_2

    .line 718
    const/4 v0, 0x0

    goto :goto_1

    .line 721
    :cond_2
    const-string v2, "[PhbStatus] not GSM PHB status"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 722
    return-void

    .line 725
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 726
    const/4 v0, 0x1

    goto :goto_1

    .line 727
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    .line 728
    const/4 v0, 0x0

    .line 736
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 737
    if-nez v1, :cond_6

    .line 738
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    if-nez v4, :cond_5

    .line 739
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 740
    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_2

    .line 742
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_2

    .line 745
    :cond_6
    const-string v3, "[PhbStatus] phb ready but sim is not ready."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 746
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 747
    invoke-direct {p0, v2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_2

    .line 750
    :cond_7
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    if-ne v4, v3, :cond_8

    .line 751
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 752
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 753
    invoke-direct {p0, v2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_2

    .line 755
    :cond_8
    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 758
    :goto_2
    return-void

    .line 731
    :cond_9
    const-string v2, "[PhbStatus] not C2K PHB status"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 732
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 4

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing MtkRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDispose:Z

    .line 259
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isCdma4GDualModeCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const-string v1, "dispose, reset operator numeric, name and country iso"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 267
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    if-ne v1, v0, :cond_2

    .line 268
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkRuimRecords Disposing set PHB unready mPendingPhbNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mPhbReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 270
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 271
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 272
    invoke-direct {p0, v2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 275
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    .line 276
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 284
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->dispose()V

    .line 285
    return-void
.end method

.method public blacklist getCarrierNameDisplayCondition()I
    .locals 4

    .line 446
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "spn":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 448
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierNameDisplayCondition uiccProfile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 451
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 453
    const-string v2, "getCarrierNameDisplayCondition, getOperatorBrandOverride is not null"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x1

    .local v2, "rule":I
    goto :goto_1

    .line 455
    .end local v2    # "rule":I
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCsimSpnDisplayCondition:Z

    if-nez v2, :cond_2

    .line 457
    const-string v2, "getCarrierNameDisplayCondition, no EF_SPN"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 458
    const/4 v2, 0x1

    .restart local v2    # "rule":I
    goto :goto_1

    .line 459
    .end local v2    # "rule":I
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 460
    const-string v2, "getCarrierNameDisplayCondition, show spn"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 461
    const/4 v2, 0x2

    .restart local v2    # "rule":I
    goto :goto_1

    .line 463
    .end local v2    # "rule":I
    :cond_3
    const-string v2, "getCarrierNameDisplayCondition, show plmn"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 464
    const/4 v2, 0x1

    .line 466
    .restart local v2    # "rule":I
    :goto_1
    return v2
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .locals 6

    .line 298
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 301
    return-object v0

    .line 304
    :cond_0
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMncLength:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMncLength:I

    if-eqz v2, :cond_1

    .line 305
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMncLength:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    :cond_1
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 308
    .local v2, "mcc":I
    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 311
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "mcc":I
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RuimRecords"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v0
.end method

.method public blacklist getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .locals 5
    .param p1, "enService"    # Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 493
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 494
    .local v0, "simServiceStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v2, "getSIMServiceStatus enService: "

    if-nez v1, :cond_0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParentApp = null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 496
    return-object v0

    .line 498
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParentApp.getType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 499
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 501
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v2, "getSIMServiceStatus mSimService[0]: "

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 502
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v4, :cond_3

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v1, v3

    const/16 v4, 0x30

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 506
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_0

    .line 507
    :cond_1
    aget-byte v1, v1, v3

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 509
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_0

    .line 512
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_0

    .line 514
    :cond_3
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 515
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v4, :cond_6

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEnableService[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v1, v1, v3

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    aget-byte v1, v1, v3

    const/4 v4, 0x1

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 523
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_0

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 526
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_0

    .line 529
    :cond_5
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 532
    :cond_6
    :goto_0
    return-object v0
.end method

.method protected blacklist handleFileUpdate(I)V
    .locals 2
    .param p1, "efid"    # I

    .line 829
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 830
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleFileUpdate(I)V

    .line 831
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "isRecordLoadResponse":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLoge(Ljava/lang/String;)V

    .line 329
    return-void

    .line 333
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v1, v2, :cond_9

    const/16 v2, 0x11

    if-eq v1, v2, :cond_7

    const/16 v2, 0x1f5

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1f8

    if-eq v1, v2, :cond_1

    .line 408
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 383
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 384
    .local v1, "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DBG]EVENT_PHB_READY ar:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 385
    if-eqz v1, :cond_b

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 386
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 387
    .local v2, "phbReadyState":[I
    const/4 v5, 0x0

    .line 388
    .local v5, "isSimLocked":Z
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    .line 389
    .local v6, "phoneId":I
    const/4 v7, 0x0

    .line 390
    .local v7, "curSimState":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v8

    move v7, v8

    .line 392
    if-eq v7, v3, :cond_3

    const/4 v3, 0x2

    if-ne v7, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 394
    .end local v5    # "isSimLocked":Z
    .local v3, "isSimLocked":Z
    :goto_1
    aget v4, v2, v4

    invoke-direct {p0, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updatePhbStatus(IZ)V

    .line 395
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updateIccFdnStatus()V

    .line 396
    .end local v2    # "phbReadyState":[I
    .end local v3    # "isSimLocked":Z
    .end local v6    # "phoneId":I
    .end local v7    # "curSimState":I
    goto/16 :goto_2

    .line 400
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT_DELAYED_SEND_PHB_CHANGE] isReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 402
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-direct {p0, v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 403
    goto/16 :goto_2

    .line 368
    :cond_5
    const-string v1, "Event EVENT_GET_EST_DONE Received"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 369
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 370
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 371
    const-string v2, "EVENT_GET_EST_DONE failed"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogi(Ljava/lang/String;)V

    .line 372
    goto/16 :goto_2

    .line 374
    :cond_6
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableService[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mEnableService.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updateIccFdnStatus()V

    .line 379
    goto/16 :goto_2

    .line 336
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_7
    const-string v1, "Event EVENT_GET_SST_DONE Received"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 338
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 339
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 340
    const-string v2, "EVENT_GET_SST_DONE failed"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogi(Ljava/lang/String;)V

    .line 341
    goto :goto_2

    .line 343
    :cond_8
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimService[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updateIccFdnStatus()V

    .line 349
    goto :goto_2

    .line 352
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 353
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 354
    .local v2, "localTemp":[Ljava/lang/String;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 355
    goto :goto_2

    .line 358
    :cond_a
    aget-object v4, v2, v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 359
    const/4 v4, 0x3

    aget-object v4, v2, v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 360
    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMyMobileNumber:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MIN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 363
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    nop

    .line 415
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "localTemp":[Ljava/lang/String;
    :cond_b
    :goto_2
    if-eqz v0, :cond_c

    .line 416
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->onRecordLoaded()V

    goto :goto_4

    .line 415
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 410
    :catch_0
    move-exception v1

    .line 412
    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "RuimRecords"

    const-string v3, "Exception parsing RUIM record"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    nop

    .end local v1    # "exc":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_c

    .line 416
    goto :goto_3

    .line 419
    :cond_c
    :goto_4
    return-void

    .line 415
    :goto_5
    if-eqz v0, :cond_d

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->onRecordLoaded()V

    .line 418
    :cond_d
    throw v1
.end method

.method protected blacklist handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 776
    if-nez p1, :cond_0

    .line 777
    const-string v0, "handleRefresh received without input"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 778
    return-void

    .line 781
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 782
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eq v0, v1, :cond_1

    .line 786
    return-void

    .line 789
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    .line 807
    const-string v0, "handleRefresh,callback to super"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 808
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 801
    :cond_2
    const-string v0, "handleRefresh with REFRESH_INIT_FULL_FILE_UPDATED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->handleFileUpdate(I)V

    .line 804
    goto :goto_0

    .line 797
    :cond_3
    const-string v0, "handleRefresh with SIM_REFRESH_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 798
    goto :goto_0

    .line 791
    :cond_4
    const-string v0, "handleRefresh with SIM_REFRESH_INIT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->handleFileUpdate(I)V

    .line 794
    nop

    .line 811
    :goto_0
    return-void
.end method

.method public blacklist isCdma4GDualModeCard()Z
    .locals 6

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 569
    .local v1, "values":[Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt v2, v5, :cond_0

    goto :goto_2

    .line 573
    :cond_0
    aget-object v2, v4, v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 575
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 577
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdma4GDualModeCard PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prop value= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    if-eqz v1, :cond_2

    array-length v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 579
    if-eqz v1, :cond_4

    .line 580
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "USIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "CSIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 580
    :goto_1
    return v3

    .line 583
    :cond_4
    return v3

    .line 570
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdma4GDualModeCard: invalid PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 571
    return v3
.end method

.method public blacklist isCdmaOnly()Z
    .locals 6

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 543
    .local v1, "values":[Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt v2, v5, :cond_0

    goto :goto_2

    .line 547
    :cond_0
    aget-object v2, v4, v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 549
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaOnly PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prop value= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    if-eqz v1, :cond_2

    array-length v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 553
    if-eqz v1, :cond_4

    .line 554
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "USIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 555
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "SIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 554
    :goto_1
    return v3

    .line 557
    :cond_4
    return v3

    .line 544
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaOnly: invalid PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 545
    return v3
.end method

.method public blacklist isPhbReady()Z
    .locals 9

    .line 603
    const-string v0, "false"

    .line 604
    .local v0, "strPhbReady":Ljava/lang/String;
    const-string v1, ""

    .line 605
    .local v1, "strAllSimState":Ljava/lang/String;
    const-string v2, ""

    .line 606
    .local v2, "strCurSimState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 608
    .local v3, "isSimLocked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[phbReady] Start mPhbReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    const-string v6, "true"

    const-string v7, "false"

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 611
    return v5

    .line 613
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->isUsingGsmPhbReady(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 614
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const-string v8, "vendor.gsm.sim.ril.phbready"

    invoke-static {v4, v8, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 617
    :cond_2
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const-string v8, "vendor.cdma.sim.ril.phbready"

    invoke-static {v4, v8, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_1
    const-string v4, "ro.vendor.mtk_ril_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "c6m_1rild"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 622
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 624
    :cond_3
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 626
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "values":[Ljava/lang/String;
    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    if-ltz v7, :cond_4

    array-length v8, v4

    if-ge v7, v8, :cond_4

    aget-object v8, v4, v7

    if-eqz v8, :cond_4

    .line 628
    aget-object v2, v4, v7

    .line 631
    .end local v4    # "values":[Ljava/lang/String;
    :cond_4
    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-nez v4, :cond_6

    .line 632
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v7

    :goto_3
    move v3, v4

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[phbReady] End strPhbReady: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", strAllSimState: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    move v5, v7

    :cond_7
    return v5
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method protected blacklist onAllRecordsLoaded()V
    .locals 4

    .line 423
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllRecordsLoaded, mParentApp.getType() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/16 v2, 0x11

    const/16 v3, 0x6f32

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 432
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f75

    const/16 v2, 0x1f5

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 435
    :cond_1
    :goto_0
    return-void
.end method

.method protected blacklist onGetImsiDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.cdma.icc.operator.mcc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRuimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 770
    const-string v0, "MtkRuimRecords: mImsiReadyRegistrants.notifyRegistrants"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 772
    :cond_1
    return-void
.end method

.method protected blacklist onLocked()V
    .locals 2

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRecordsRequested:Z

    .line 816
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 818
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mLockedRecordsReqReason:I

    if-eqz v0, :cond_0

    .line 819
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRecordsToLoad:I

    .line 820
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->onRecordLoaded()V

    .line 821
    return-void

    .line 824
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onLocked()V

    .line 825
    return-void
.end method

.method protected blacklist resetRecords()V
    .locals 0

    .line 289
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 290
    return-void
.end method

.method protected blacklist updateIccFdnStatus()V
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccFdnStatus mParentAPP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  getSIMServiceStatus(Phone.IccService.FDN)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 591
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  IccServiceStatus.ACTIVATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 595
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    if-ne v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 599
    :cond_0
    return-void
.end method
