.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
.super Lcom/android/internal/telephony/uicc/UiccCardApplication;
.source "MtkUiccCardApplication.java"


# static fields
.field public static final blacklist CAT_CORPORATE:I = 0x3

.field public static final blacklist CAT_NETOWRK_SUBSET:I = 0x1

.field public static final blacklist CAT_NETWOEK:I = 0x0

.field public static final blacklist CAT_NS_SP:I = 0x5

.field public static final blacklist CAT_SERVICE_PROVIDER:I = 0x2

.field public static final blacklist CAT_SIM:I = 0x4

.field public static final blacklist CAT_SIM_C:I = 0x6

.field private static final blacklist DBG:Z = true

.field private static final blacklist EVENT_CHANGE_NETWORK_LOCK_DONE:I = 0x66

.field private static final blacklist EVENT_PUK1_CHANGE_PIN1_DONE:I = 0x68

.field private static final blacklist EVENT_PUK2_CHANGE_PIN2_DONE:I = 0x69

.field private static final blacklist EVENT_QUERY_NETWORK_LOCK_DONE:I = 0x65

.field private static final blacklist EVENT_RADIO_NOTAVAILABLE:I = 0x67

.field private static final blacklist LOG_TAG_EX:Ljava/lang/String; = "MtkUiccCardApp"

.field public static final blacklist OP_ADD:I = 0x2

.field public static final blacklist OP_LOCK:I = 0x1

.field public static final blacklist OP_PERMANENT_UNLOCK:I = 0x4

.field public static final blacklist OP_REMOVE:I = 0x3

.field public static final blacklist OP_UNLOCK:I

