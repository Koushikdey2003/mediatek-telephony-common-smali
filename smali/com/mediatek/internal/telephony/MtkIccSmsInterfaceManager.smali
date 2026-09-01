.class public Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "MtkIccSmsInterfaceManager.java"


# static fields
.field private static final blacklist CB_ACTIVATION_OFF:I = 0x0

.field private static final blacklist CB_ACTIVATION_ON:I = 0x1

.field private static final blacklist CB_ACTIVATION_UNKNOWN:I = -0x1

.field static final blacklist DBG:Z = true

.field private static final blacklist EVENT_GET_BROADCAST_ACTIVATION_DONE:I = 0x6a

.field private static final blacklist EVENT_GET_BROADCAST_CONFIG_CHANNEL_DONE:I = 0x6c

.field private static final blacklist EVENT_GET_BROADCAST_CONFIG_LANGUAGE_DONE:I = 0x6e

.field private static final blacklist EVENT_GET_SMSC_ADDRESS_BUNDLE_DONE:I = 0x71

.field private static final blacklist EVENT_GET_SMSC_ADDRESS_DONE:I = 0x70

.field private static final blacklist EVENT_GET_SMS_PARAMS:I = 0x67

.field private static final blacklist EVENT_GET_SMS_SIM_MEM_STATUS_DONE:I = 0x65

.field private static final blacklist EVENT_INSERT_TEXT_MESSAGE_TO_ICC_DONE:I = 0x66

.field private static final blacklist EVENT_LOAD_ONE_RECORD_DONE:I = 0x69

.field private static final blacklist EVENT_MTK_LOAD_DONE:I = 0x73

.field private static final blacklist EVENT_MTK_UPDATE_DONE:I = 0x74

.field private static final blacklist EVENT_REMOVE_BROADCAST_MSG_DONE:I = 0x6b

.field private static final blacklist EVENT_SET_BROADCAST_CONFIG_LANGUAGE_DONE:I = 0x6d

.field private static final blacklist EVENT_SET_ETWS_CONFIG_DONE:I = 0x6f

.field private static final blacklist EVENT_SET_SMSC_ADDRESS_DONE:I = 0x72

.field private static final blacklist EVENT_SET_SMS_PARAMS:I = 0x68

.field private static final blacklist EVENT_SIM_SMS_DELETE_DONE:I = 0x64

.field private static final blacklist EVENT_SMS_WIPE_DONE:I = 0x75

.field private static final blacklist INDEXT_SPLITOR:Ljava/lang/String; = ","

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkIccSmsInterfaceManager"

.field private static blacklist sConcatenatedRef:I


# instance fields
.field private blacklist mCurrentCellBroadcastActivation:I

.field private blacklist mInsertMessageSuccess:Z

.field private blacklist mInserted:Z

.field protected blacklist mMtkHandler:Landroid/os/Handler;

.field protected final blacklist mMtkLoadLock:Ljava/lang/Object;

.field protected final blacklist mMtkLock:Ljava/lang/Object;

.field protected blacklist mMtkSuccess:Z

.field private final blacklist mSimInsertLock:Ljava/lang/Object;

.field private blacklist mSimMemStatus:Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

.field private blacklist mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

.field private blacklist mSmsCbChannelConfig:Ljava/lang/String;

.field private blacklist mSmsCbLanguageConfig:Ljava/lang/String;

.field private blacklist mSmsParams:Lmediatek/telephony/MtkSmsParameters;

.field private blacklist mSmsParamsSuccess:Z

.field private blacklist mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

.field private blacklist mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mSmsWipedRsp:Z

.field private blacklist mSmscAddress:Ljava/lang/String;

.field private blacklist mSmscAddressBundle:Landroid/os/Bundle;

.field private blacklist smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

.field private blacklist smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 164
    const/16 v0, 0x1c8

    sput v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 497
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    .line 167
    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    invoke-direct {v0, v1, v2}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParams:Lmediatek/telephony/MtkSmsParameters;

    .line 171
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParamsSuccess:Z

    .line 173
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    .line 175
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 176
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbChannelConfig:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbLanguageConfig:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmscAddress:Ljava/lang/String;

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmscAddressBundle:Landroid/os/Bundle;

    .line 182
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;-><init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    .line 1131
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;-><init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

    .line 1980
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0
.end method

.method static synthetic blacklist access$1002(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/SmsRawData;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    return-object p1
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbChannelConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1102(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbChannelConfig:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbLanguageConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1202(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbLanguageConfig:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$1302(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmscAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmscAddressBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    return-object v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    return-object p1
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mInsertMessageSuccess:Z

    return v0
.end method

.method static synthetic blacklist access$502(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mInsertMessageSuccess:Z

    return p1
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0
.end method

.method static synthetic blacklist access$702(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mInserted:Z

    return p1
.end method

.method static synthetic blacklist access$802(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lmediatek/telephony/MtkSmsParameters;)Lmediatek/telephony/MtkSmsParameters;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Lmediatek/telephony/MtkSmsParameters;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParams:Lmediatek/telephony/MtkSmsParameters;

    return-object p1
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParamsSuccess:Z

    return p1
.end method

.method private static blacklist checkPhoneNumberCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1571
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist checkPhoneNumberInternal(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .line 1576
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1577
    return v0

    .line 1580
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1581
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkPhoneNumberCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1582
    nop

    .line 1580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1584
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1588
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return v0
.end method

.method private blacklist checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .line 1928
    new-instance v0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;-><init>(Landroid/content/Context;)V

    .line 1929
    .local v0, "dataOnlyCtrl":Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->checkPermission(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTddDataOnlyPermission, w/o permission, sentIntent = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1932
    if-nez p1, :cond_0

    .line 1933
    const-string v1, "checkTddDataOnlyPermission, can not notify APP"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1937
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    goto :goto_0

    .line 1938
    :catch_0
    move-exception v1

    .line 1939
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "checkTddDataOnlyPermission, CanceledException happened when send sms fail with sentIntent"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1943
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1945
    :cond_1
    return v2
.end method

.method private blacklist checkTddDataOnlyPermission(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 1949
    .local p1, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;-><init>(Landroid/content/Context;)V

    .line 1950
    .local v0, "dataOnlyCtrl":Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->checkPermission(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTddDataOnlyPermission, w/o permission, sentIntents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1953
    if-nez p1, :cond_0

    .line 1954
    const-string v1, "checkTddDataOnlyPermission, can not notify APP"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1957
    :cond_0
    const/4 v1, 0x0

    .line 1958
    .local v1, "si":Landroid/app/PendingIntent;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1959
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1960
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    move-object v1, v5

    .line 1961
    if-nez v1, :cond_1

    .line 1962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTddDataOnlyPermission, can not notify APP for i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1964
    :cond_1
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1970
    .end local v1    # "si":Landroid/app/PendingIntent;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_2

    .line 1967
    :catch_0
    move-exception v1

    .line 1968
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "checkTddDataOnlyPermission, CanceledException happened when send sms fail with sentIntent"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1972
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 1974
    :cond_3
    return v2
.end method

.method private blacklist filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 1639
    const/4 v0, 0x0

    .line 1640
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method private static blacklist getNextConcatRef()I
    .locals 2

    .line 1567
    sget v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sConcatenatedRef:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sConcatenatedRef:I

    return v0
.end method

.method private static blacklist isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .line 1655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v0, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1661
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1667
    invoke-static {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method private static blacklist isValidParameters(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 1681
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 1685
    :cond_0
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "IccSmsInterfaceManagerEx"

    if-nez v1, :cond_3

    .line 1686
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1687
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1688
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_1

    .line 1690
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    .line 1686
    .end local v4    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1695
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid destinationAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    return v2

    .line 1699
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1700
    const-string v0, "Invalid destinationAddress"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    return v2

    .line 1703
    :cond_4
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_5

    goto :goto_3

    .line 1708
    :cond_5
    return v0

    .line 1704
    :cond_6
    :goto_3
    const-string v0, "Invalid message body"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    return v2

    .line 1682
    :cond_7
    :goto_4
    return v0
.end method

.method private static blacklist isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "da"    # Ljava/lang/String;

    .line 1719
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, "encodeAddress":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1721
    return v1

    .line 1723
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public blacklist activateCellBroadcastSms(Z)Z
    .locals 3
    .param p1, "activate"    # Z

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateCellBroadcastSms activate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Activate CellBroadcast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 685
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 688
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v2, 0x0

    .line 693
    .local v2, "validSmsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 694
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 695
    .local v4, "ba":[B
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    if-nez v5, :cond_0

    .line 696
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 699
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 701
    new-instance v5, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v4    # "ba":[B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validSmsCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 708
    return-object v1
.end method

.method public blacklist copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 1288
    .local p4, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyTextMessageToIccCard, message count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1291
    const-string v1, "Copying message to USIM/SIM"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1292
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x16

    move-object v10, p1

    invoke-virtual {v1, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1294
    return v3

    .line 1299
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v1

    .line 1301
    .local v1, "memStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    if-nez v1, :cond_1

    .line 1302
    const-string v4, "Fail to get SIM memory status"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1303
    return v3

    .line 1305
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->getUnused()I

    move-result v3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1306
    const-string v3, "SIM memory is not enough"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1307
    const/4 v3, 0x7

    return v3

    .line 1312
    :cond_2
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v3

    return v3
.end method

.method public blacklist getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllMessagesFromEF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Reading messages from Icc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 657
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_1

    .line 658
    const-string v2, "MtkIccSmsInterfaceManager"

    const-string v3, "Cannot load Sms records. No icc card?"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 660
    monitor-exit v0

    return-object v2

    .line 663
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 664
    .local v2, "response":Landroid/os/Message;
    const/16 v3, 0x6f3c

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    goto :goto_0

    .line 670
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to load from the Icc"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 673
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "response":Landroid/os/Message;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0

    .line 673
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getAllMessagesFromIccEfByMode(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllMessagesFromIccEfByMode, mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1195
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_5

    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    goto :goto_1

    .line 1201
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from Icc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1210
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1212
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 1213
    .local v3, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v3, :cond_3

    .line 1214
    const-string v1, "MtkIccSmsInterfaceManager"

    const-string v4, "Cannot load Sms records. No icc card?"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1217
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit v2

    return-object v0

    .line 1219
    :cond_2
    monitor-exit v2

    return-object v0

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v4, 0x73

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1223
    .local v0, "response":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 1224
    const-string v1, "MtkIccSmsInterfaceManager"

    const-string v4, "getAllMessagesFromIccEfByMode. In the case of GSM phone"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    move-object v1, v3

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;

    .line 1226
    .local v1, "sfh":Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;
    const/16 v4, 0x6f3c

    invoke-virtual {v1, v4, p2, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLoadLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    goto :goto_0

    .line 1232
    :catch_0
    move-exception v4

    .line 1233
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1237
    .end local v1    # "sfh":Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit v2

    return-object v1

    .line 1238
    .end local v0    # "response":Landroid/os/Message;
    .end local v3    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1196
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllMessagesFromIccEfByMode wrong mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1197
    return-object v0
.end method

.method public blacklist getCellBroadcastLangs()Ljava/lang/String;
    .locals 5

    .line 1794
    const-string v0, "getCellBroadcastLangs"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1796
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1797
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1799
    .local v1, "response":Landroid/os/Message;
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbLanguageConfig:Ljava/lang/String;

    .line 1800
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1801
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getGsmBroadcastLangs(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1807
    goto :goto_0

    .line 1805
    :catch_0
    move-exception v3

    .line 1806
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to get CB config"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1809
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbLanguageConfig:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 1810
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getCellBroadcastRanges()Ljava/lang/String;
    .locals 4

    .line 1755
    const-string v0, "getCellBroadcastChannels"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1760
    .local v1, "response":Landroid/os/Message;
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbChannelConfig:Ljava/lang/String;

    .line 1761
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getGsmBroadcastConfig(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1767
    goto :goto_0

    .line 1765
    :catch_0
    move-exception v2

    .line 1766
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "interrupted while trying to get CB config"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1768
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1770
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsCbChannelConfig:Ljava/lang/String;

    return-object v0

    .line 1768
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getMessageFromIccEf(Ljava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 1164
    const-string v0, "getMessageFromIccEf"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Reading messages from SIM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1171
    return-object v1

    .line 1174
    :cond_0
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    .line 1175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1178
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_1

    .line 1179
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1180
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f3c

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v3

    .line 1185
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1188
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "response":Landroid/os/Message;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    return-object v0

    .line 1188
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getScAddress()Ljava/lang/String;
    .locals 4

    .line 1861
    const-string v0, "getScAddress"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1863
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1865
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1871
    goto :goto_0

    .line 1869
    :catch_0
    move-exception v2

    .line 1870
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "interrupted while trying to get SMSC address"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1872
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1874
    const-string v0, "getScAddress: exit"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmscAddress:Ljava/lang/String;

    return-object v0

    .line 1872
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getScAddressWithErrorCode()Landroid/os/Bundle;
    .locals 4

    .line 1884
    const-string v0, "getScAddressWithErrorCode"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1885
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1886
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1888
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1894
    goto :goto_0

    .line 1892
    :catch_0
    move-exception v2

    .line 1893
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "interrupted while trying to get SMSC address and error code"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1895
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1897
    const-string v0, "getScAddressWithErrorCode error code done"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmscAddressBundle:Landroid/os/Bundle;

    return-object v0

    .line 1895
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getSmsParameters(Ljava/lang/String;)Lmediatek/telephony/MtkSmsParameters;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1242
    const-string v0, "getSmsParameters"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1243
    const-string v0, "Get SMS parametner on SIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const/4 v0, 0x0

    return-object v0

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1250
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1251
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getSmsParameters(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v3

    .line 1256
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to get sms params"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1259
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParams:Lmediatek/telephony/MtkSmsParameters;

    monitor-exit v0

    return-object v3

    .line 1260
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1535
    const-string v0, "getSmsSimMemoryStatus"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1536
    const-string v0, "Get SMS SIM Card Memory Status from RUIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1539
    return-object v1

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1542
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1544
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1545
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1546
    .local v3, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1547
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getSmsRuimMemoryStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 1549
    :cond_1
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getSmsSimMemoryStatus(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    goto :goto_1

    .line 1554
    :catch_0
    move-exception v4

    .line 1555
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "interrupted while trying to get SMS SIM Card Memory Status from SIM"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1557
    .end local v2    # "response":Landroid/os/Message;
    .end local v3    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1559
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    if-eqz v0, :cond_2

    .line 1560
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    return-object v0

    .line 1563
    :cond_2
    return-object v1

    .line 1557
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist insertRawMessageToIccCard(Ljava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .line 1495
    const-string v0, "insertRawMessageToIccCard"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1496
    const-string v0, "insertRaw insert message into SIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1500
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1504
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v1, v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1505
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const-string v4, ""

    iput-object v4, v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 1506
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v4, 0x74

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1509
    .local v3, "response":Landroid/os/Message;
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1510
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1511
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1510
    invoke-interface {v4, p2, v5, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1513
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p2, p3, v3}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(I[BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1520
    goto :goto_1

    .line 1518
    :catch_0
    move-exception v4

    .line 1519
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "insertRaw interrupted while trying to update by index"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1521
    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1523
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    if-ne v0, v1, :cond_2

    .line 1524
    const-string v0, "insertRaw message inserted"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1526
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1529
    :cond_2
    const-string v0, "insertRaw pdu insert fail"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1531
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet2:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1521
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 33
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 1318
    .local p4, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    const-string v0, "insertTextMessageToIccCard"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1319
    const-string v0, "insertText insert message into SIM"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1320
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x16

    move-object/from16 v10, p1

    invoke-virtual {v0, v2, v1, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1323
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1326
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 1327
    .local v15, "msgCount":I
    const/4 v0, 0x1

    .line 1329
    .local v0, "isDeliverPdu":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertText msgCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1331
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const-string v3, ""

    iput-object v3, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 1333
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v17

    .line 1334
    .local v17, "memStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    if-eqz v17, :cond_16

    .line 1335
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->getUnused()I

    move-result v2

    .line 1336
    .local v2, "unused":I
    const/4 v3, 0x7

    if-ge v2, v15, :cond_1

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertText SIM mem is not enough ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1338
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v3, v1, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1339
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v1

    .line 1341
    .end local v2    # "unused":I
    :cond_1
    nop

    .line 1347
    invoke-static/range {p2 .. p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkPhoneNumberInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1348
    const-string v2, "insertText invalid sc address"

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1349
    const/4 v2, 0x0

    move-object/from16 v26, v2

    .end local p2    # "scAddress":Ljava/lang/String;
    .local v2, "scAddress":Ljava/lang/String;
    goto :goto_0

    .line 1347
    .end local v2    # "scAddress":Ljava/lang/String;
    .restart local p2    # "scAddress":Ljava/lang/String;
    :cond_2
    move-object/from16 v26, p2

    .line 1352
    .end local p2    # "scAddress":Ljava/lang/String;
    .local v26, "scAddress":Ljava/lang/String;
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkPhoneNumberInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1353
    const-string v1, "insertText invalid address"

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1354
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/16 v2, 0x8

    iput v2, v1, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1355
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v1

    .line 1358
    :cond_3
    if-eq v9, v1, :cond_7

    const/4 v2, 0x3

    if-ne v9, v2, :cond_4

    goto :goto_2

    .line 1361
    :cond_4
    const/4 v2, 0x5

    if-eq v9, v2, :cond_6

    if-ne v9, v3, :cond_5

    goto :goto_1

    .line 1365
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertText invalid status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1366
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v1, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1367
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v1

    .line 1362
    :cond_6
    :goto_1
    const-string v2, "insertText to encode submit pdu"

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1363
    const/4 v0, 0x0

    move/from16 v27, v0

    goto :goto_3

    .line 1359
    :cond_7
    :goto_2
    const-string v2, "insertText to encode delivery pdu"

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1360
    const/4 v0, 0x1

    move/from16 v27, v0

    .line 1369
    .end local v0    # "isDeliverPdu":Z
    .local v27, "isDeliverPdu":Z
    :goto_3
    const-string v0, "insertText params check pass"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1371
    const/4 v0, 0x2

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 1372
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->writeTextMessageToRuim(Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v0

    return-object v0

    .line 1376
    :cond_8
    const/4 v0, 0x0

    .line 1377
    .local v0, "encoding":I
    new-array v2, v15, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1378
    .local v2, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v3, 0x0

    move/from16 v32, v3

    move v3, v0

    move/from16 v0, v32

    .local v0, "i":I
    .local v3, "encoding":I
    :goto_4
    if-ge v0, v15, :cond_b

    .line 1379
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1381
    aget-object v4, v2, v0

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v3, v4, :cond_a

    if-eqz v3, :cond_9

    if-ne v3, v1, :cond_a

    .line 1384
    :cond_9
    aget-object v4, v2, v0

    iget v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1378
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1388
    .end local v0    # "i":I
    :cond_b
    const-string v0, "insertText create & insert pdu start..."

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1389
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_5
    if-ge v4, v15, :cond_14

    .line 1390
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mInsertMessageSuccess:Z

    if-nez v0, :cond_c

    if-lez v4, :cond_c

    .line 1391
    const-string v0, "insertText last message insert fail"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1392
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1393
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1396
    :cond_c
    const/4 v0, -0x1

    .line 1397
    .local v0, "singleShiftId":I
    const/4 v5, -0x1

    .line 1398
    .local v5, "lockingShiftId":I
    aget-object v6, v2, v4

    iget v6, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1399
    .local v6, "language":I
    move v11, v3

    .line 1401
    .local v11, "encoding_detail":I
    if-ne v3, v1, :cond_f

    .line 1402
    aget-object v12, v2, v4

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-lez v12, :cond_d

    aget-object v12, v2, v4

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_d

    .line 1403
    aget-object v12, v2, v4

    iget v0, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1404
    aget-object v12, v2, v4

    iget v5, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1405
    const/16 v11, 0xd

    move/from16 v28, v5

    move/from16 v29, v11

    move v5, v0

    goto :goto_6

    .line 1408
    :cond_d
    aget-object v12, v2, v4

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_e

    .line 1409
    aget-object v12, v2, v4

    iget v5, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1410
    const/16 v11, 0xc

    move/from16 v28, v5

    move/from16 v29, v11

    move v5, v0

    goto :goto_6

    .line 1412
    :cond_e
    aget-object v12, v2, v4

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-lez v12, :cond_f

    .line 1413
    aget-object v12, v2, v4

    iget v0, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1414
    const/16 v11, 0xb

    move/from16 v28, v5

    move/from16 v29, v11

    move v5, v0

    goto :goto_6

    .line 1419
    :cond_f
    move/from16 v28, v5

    move/from16 v29, v11

    move v5, v0

    .end local v0    # "singleShiftId":I
    .end local v11    # "encoding_detail":I
    .local v5, "singleShiftId":I
    .local v28, "lockingShiftId":I
    .local v29, "encoding_detail":I
    :goto_6
    const/4 v0, 0x0

    .line 1420
    .local v0, "smsHeader":[B
    if-le v15, v1, :cond_10

    .line 1421
    const-string v11, "insertText create pdu header for concat-message"

    invoke-virtual {v7, v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1422
    const/4 v11, -0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getNextConcatRef()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v4, 0x1

    move v14, v15

    move/from16 v30, v15

    .end local v15    # "msgCount":I
    .local v30, "msgCount":I
    move v15, v5

    move/from16 v16, v28

    invoke-static/range {v11 .. v16}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    move-object v11, v0

    goto :goto_7

    .line 1420
    .end local v30    # "msgCount":I
    .restart local v15    # "msgCount":I
    :cond_10
    move/from16 v30, v15

    .end local v15    # "msgCount":I
    .restart local v30    # "msgCount":I
    move-object v11, v0

    .line 1426
    .end local v0    # "smsHeader":[B
    .local v11, "smsHeader":[B
    :goto_7
    if-eqz v27, :cond_12

    .line 1427
    nop

    .line 1429
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v12

    check-cast v20, Ljava/lang/String;

    .line 1428
    move-object/from16 v18, v26

    move-object/from16 v19, p3

    move-object/from16 v21, v11

    move-wide/from16 v22, p6

    move/from16 v24, v29

    move/from16 v25, v6

    invoke-static/range {v18 .. v25}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    move-result-object v12

    .line 1431
    .local v12, "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    if-eqz v12, :cond_11

    .line 1432
    iget-object v13, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1433
    :try_start_0
    iget-object v14, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v14, v14, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v15, v12, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 1434
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v12, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 1435
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    move-object/from16 v31, v2

    const/16 v2, 0x66

    .end local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v31, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1433
    invoke-interface {v14, v9, v15, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1439
    :try_start_2
    const-string v0, "insertText wait until the pdu be wrote into the SIM"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1440
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1445
    nop

    .line 1446
    :try_start_3
    monitor-exit v13

    .line 1452
    .end local v12    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    goto :goto_9

    .line 1441
    .restart local v12    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "insertText fail to insert pdu"

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1443
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/4 v2, 0x1

    iput v2, v1, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1444
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    monitor-exit v13

    return-object v1

    .line 1446
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catchall_0
    move-exception v0

    move-object/from16 v31, v2

    .end local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_8
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 1448
    .end local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_11
    const-string v0, "insertText fail to create deliver pdu"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1449
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/4 v1, 0x1

    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1450
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1453
    .end local v12    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    :cond_12
    move-object/from16 v31, v2

    .line 1455
    .end local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v25, -0x1

    .line 1454
    move-object/from16 v18, v26

    move-object/from16 v19, p3

    move-object/from16 v22, v11

    move/from16 v23, v29

    move/from16 v24, v6

    invoke-static/range {v18 .. v25}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1457
    .local v1, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v1, :cond_13

    .line 1458
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1459
    :try_start_4
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1460
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1461
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    .line 1462
    const/16 v15, 0x66

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1459
    invoke-interface {v0, v9, v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1465
    :try_start_5
    const-string v0, "insertText wait until the pdu be wrote into the SIM"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1466
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1471
    nop

    .line 1472
    :try_start_6
    monitor-exit v2

    .line 1389
    .end local v1    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v5    # "singleShiftId":I
    .end local v6    # "language":I
    .end local v11    # "smsHeader":[B
    .end local v28    # "lockingShiftId":I
    .end local v29    # "encoding_detail":I
    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v30

    move-object/from16 v2, v31

    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1467
    .restart local v1    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v5    # "singleShiftId":I
    .restart local v6    # "language":I
    .restart local v11    # "smsHeader":[B
    .restart local v28    # "lockingShiftId":I
    .restart local v29    # "encoding_detail":I
    :catch_1
    move-exception v0

    .line 1468
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v12, "insertText fail to insert pdu"

    invoke-virtual {v7, v12}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1469
    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/4 v13, 0x1

    iput v13, v12, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1470
    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    monitor-exit v2

    return-object v12

    .line 1472
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1474
    :cond_13
    const-string v0, "insertText fail to create submit pdu"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1475
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/4 v2, 0x1

    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1476
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1389
    .end local v1    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v5    # "singleShiftId":I
    .end local v6    # "language":I
    .end local v11    # "smsHeader":[B
    .end local v28    # "lockingShiftId":I
    .end local v29    # "encoding_detail":I
    .end local v30    # "msgCount":I
    .end local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v15    # "msgCount":I
    :cond_14
    move-object/from16 v31, v2

    move/from16 v30, v15

    move v2, v1

    .line 1480
    .end local v2    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v4    # "i":I
    .end local v15    # "msgCount":I
    .restart local v30    # "msgCount":I
    .restart local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const-string v0, "insertText create & insert pdu end"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1482
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mInsertMessageSuccess:Z

    if-ne v0, v2, :cond_15

    .line 1483
    const-string v0, "insertText all messages inserted"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1484
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1485
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1488
    :cond_15
    const-string v0, "insertText pdu insert fail"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1489
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1490
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0

    .line 1342
    .end local v3    # "encoding":I
    .end local v26    # "scAddress":Ljava/lang/String;
    .end local v27    # "isDeliverPdu":Z
    .end local v30    # "msgCount":I
    .end local v31    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v0, "isDeliverPdu":Z
    .restart local v15    # "msgCount":I
    .restart local p2    # "scAddress":Ljava/lang/String;
    :cond_16
    move v2, v1

    const-string v1, "insertText fail to get SIM mem status"

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1343
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    iput v2, v1, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1344
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->smsInsertRet:Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v1
.end method

.method public blacklist isSmsReady()Z
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isSmsReady()Z

    move-result v0

    .line 942
    .local v0, "isReady":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 943
    return v0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 758
    const-string v0, "MtkIccSmsInterfaceManager"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 764
    const-string v0, "MtkIccSmsInterfaceManager"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method protected blacklist makeSmsRecordData(I[B)[B
    .locals 6
    .param p1, "status"    # I
    .param p2, "pdu"    # [B

    .line 720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/16 v1, 0xb0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 721
    new-array v0, v1, [B

    .local v0, "data":[B
    goto :goto_0

    .line 723
    .end local v0    # "data":[B
    :cond_0
    const/16 v0, 0xff

    new-array v0, v0, [B

    .line 727
    .restart local v0    # "data":[B
    :goto_0
    and-int/lit8 v3, p1, 0x7

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM-makeSmsRecordData: pdu size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 730
    array-length v3, p2

    if-ne v3, v1, :cond_1

    .line 731
    const-string v1, "ISIM-makeSmsRecordData: sim pdu"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 733
    :try_start_0
    array-length v1, p2

    sub-int/2addr v1, v2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "ISIM-makeSmsRecordData: out of bounds, sim pdu"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 736
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    goto :goto_2

    .line 738
    :cond_1
    const-string v1, "ISIM-makeSmsRecordData: normal pdu"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 740
    :try_start_1
    array-length v1, p2

    invoke-static {p2, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    goto :goto_2

    .line 741
    :catch_1
    move-exception v1

    .line 742
    .restart local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "ISIM-makeSmsRecordData: out of bounds, normal pdu"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 748
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    array-length v1, p2

    add-int/2addr v1, v2

    .local v1, "j":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 749
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 752
    .end local v1    # "j":I
    :cond_2
    return-object v0
.end method

.method public blacklist queryCellBroadcastSmsActivation()Z
    .locals 5

    .line 1735
    const-string v0, "queryCellBroadcastSmsActivation"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1740
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1741
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1742
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getGsmBroadcastActivation(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1748
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v3

    .line 1747
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to get CB activation"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1749
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1751
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    return v0

    .line 1749
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist removeCellBroadcastMsg(II)Z
    .locals 5
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCellBroadcastMsg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1819
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1820
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1821
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->removeCellBroadcastMsg(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1827
    goto :goto_0

    .line 1825
    :catch_0
    move-exception v3

    .line 1826
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to remove CB msg"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1828
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1830
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    return v0

    .line 1828
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected blacklist sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "isForVvm"    # Z

    .line 580
    const-string v0, "sendDataMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 582
    const-string v0, "send_data"

    invoke-static {p2, v0, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    return-void

    .line 586
    :cond_0
    invoke-direct {p0, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 588
    return-void

    .line 591
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 593
    .local v0, "context":Landroid/content/Context;
    invoke-super/range {p0 .. p8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 595
    return-void
.end method

.method public blacklist sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "checkPermission"    # Z

    .line 798
    move-object v0, p0

    const-string v1, "MtkIccSmsInterfaceManager"

    const-string v2, "Enter IccSmsInterfaceManager.sendDataWithOriginalPort"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    if-eqz p9, :cond_1

    .line 800
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x2

    const-string v2, "SMS"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData: data=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' sentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " deliveryIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p8

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_0
    move-object/from16 v2, p7

    move-object/from16 v12, p8

    .line 808
    :goto_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v13, p1

    invoke-virtual {v1, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 810
    return-void

    .line 799
    :cond_1
    move-object v13, p1

    move-object/from16 v2, p7

    move-object/from16 v12, p8

    .line 813
    :cond_2
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v3, v1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 815
    return-void
.end method

.method public blacklist sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 905
    .local p5, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v1, "SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    .line 911
    .local v2, "rData":Lcom/android/internal/telephony/SmsRawData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMultipartData:data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 912
    .end local v2    # "rData":Lcom/android/internal/telephony/SmsRawData;
    goto :goto_0

    .line 914
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v12, p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    return-void

    .line 918
    :cond_1
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object/from16 v9, p5

    check-cast v9, Ljava/util/ArrayList;

    move-object/from16 v10, p6

    check-cast v10, Ljava/util/ArrayList;

    move-object/from16 v11, p7

    check-cast v11, Ljava/util/ArrayList;

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 921
    return-void
.end method

.method public blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .param p9, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    .line 847
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v0, "sendMultipartTextMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 855
    invoke-static {p3, p5, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    return-void

    .line 859
    :cond_0
    invoke-direct {p0, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 861
    return-void

    .line 864
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 866
    .local v0, "context":Landroid/content/Context;
    invoke-super/range {p0 .. p10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    .line 869
    return-void
.end method

.method public blacklist sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p5, "encodingType"    # I
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 1008
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v11, p5

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V

    .line 1012
    return-void
.end method

.method public blacklist sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    .locals 23
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p5, "extraParams"    # Landroid/os/Bundle;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 1073
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p6

    move-object/from16 v12, p7

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    move-object/from16 v13, p1

    invoke-virtual {v0, v2, v1, v13}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    return-void

    .line 1082
    :cond_0
    invoke-direct {v14, v15}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1083
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1084
    return-void

    .line 1087
    :cond_1
    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1088
    .end local p2    # "destAddr":Ljava/lang/String;
    .local v16, "destAddr":Ljava/lang/String;
    const/4 v0, -0x1

    const-string v1, "validity_period"

    move-object/from16 v11, p5

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1090
    .local v17, "validityPeriod":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1091
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_5

    .line 1094
    move-object/from16 v9, p4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    .local v0, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v1

    const/16 v2, 0x2f

    const/16 v3, 0x20

    if-eqz v1, :cond_2

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v10, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_1

    .line 1098
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v10, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1099
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1098
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1102
    .end local v0    # "singlePart":Ljava/lang/String;
    .local v18, "singlePart":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 1103
    .local v0, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_3

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_3

    .line 1104
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    goto :goto_2

    .line 1107
    :cond_3
    move-object/from16 v19, v0

    .end local v0    # "singleSentIntent":Landroid/app/PendingIntent;
    .local v19, "singleSentIntent":Landroid/app/PendingIntent;
    :goto_2
    const/4 v0, 0x0

    .line 1108
    .local v0, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_4

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_4

    .line 1109
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    goto :goto_3

    .line 1113
    :cond_4
    move-object/from16 v20, v0

    .end local v0    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    .local v20, "singleDeliveryIntent":Landroid/app/PendingIntent;
    :goto_3
    const/4 v2, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, p8

    move/from16 v9, v21

    move/from16 v21, v10

    .end local v10    # "i":I
    .local v21, "i":I
    move/from16 v10, v22

    move/from16 v11, v17

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 1091
    .end local v18    # "singlePart":Ljava/lang/String;
    .end local v19    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v20    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    add-int/lit8 v10, v21, 0x1

    move-object/from16 v11, p5

    .end local v21    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_0

    .line 1118
    .end local v10    # "i":I
    :cond_5
    return-void

    .line 1121
    :cond_6
    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, v17

    move-wide/from16 v12, v18

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V

    .line 1125
    return-void
.end method

.method public blacklist sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V
    .locals 22
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "priority"    # I
    .param p9, "expectMore"    # Z
    .param p10, "validityPeriod"    # I
    .param p11, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZII)V"
        }
    .end annotation

    .line 2125
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SEND_SMS"

    const-string v6, "Sending SMS message"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x14

    move-object/from16 v15, p1

    invoke-virtual {v4, v6, v5, v15}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2131
    return-void

    .line 2134
    :cond_0
    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2135
    const-string v4, "TDD data only and w/o permission!"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2136
    return-void

    .line 2139
    :cond_1
    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2141
    .end local p2    # "destAddr":Ljava/lang/String;
    .local v4, "destAddr":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_6

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2142
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2145
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2146
    .local v6, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v7

    const/16 v8, 0x2f

    const/16 v9, 0x20

    if-eqz v7, :cond_2

    .line 2147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2149
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2150
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2149
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2153
    :goto_1
    const/4 v7, 0x0

    .line 2154
    .local v7, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_3

    .line 2155
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/app/PendingIntent;

    move-object/from16 v20, v7

    goto :goto_2

    .line 2158
    :cond_3
    move-object/from16 v20, v7

    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    .local v20, "singleSentIntent":Landroid/app/PendingIntent;
    :goto_2
    const/4 v7, 0x0

    .line 2159
    .local v7, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_4

    .line 2160
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/app/PendingIntent;

    move-object/from16 v21, v7

    goto :goto_3

    .line 2163
    :cond_4
    move-object/from16 v21, v7

    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    .local v21, "singleDeliveryIntent":Landroid/app/PendingIntent;
    :goto_3
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    const/4 v14, 0x0

    move-object v8, v4

    move-object/from16 v9, p3

    move-object v10, v6

    move/from16 v11, p11

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v15, p1

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    invoke-virtual/range {v7 .. v19}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 2142
    .end local v6    # "singlePart":Ljava/lang/String;
    .end local v20    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v21    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2168
    .end local v5    # "i":I
    :cond_5
    return-void

    .line 2171
    :cond_6
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v7, v5

    check-cast v7, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    move-object v12, v2

    check-cast v12, Ljava/util/ArrayList;

    move-object v13, v3

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object v8, v4

    move-object/from16 v9, p3

    move/from16 v11, p11

    move-object/from16 v15, p1

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    invoke-virtual/range {v7 .. v19}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 2176
    return-void
.end method

.method public blacklist sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 623
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    const-string v1, "TDD data only and w/o permission!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 627
    return-void

    .line 630
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 632
    return-void
.end method

.method public blacklist sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 599
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 601
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const-string v1, "TDD data only and w/o permission!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 603
    return-void

    .line 606
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 607
    return-void
.end method

.method protected blacklist sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "priority"    # I
    .param p9, "expectMore"    # Z
    .param p10, "validityPeriod"    # I
    .param p11, "isForVvm"    # Z
    .param p12, "messageId"    # J

    .line 533
    const-string v0, "sendTextMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 535
    invoke-static {p2, p4, p5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    return-void

    .line 539
    :cond_0
    invoke-direct {p0, p5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 541
    return-void

    .line 544
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    .local v0, "context":Landroid/content/Context;
    invoke-super/range {p0 .. p13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V

    .line 549
    return-void
.end method

.method public blacklist sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "encodingType"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z

    .line 975
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v11, p5

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V

    .line 978
    return-void
.end method

.method public blacklist sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "extraParams"    # Landroid/os/Bundle;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z

    .line 1034
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    move-object/from16 v15, p1

    invoke-virtual {v0, v2, v1, v15}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    return-void

    .line 1043
    :cond_0
    const/4 v0, -0x1

    const-string v1, "validity_period"

    move-object/from16 v12, p5

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1044
    .local v16, "validityPeriod":I
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v10, v16

    move-wide/from16 v12, v17

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V

    .line 1047
    return-void
.end method

.method public blacklist sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V
    .locals 17
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "priority"    # I
    .param p9, "expectMore"    # Z
    .param p10, "validityPeriod"    # I
    .param p11, "encodingType"    # I

    .line 2054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x14

    move-object/from16 v15, p1

    invoke-virtual {v1, v3, v2, v15}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2060
    return-void

    .line 2063
    :cond_0
    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2064
    const-string v2, "TDD data only and w/o permission!"

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2065
    return-void

    .line 2068
    :cond_1
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v4, v2

    check-cast v4, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p11

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p1

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-virtual/range {v4 .. v16}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 2072
    return-void
.end method

.method protected blacklist setCellBroadcastActivation(Z)Z
    .locals 3
    .param p1, "activate"    # Z

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling proprietary setCellBroadcastActivation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1986
    move v0, p1

    .line 1990
    .local v0, "newActivationState":I
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    if-eq v1, v0, :cond_0

    .line 1991
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    goto :goto_0

    .line 1993
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSuccess:Z

    .line 1996
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSuccess:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    if-eq v1, v0, :cond_1

    .line 1997
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    .line 1998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentCellBroadcastActivation change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2001
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSuccess:Z

    return v1
.end method

.method public blacklist setCellBroadcastLangs(Ljava/lang/String;)Z
    .locals 5
    .param p1, "lang"    # Ljava/lang/String;

    .line 1774
    const-string v0, "setCellBroadcastLangs"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1779
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1780
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1781
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setGsmBroadcastLangs(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1787
    goto :goto_0

    .line 1785
    :catch_0
    move-exception v3

    .line 1786
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to get CB config"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1788
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1790
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    return v0

    .line 1788
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist setEtwsConfig(I)Z
    .locals 5
    .param p1, "mode"    # I

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setEtwsConfig("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1835
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Set Etws Config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1839
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1841
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1842
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1843
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setEtws(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    goto :goto_0

    .line 1847
    :catch_0
    move-exception v3

    .line 1848
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to set ETWS config"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1850
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1852
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    return v0

    .line 1850
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist setScAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 1909
    const-string v0, "setScAddressUsingSubId"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1912
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1914
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1915
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1918
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1921
    goto :goto_0

    .line 1919
    :catch_0
    move-exception v2

    .line 1920
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "interrupted while trying to set SMSC address"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1922
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScAddressUsingSubId result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1924
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    return v0

    .line 1922
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist setSmsMemoryStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmsMemoryStatus: set storage status -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->setSmsMemoryStatus(Z)V

    .line 932
    return-void
.end method

.method public blacklist setSmsParameters(Ljava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "params"    # Lmediatek/telephony/MtkSmsParameters;

    .line 1264
    const-string v0, "setSmsParameters"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1265
    const-string v0, "Set SMS parametner on SIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1268
    return v1

    .line 1270
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParamsSuccess:Z

    .line 1271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1272
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1273
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1274
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setSmsParameters(Lmediatek/telephony/MtkSmsParameters;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    goto :goto_0

    .line 1278
    :catch_0
    move-exception v3

    .line 1279
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "interrupted while trying to get sms params"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1281
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1282
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsParamsSuccess:Z

    return v0

    .line 1281
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected blacklist writeTextMessageToRuim(Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 1597
    .local p2, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    .line 1598
    .local v0, "insertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    .line 1600
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1601
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkSuccess:Z

    if-nez v4, :cond_0

    .line 1602
    const-string v1, "[copyText Exception happened when copy message"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1603
    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1604
    return-object v0

    .line 1607
    :cond_0
    nop

    .line 1609
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1608
    invoke-static {p1, v4, p4, p5}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 1611
    .local v4, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v4, :cond_1

    .line 1612
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1613
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1615
    .local v6, "response":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, v7, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-interface {v7, p3, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(I[BLandroid/os/Message;)V

    .line 1617
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mInserted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    nop

    .line 1625
    .end local v6    # "response":Landroid/os/Message;
    :try_start_2
    monitor-exit v5

    .line 1600
    .end local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1620
    .restart local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v6    # "response":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InterruptedException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1622
    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1623
    monitor-exit v5

    return-object v0

    .line 1625
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1627
    :cond_1
    const-string v1, "writeTextMessageToRuim: pdu == null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1628
    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1629
    return-object v0

    .line 1633
    .end local v3    # "i":I
    .end local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const-string v2, "writeTextMessageToRuim: done"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1634
    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1635
    return-object v0
.end method