.field private static final blacklist PROPERTY_PIN1_RETRY:[Ljava/lang/String;

.field private static final blacklist PROPERTY_PIN2_RETRY:[Ljava/lang/String;

.field static final blacklist UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private blacklist mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mHandlerEx:Landroid/os/Handler;

.field protected blacklist mIccType:Ljava/lang/String;

.field protected blacklist mPhoneId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 102
    const-string v0, "vendor.gsm.ril.uicctype"

    const-string v1, "vendor.gsm.ril.uicctype.2"

    const-string v2, "vendor.gsm.ril.uicctype.3"

    const-string v3, "vendor.gsm.ril.uicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 111
    const-string v0, "vendor.gsm.sim.retry.pin1"

    const-string v1, "vendor.gsm.sim.retry.pin1.2"

    const-string v2, "vendor.gsm.sim.retry.pin1.3"

    const-string v3, "vendor.gsm.sim.retry.pin1.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->PROPERTY_PIN1_RETRY:[Ljava/lang/String;

    .line 118
    const-string v0, "vendor.gsm.sim.retry.pin2"

    const-string v1, "vendor.gsm.sim.retry.pin2.2"

    const-string v2, "vendor.gsm.sim.retry.pin2.3"

    const-string v3, "vendor.gsm.sim.retry.pin2.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->PROPERTY_PIN2_RETRY:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    .line 278
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    .line 545
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getAuthContextEx(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAuthContext:I

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    .line 137
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    .line 73
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private static blacklist getAuthContextEx(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 2
    .param p0, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 400
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 413
    const/4 v0, -0x1

    .local v0, "authContext":I
    goto :goto_0

    .line 409
    .end local v0    # "authContext":I
    :cond_0
    const/16 v0, 0x81

    .line 410
    .restart local v0    # "authContext":I
    goto :goto_0

    .line 402
    .end local v0    # "authContext":I
    :cond_1
    const/16 v0, 0x80

    .line 403
    .restart local v0    # "authContext":I
    nop

    .line 417
    :goto_0
    return v0
.end method

.method private blacklist notifyFdnChangedRegistrants()V
    .locals 1

    .line 561
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 562
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 566
    return-void
.end method


# virtual methods
.method protected blacklist createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 253
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

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

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIsimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 261
    :cond_1
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 259
    :cond_2
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 257
    :cond_3
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 255
    :cond_4
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method protected blacklist createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCardAppEx createIccRecords, AppType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_2

    .line 243
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 247
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_3
    :goto_0
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 238
    :cond_4
    :goto_1
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public blacklist getIccCardType()Ljava/lang/String;
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    .line 577
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType(): mIccType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIccFdnAvailable()Z
    .locals 5

    .line 621
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 622
    const-string v0, "isFdnExist mIccRecords == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    .line 623
    return v1

    .line 626
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 628
    .local v0, "iccSerStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    const/4 v2, 0x0

    .line 629
    .local v2, "isPhbReady":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v3, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    if-eqz v3, :cond_1

    .line 630
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v0

    .line 632
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v2

    goto :goto_0

    .line 633
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_2

    .line 634
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v0

    .line 636
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v2

    goto :goto_0

    .line 638
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 641
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccFdnAvailable status iccSerStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->log(Ljava/lang/String;)V

    .line 645
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    if-ne v0, v3, :cond_3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccCardApplication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccCardApplication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void
.end method

.method protected blacklist mtkLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCardApp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method protected blacklist mtkLoge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCardApp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method protected blacklist notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V
    .locals 2
    .param p1, "r"    # Lcom/android/internal/telephony/Registrant;

    .line 215
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 216
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_2

    .line 223
    if-nez p1, :cond_1

    .line 224
    const-string v0, "Notifying registrants: NETWORK_LOCKED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, "Notifying 1 registrant: NETWORK_LOCED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 231
    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 271
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    .line 272
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "notifyFdnChangedRegistrants"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyFdnChangedRegistrants()V

    .line 276
    :cond_0
    return-void
.end method

.method public blacklist queryFdn()V
    .locals 7

    .line 588
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 589
    const-string v0, "queryFdn(): do nothing for ISIM."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 590
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x7

    .line 596
    .local v0, "serviceClassX":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    .line 598
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 596
    const-string v2, "FD"

    const-string v3, ""

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 599
    return-void
.end method

.method public blacklist queryIccNetworkLock(ILandroid/os/Message;)V
    .locals 3
    .param p1, "category"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 502
    packed-switch p1, :pswitch_data_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIccNetworkLock unknown category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCardApp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v2, 0x65

    .line 511
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 510
    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryNetworkLock(ILandroid/os/Message;)V

    .line 512
    nop

    .line 517
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist queryPin1State()V
    .locals 7

    .line 603
    const/4 v6, 0x7

    .line 607
    .local v6, "serviceClassX":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 608
    const-string v0, "queryPin1State(): do nothing for ISIM."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 609
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    .line 614
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 612
    const-string v1, "SC"

    const-string v2, ""

    move v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 615
    return-void
.end method

.method public blacklist registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 550
    .local v1, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 551
    .end local v1    # "r":Lcom/android/internal/telephony/Registrant;
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    const/4 v8, 0x7

    .line 669
    .local v8, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDesiredPinLocked:Z

    .line 673
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "SC"

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/4 v4, 0x7

    .line 675
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 673
    move v3, p1

    move-object v4, p2

    move v5, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 677
    .end local v8    # "serviceClassX":I
    monitor-exit v0

    .line 678
    return-void

    .line 677
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "category"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .line 525
    move-object v0, p0

    move v9, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lockop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 528
    if-eqz v9, :cond_0

    const/4 v1, 0x1

    if-eq v9, v1, :cond_0

    const/4 v1, 0x2

    if-eq v9, v1, :cond_0

    const/4 v1, 0x3

    if-eq v9, v1, :cond_0

    const/4 v1, 0x4

    if-eq v9, v1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled unknown operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccCardApp"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p7

    goto :goto_0

    .line 534
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v3, 0x66

    .line 535
    move-object/from16 v11, p7

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 534
    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 536
    nop

    .line 541
    :goto_0
    return-void
.end method

.method public blacklist supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 441
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 471
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    const-string v1, "supplyPuk"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v4, 0x68

    .line 476
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 475
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v4, 0x69

    .line 488
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 487
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 491
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterForFdnChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 555
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 557
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "Application updated after destroyed! Fix me!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    .line 144
    monitor-exit v0

    return-void

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " update. New "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 148
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mContext:Landroid/content/Context;

    .line 149
    iput-object p3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 150
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 151
    .local v1, "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 152
    .local v2, "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 153
    .local v3, "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 155
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getAuthContextEx(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAuthContext:I

    .line 157
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 158
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 159
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    .line 160
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 161
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1Replaced:Z

    .line 162
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 163
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 165
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v1, :cond_4

    .line 166
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 167
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 168
    :cond_3
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 169
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v4, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 174
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPersoSubState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " oldPersoSubState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v5, 0x0

    if-eq v4, v3, :cond_5

    .line 179
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 183
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update,  mAppState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  oldAppState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v2, :cond_7

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " changed state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryFdn()V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    .line 196
    :cond_6
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 197
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyReadyRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    goto :goto_1

    .line 202
    :cond_7
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v5, :cond_a

    .line 203
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_8

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_a

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v4, :cond_a

    .line 206
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryFdn()V

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    .line 211
    .end local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v3    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :cond_a
    :goto_1
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
