.class public Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "MtkSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    }
.end annotation


# static fields
.field public static final blacklist ATT_OPID:Ljava/lang/String; = "7"

.field public static final blacklist CRICKET_OPID:Ljava/lang/String; = "145"

.field public static final blacklist EF_RAT_FOR_OTHER_CASE:I = 0x200

.field public static final blacklist EF_RAT_NOT_EXIST_IN_USIM:I = 0x100

.field public static final blacklist EF_RAT_UNDEFINED:I = -0x100

.field protected static final blacklist ENGDEBUG:Z

.field private static final blacklist EVENT_CFU_IND:I = 0x3fd

.field private static final blacklist EVENT_DELAYED_SEND_PHB_CHANGE:I = 0x402

.field private static final blacklist EVENT_DUAL_IMSI_READY:I = 0x3ec

.field private static final blacklist EVENT_EF_CSP_PLMN_MODE_BIT_CHANGED:I = 0x3f5

.field private static final blacklist EVENT_GET_ALL_OPL5G_DONE:I = 0x406

.field private static final blacklist EVENT_GET_ALL_OPL_DONE:I = 0x3f0

.field private static final blacklist EVENT_GET_ALL_PNN_DONE:I = 0x404

.field private static final blacklist EVENT_GET_CPHSONS_DONE:I = 0x3f1

.field private static final blacklist EVENT_GET_EF_ICCID_DONE:I = 0x400

.field private static final blacklist EVENT_GET_GBABP_DONE:I = 0x3fb

.field private static final blacklist EVENT_GET_GBANL_DONE:I = 0x3fc

.field private static final blacklist EVENT_GET_NEW_MSISDN_DONE:I = 0x3f8

.field private static final blacklist EVENT_GET_PSISMSC_DONE:I = 0x3f9

.field private static final blacklist EVENT_GET_RAT_DONE:I = 0x3f6

.field private static final blacklist EVENT_GET_SHORT_CPHSONS_DONE:I = 0x3f2

.field private static final blacklist EVENT_GET_SMSP_DONE:I = 0x3fa

.field private static final blacklist EVENT_IMSI_REFRESH_QUERY:I = 0x3fe

.field private static final blacklist EVENT_IMSI_REFRESH_QUERY_DONE:I = 0x3ff

.field public static final blacklist EVENT_MSISDN:I = 0x64

.field public static final blacklist EVENT_OPL:I = 0x65

.field public static final blacklist EVENT_OPL5G:I = 0x67

.field private static final blacklist EVENT_PHB_READY:I = 0x403

.field public static final blacklist EVENT_PNN:I = 0x66

.field private static final blacklist EVENT_QUERY_ICCID_DONE:I = 0x3f3

.field private static final blacklist EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0x3f7

.field private static final blacklist EVENT_QUERY_MENU_TITLE_DONE:I = 0x3ed

.field private static final blacklist EVENT_RADIO_AVAILABLE:I = 0x3e9

.field private static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x3f4

.field private static final blacklist EVENT_RSU_SIM_LOCK_CHANGED:I = 0x405

.field private static final blacklist GSM_PHB_NOT_READY:I = 0x0

.field private static final blacklist GSM_PHB_READY:I = 0x1

.field private static final blacklist KEY_SIM_ID:Ljava/lang/String; = "SIM_ID"

.field private static final blacklist LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

.field protected static final blacklist LOG_TAG_EX:Ljava/lang/String; = "MtkSIMRecords"

.field private static final blacklist MTK_SIM_RECORD_EVENT_BASE:I = 0x3e8

.field private static final blacklist SIMRECORD_PROPERTY_RIL_PHB_READY:Ljava/lang/String; = "vendor.gsm.sim.ril.phbready"

.field static final blacklist SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

.field protected static final blacklist USERDEBUG:Z

.field private static final blacklist simServiceNumber:[I

.field private static final blacklist usimServiceNumber:[I


# instance fields
.field private blacklist SIM_RECORDS_PROPERTY_MCC_MNC:[Ljava/lang/String;

.field blacklist cphsOnsl:Ljava/lang/String;

.field blacklist cphsOnss:Ljava/lang/String;

.field private blacklist efLanguageToLoad:I

.field private blacklist hasQueryIccId:Z

.field private blacklist iccIdQueryState:I

.field private blacklist isDispose:Z

.field private blacklist isMovistarDualSim:Z

.field private blacklist isValidMBI:Z

.field private blacklist m5gsOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEfELP:[B

.field private blacklist mEfGbanlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mEfPsismsc:[B

.field private blacklist mEfRat:[B

.field private blacklist mEfRatLoaded:Z

.field private blacklist mEfSST:[B

.field private blacklist mEfSmsp:[B

.field private blacklist mGbabp:Ljava/lang/String;

.field private blacklist mGbanl:[Ljava/lang/String;

.field private blacklist mIsPhbEfResetDone:Z

.field private blacklist mMenuTitleFromEf:Ljava/lang/String;

.field private blacklist mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

.field protected blacklist mOldMccMnc:Ljava/lang/String;

.field private blacklist mOldOperatorDefaultName:Ljava/lang/String;

.field private blacklist mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingPhbNotify:Z

.field private blacklist mPhbReady:Z

.field private blacklist mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

.field private blacklist mPhbWaitSub:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPnnNetworkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReadingOpl:Z

.field private blacklist mSimImsi:Ljava/lang/String;

.field private blacklist mSimReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mSlotId:I

.field private blacklist mSpNameInEfSpn:Ljava/lang/String;

.field private blacklist mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

.field private blacklist mSubId:I

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 33

    .line 132
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->ENGDEBUG:Z

    .line 133
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->USERDEBUG:Z

    .line 201
    const-string v1, "de"

    const-string v2, "en"

    const-string v3, "it"

    const-string v4, "fr"

    const-string v5, "es"

    const-string v6, "nl"

    const-string v7, "sv"

    const-string v8, "da"

    const-string v9, "pt"

    const-string v10, "fi"

    const-string v11, "no"

    const-string v12, "el"

    const-string v13, "tr"

    const-string v14, "hu"

    const-string v15, "pl"

    const-string v16, ""

    const-string v17, "cs"

    const-string v18, "he"

    const-string v19, "ar"

    const-string v20, "ru"

    const-string v21, "is"

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    .line 221
    const-string v0, "vendor.gsm.sim.retry.puk1"

    const-string v1, "vendor.gsm.sim.retry.puk1.2"

    const-string v2, "vendor.gsm.sim.retry.puk1.3"

    const-string v3, "vendor.gsm.sim.retry.puk1.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    .line 275
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->simServiceNumber:[I

    .line 279
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->usimServiceNumber:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x11
        0x33
        0x34
        0x36
        0x37
        0x38
        0x0
        0xc
        0x3
        0x7
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x13
        0x2d
        0x2e
        0x30
        0x31
        0x33
        0x47
        0xc
        0x2
        0x0
        0x2a
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "app"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 186
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    .line 187
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 190
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 195
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isValidMBI:Z

    .line 198
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    .line 199
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 211
    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->iccIdQueryState:I

    .line 214
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->efLanguageToLoad:I

    .line 215
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimImsi:Ljava/lang/String;

    .line 216
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 217
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfELP:[B

    .line 218
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfPsismsc:[B

    .line 219
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSmsp:[B

    .line 228
    const-string v0, "vendor.gsm.ril.uicc.mccmnc"

    const-string v3, "vendor.gsm.ril.uicc.mccmnc.1"

    const-string v4, "vendor.gsm.ril.uicc.mccmnc.2"

    const-string v5, "vendor.gsm.ril.uicc.mccmnc.3"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->SIM_RECORDS_PROPERTY_MCC_MNC:[Ljava/lang/String;

    .line 263
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 265
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 267
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    .line 269
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 271
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 274
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isDispose:Z

    .line 293
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    .line 294
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 295
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    .line 311
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    .line 314
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMovistarDualSim:Z

    .line 1762
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    .line 319
    const-string v0, "MtkSIMRecords constructor"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 323
    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUiccCard Instance = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 327
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    .line 329
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 330
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    .line 331
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->hasQueryIccId:Z

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x3fd

    invoke-virtual {v0, p0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3f4

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3e9

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x3fe

    invoke-virtual {v0, p0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForImsiRefreshDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    invoke-static {p2}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 341
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeMtkSimHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    .line 344
    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-interface {v0, v3}, Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;->setPhoneId(I)V

    .line 347
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4, p3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 353
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x403

    invoke-virtual {v3, p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    .line 355
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .local v3, "phbFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    const-string v4, "SIMRecords updateIccRecords"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    const-string v4, "Phonebook is ready."

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 373
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 374
    invoke-direct {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x405

    invoke-virtual {v1, p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRsuSimLockChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    return v0
.end method

.method static synthetic blacklist access$1402(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z

    .line 130
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$502(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    return v0
.end method

.method static synthetic blacklist access$702(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z

    .line 130
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    return-void
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 130
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    return v0
.end method

.method static synthetic blacklist access$902(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z

    .line 130
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    return p1
.end method

.method private blacklist boradcastEfRatContentNotify(I)V
    .locals 3
    .param p1, "item"    # I

    .line 2021
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_EF_RAT_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2022
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ef_rat_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2023
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_EF_RAT_CONTENT_NOTIFY: item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2026
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2027
    return-void
.end method

.method private blacklist broadcastPhbStateChangedIntent(ZZ)V
    .locals 8
    .param p1, "isReady"    # Z
    .param p2, "isForceSendIntent"    # Z

    .line 2495
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isDispose:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2497
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 2498
    const-string v0, "broadcastPhbStateChangedIntent, No active Phone, will notfiy when dispose"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2499
    return-void

    .line 2502
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2503
    if-ne p1, v1, :cond_4

    .line 2504
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 2506
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    .line 2507
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 2509
    .local v0, "curSimState":I
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    if-lez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 2515
    .end local v0    # "curSimState":I
    :cond_2
    goto :goto_1

    .line 2510
    .restart local v0    # "curSimState":I
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastPhbStateChangedIntent, mSubId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sim state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2512
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    .line 2513
    return-void

    .line 2516
    .end local v0    # "curSimState":I
    :cond_4
    if-ne p2, v1, :cond_5

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-ne v0, v1, :cond_5

    .line 2517
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 2519
    :cond_5
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    if-gtz v0, :cond_6

    .line 2520
    const-string v0, "broadcastPhbStateChangedIntent, isReady == false and mSubId <= 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2521
    return-void

    .line 2524
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2525
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    .line 2526
    .local v2, "isUnlock":Z
    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v2, :cond_7

    goto :goto_2

    .line 2531
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2532
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "ready"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2533
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    const-string v6, "subscription"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " sub id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2535
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2534
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2536
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2538
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 2539
    .local v3, "bootIntent":Landroid/content/Intent;
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2540
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2541
    const-string v4, "com.mediatek.simprocessor"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2543
    const-string v4, "Broadcasting ACTION_PHB_STATE_CHANGED to package: simprocessor"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2545
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2547
    if-nez p1, :cond_8

    .line 2548
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 2550
    :cond_8
    return-void

    .line 2527
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "bootIntent":Landroid/content/Intent;
    :cond_9
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastPhbStateChangedIntent, boot not completed, isUnlock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2528
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 2529
    return-void
.end method

.method public static blacklist convertMccmncAsAospConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mccmnc"    # Ljava/lang/String;

    .line 2838
    const/4 v0, 0x0

    .line 2841
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 2845
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 2846
    .local v5, "mm":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2847
    move-object v0, p0

    .line 2848
    goto :goto_1

    .line 2845
    .end local v5    # "mm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2853
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 2854
    const/4 v1, 0x5

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2842
    :cond_3
    :goto_2
    move-object v0, p0

    .line 2858
    :cond_4
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMccmncAsAospConfig: mccmnc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMRecords"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    return-object v0
.end method

.method private blacklist convertNumberIfContainsPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dialNumber"    # Ljava/lang/String;

    .line 2700
    move-object v0, p1

    .line 2701
    .local v0, "r":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2702
    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2703
    const-string v1, "sip:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2704
    const-string v1, "sips:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2705
    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertNumberIfContainsPrefix: dialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMRecords"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_1
    return-object v0
.end method

.method private blacklist fetchCPHSOns()V
    .locals 3

    .line 2054
    const-string v0, "fetchCPHSOns()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 2056
    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    .line 2057
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2058
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2057
    const/16 v2, 0x6f14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2059
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2060
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2059
    const/16 v2, 0x6f18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2061
    return-void
.end method

.method private blacklist fetchGbaRecords()V
    .locals 3

    .line 1895
    const-string v0, "fetchGbaRecords"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->GBA:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    const-string v0, "GBA support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1900
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fd5

    const/16 v2, 0x3fb

    .line 1901
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1900
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1903
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fd7

    const/16 v2, 0x3fc

    .line 1904
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1903
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1907
    :cond_0
    return-void
.end method

.method private blacklist fetchMbiRecords()V
    .locals 4

    .line 1910
    const-string v0, "fetchMbiRecords"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MBDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    const-string v0, "MBI/MBDN support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1916
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1919
    :cond_0
    return-void
.end method

.method private blacklist fetchMwisRecords()V
    .locals 4

    .line 1922
    const-string v0, "fetchMwisRecords"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1924
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    const-string v0, "MWIS support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1928
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1931
    :cond_0
    return-void
.end method

.method private blacklist fetchOpl5g()V
    .locals 3

    .line 2863
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x406

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f08

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2864
    return-void
.end method

.method private blacklist fetchPnnAndOpl()V
    .locals 6

    .line 1765
    const-string v0, "fetchPnnAndOpl()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "bPnnActive":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    .line 1770
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    if-eqz v2, :cond_5

    .line 1771
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1772
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/4 v5, 0x6

    if-lt v3, v5, :cond_5

    .line 1773
    const/4 v3, 0x5

    aget-byte v2, v2, v3

    const/16 v5, 0x10

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 1774
    if-eqz v0, :cond_5

    .line 1775
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    move v1, v4

    :cond_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    goto :goto_2

    .line 1778
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/16 v5, 0xd

    if-lt v3, v5, :cond_5

    .line 1779
    const/16 v3, 0xc

    aget-byte v2, v2, v3

    const/16 v5, 0x30

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    move v0, v2

    .line 1780
    if-eqz v0, :cond_5

    .line 1781
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    aget-byte v2, v2, v3

    const/16 v3, 0xc0

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    move v1, v4

    :cond_4
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    .line 1785
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bPnnActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bOplActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1787
    if-eqz v0, :cond_6

    .line 1788
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fc5

    const/16 v3, 0x404

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1789
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    if-eqz v1, :cond_6

    .line 1790
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fc6

    const/16 v3, 0x3f0

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1793
    :cond_6
    return-void
.end method

.method private blacklist fetchRatBalancing()V
    .locals 3

    .line 2065
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isFetchRatBalancingAndEnsFile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2066
    const-string v0, "Not support MTK_RAT_BALANCING"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2067
    return-void

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    .line 2070
    const-string v0, "start loading EF_RAT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f36

    const/16 v2, 0x3f6

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2073
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_2

    .line 2075
    const-string v0, "loading EF_RAT fail, because of SIM"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    .line 2077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 2078
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    goto :goto_0

    .line 2081
    :cond_2
    const-string v0, "loading EF_RAT fail, because of +EUSIM"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2083
    :goto_0
    return-void
.end method

.method private blacklist fetchSmsp()V
    .locals 4

    .line 1875
    const-string v0, "fetchSmsp()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    const-string v0, "SMSP support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1881
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f42

    const/16 v2, 0x3fa

    .line 1882
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1881
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_OVER_IP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    const-string v0, "PSISMSP support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fe5

    const/16 v2, 0x3f9

    .line 1887
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1886
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1892
    :cond_0
    return-void
.end method

.method private blacklist fetchSpn()V
    .locals 5

    .line 1796
    const-string v0, "fetchSpn()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1797
    const/4 v0, 0x0

    .line 1799
    .local v0, "bSpnActive":Z
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v1

    .line 1801
    .local v1, "iccSerStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    if-ne v1, v2, :cond_0

    .line 1802
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1803
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f46

    const/16 v4, 0xc

    .line 1804
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1803
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1805
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 1807
    :cond_0
    const-string v2, "[SIMRecords] SPN service is not activated  "

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1809
    :goto_0
    return-void
.end method

.method private blacklist findBestLanguage([B)Ljava/lang/String;
    .locals 9
    .param p1, "languages"    # [B

    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, "locales":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-nez v1, :cond_0

    goto :goto_4

    .line 1366
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 1368
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    const/4 v6, 0x2

    invoke-direct {v4, p1, v3, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1369
    .local v4, "lang":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "languages from sim = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1370
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 1371
    aget-object v7, v1, v5

    if-eqz v7, :cond_1

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v6, :cond_1

    aget-object v7, v1, v5

    const/4 v8, 0x0

    .line 1372
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 1373
    return-object v4

    .line 1370
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1376
    .end local v5    # "j":I
    :cond_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 1379
    .end local v4    # "lang":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 1377
    :catch_0
    move-exception v4

    .line 1378
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse USIM language records"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1366
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1382
    .end local v3    # "i":I
    :cond_4
    :goto_3
    return-object v2

    .line 1363
    :cond_5
    :goto_4
    return-object v2
.end method

.method private blacklist isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "simPlmn"    # Ljava/lang/String;
    .param p2, "bcchPlmn"    # Ljava/lang/String;

    .line 2096
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2099
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMatchingPlmnForEfOpl(): simPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bcchPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2107
    .local v1, "simPlmnLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2108
    .local v2, "bcchPlmnLen":I
    const/4 v3, 0x5

    if-lt v1, v3, :cond_a

    if-ge v2, v3, :cond_1

    goto :goto_3

    .line 2111
    :cond_1
    const/4 v4, 0x0

    .line 2112
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x64

    if-ge v4, v3, :cond_4

    .line 2113
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    .line 2114
    goto :goto_1

    .line 2115
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2116
    return v0

    .line 2112
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2119
    :cond_4
    const/4 v6, 0x1

    const/4 v7, 0x6

    if-ne v1, v7, :cond_7

    if-ne v2, v7, :cond_7

    .line 2120
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v5, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v5, v3, :cond_5

    goto :goto_2

    .line 2123
    :cond_5
    return v0

    .line 2121
    :cond_6
    :goto_2
    return v6

    .line 2125
    :cond_7
    const/16 v8, 0x30

    if-ne v2, v7, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_8

    .line 2126
    return v0

    .line 2127
    :cond_8
    if-ne v1, v7, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_9

    .line 2128
    return v0

    .line 2131
    :cond_9
    return v6

    .line 2109
    .end local v4    # "i":I
    :cond_a
    :goto_3
    return v0

    .line 2097
    .end local v1    # "simPlmnLen":I
    .end local v2    # "bcchPlmnLen":I
    :cond_b
    :goto_4
    return v0
.end method

.method private blacklist isPlmnEqualsSimNumeric(Ljava/lang/String;)Z
    .locals 6
    .param p1, "plmn"    # Ljava/lang/String;

    .line 2135
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2136
    .local v0, "mccmnc":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 2138
    :cond_0
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2143
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2144
    return v3

    .line 2146
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    .line 2147
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2148
    return v3

    .line 2151
    :cond_3
    return v1

    .line 2139
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlmnEqualsSimNumeric: getOperatorNumeric error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2140
    return v1
.end method

.method private blacklist mtkLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    return-void
.end method

.method private blacklist mtkLoge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    return-void
.end method

.method private blacklist mtkLogv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    return-void
.end method

.method private blacklist mtkLogw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2749
    return-void
.end method

.method private blacklist parseEFopl(Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "messages"    # Ljava/util/ArrayList;

    .line 1941
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1942
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEFopl(): opl has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1944
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 1945
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1946
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1948
    .local v2, "data":[B
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;-><init>()V

    .line 1950
    .local v3, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/mediatek/internal/telephony/MtkIccUtils;->parsePlmnToStringForEfOpl([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    .line 1952
    const/4 v6, 0x2

    new-array v7, v6, [B

    .line 1953
    .local v7, "minLac":[B
    aget-byte v4, v2, v4

    aput-byte v4, v7, v5

    .line 1954
    const/4 v4, 0x4

    aget-byte v4, v2, v4

    const/4 v8, 0x1

    aput-byte v4, v7, v8

    .line 1955
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x10

    invoke-static {v4, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    .line 1957
    new-array v4, v6, [B

    .line 1958
    .local v4, "maxLAC":[B
    const/4 v6, 0x5

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    .line 1959
    const/4 v6, 0x6

    aget-byte v6, v2, v6

    aput-byte v6, v4, v8

    .line 1960
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    .line 1962
    new-array v6, v8, [B

    .line 1963
    .local v6, "pnnRecordIndex":[B
    const/4 v8, 0x7

    aget-byte v8, v2, v8

    aput-byte v8, v6, v5

    .line 1964
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    .line 1966
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseEFopl(): record="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " content="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sPlmn="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nMinLAC="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nMaxLAC="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nPnnIndex="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1971
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    nop

    .end local v2    # "data":[B
    .end local v3    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    .end local v4    # "maxLAC":[B
    .end local v6    # "pnnRecordIndex":[B
    .end local v7    # "minLac":[B
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1977
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMRecords"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist parseEFopl5g(Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "messages"    # Ljava/util/ArrayList;

    .line 1984
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1985
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEFopl5g(): opl has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1987
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    .line 1988
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1989
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1991
    .local v2, "data":[B
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;-><init>()V

    .line 1993
    .local v3, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkIccUtils;->parsePlmnToStringForEfOpl([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->sPlmn:Ljava/lang/String;

    .line 1995
    new-array v6, v5, [B

    .line 1996
    .local v6, "minLac":[B
    aget-byte v7, v2, v5

    aput-byte v7, v6, v4

    .line 1997
    const/4 v7, 0x4

    aget-byte v7, v2, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    .line 1998
    const/4 v7, 0x5

    aget-byte v7, v2, v7

    const/4 v9, 0x2

    aput-byte v7, v6, v9

    .line 1999
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    .line 2001
    new-array v5, v5, [B

    .line 2002
    .local v5, "maxLAC":[B
    const/4 v7, 0x6

    aget-byte v7, v2, v7

    aput-byte v7, v5, v4

    .line 2003
    const/4 v7, 0x7

    aget-byte v7, v2, v7

    aput-byte v7, v5, v8

    .line 2004
    const/16 v7, 0x8

    aget-byte v7, v2, v7

    aput-byte v7, v5, v9

    .line 2005
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    .line 2007
    new-array v7, v8, [B

    .line 2008
    .local v7, "pnnRecordIndex":[B
    const/16 v8, 0x9

    aget-byte v8, v2, v8

    aput-byte v8, v7, v4

    .line 2009
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    .line 2011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseEFopl5g(): record="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " content="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sPlmn="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->sPlmn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nMinLAC="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nMaxLAC="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nPnnIndex="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2016
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    .end local v2    # "data":[B
    .end local v3    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    .end local v5    # "maxLAC":[B
    .end local v6    # "minLac":[B
    .end local v7    # "pnnRecordIndex":[B
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2018
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist parseEFpnn(Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "messages"    # Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1733
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEFpnn(): pnn has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 1736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1737
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1739
    .local v2, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseEFpnn(): pnn record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " content is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1739
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1743
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1744
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;-><init>()V

    .line 1745
    .local v4, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1746
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_0

    .line 1747
    nop

    .line 1748
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    .line 1747
    invoke-static {v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    .line 1749
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFpnn(): pnn sFullName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1750
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_1

    .line 1751
    nop

    .line 1752
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    .line 1751
    invoke-static {v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    .line 1753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFpnn(): pnn sShortName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1745
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1

    .line 1757
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    .end local v2    # "data":[B
    .end local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v4    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1759
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist processEfCspPlmnModeBitUrc(I)V
    .locals 3
    .param p1, "bit"    # I

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processEfCspPlmnModeBitUrc: bit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2032
    if-nez p1, :cond_0

    .line 2033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCspPlmnEnabled:Z

    goto :goto_0

    .line 2035
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCspPlmnEnabled:Z

    .line 2037
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "plmn_mode_bit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2039
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_EF_CSP_CONTENT_NOTIFY, EXTRA_PLMN_MODE_BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2041
    const/4 v1, -0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2043
    return-void
.end method

.method private blacklist setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 1466
    const-string v0, "vendor.gsm.sim.operator.default-name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1467
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1468
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1469
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set PROPERTY_ICC_OPERATOR_DEFAULT_NAME same value. val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1470
    return-void

    .line 1472
    :cond_2
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    .line 1475
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method private blacklist setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1482
    const-string v0, ""

    .line 1483
    .local v0, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1484
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1486
    .local v2, "prop":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 1487
    const-string p3, ""

    .line 1489
    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1490
    const-string v3, ","

    if-eqz v2, :cond_1

    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1494
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    const-string v5, " value: "

    const-string v6, " property="

    if-nez v4, :cond_2

    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1497
    return-void

    .line 1500
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_4

    .line 1501
    const-string v7, ""

    .line 1502
    .local v7, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-ge v4, v8, :cond_3

    .line 1503
    aget-object v7, v1, v4

    .line 1505
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    .end local v7    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1508
    .end local v4    # "i":I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1509
    if-eqz v1, :cond_5

    .line 1510
    add-int/lit8 v4, p1, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_5

    .line 1511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1515
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1517
    .local v3, "propValLen":I
    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1520
    goto :goto_2

    .line 1518
    :catch_0
    move-exception v4

    .line 1519
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "setTelephonyProperty: utf-8 not supported"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1521
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/16 v4, 0x5b

    if-le v3, v4, :cond_6

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " propVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1524
    return-void

    .line 1527
    :cond_6
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    return-void
.end method

.method private blacklist updateConfiguration(Ljava/lang/String;)V
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;

    .line 1720
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    .line 1722
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1724
    :cond_0
    const-string v0, "Do not update configuration if mcc mnc no change."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1726
    :goto_0
    return-void
.end method

.method private blacklist updatePHBStatus(IZ)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "isSimLocked"    # Z

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PHBStatus] status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | isSimLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mPhbReady : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2651
    const/4 v0, 0x0

    .line 2653
    .local v0, "simLockedState":Z
    const-string v1, "ro.vendor.mtk_ril_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "c6m_1rild"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2654
    const/4 v0, 0x0

    goto :goto_0

    .line 2656
    :cond_0
    move v0, p2

    .line 2659
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 2660
    if-nez v0, :cond_1

    .line 2661
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-nez v3, :cond_3

    .line 2662
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 2663
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_1

    .line 2666
    :cond_1
    const-string v1, "phb ready but sim is not ready."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_1

    .line 2668
    :cond_2
    if-nez p1, :cond_3

    .line 2669
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-ne v3, v2, :cond_3

    .line 2670
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 2671
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 2672
    invoke-direct {p0, v1, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 2675
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected blacklist checkCdma3gCard()Z
    .locals 3

    .line 1459
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->checkCdma3gCard(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1460
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCdma3gCard result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1462
    return v0
.end method

.method public blacklist checkEfCfis()Z
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    array-length v0, v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 446
    .local v0, "isValid":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEfCfis is null? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 447
    return v0
.end method

.method public blacklist dispose()V
    .locals 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing MtkSIMRecords this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isDispose:Z

    .line 389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;->dispose()V

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForCallForwardingInfo(Landroid/os/Handler;)V

    .line 394
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIccId:Ljava/lang/String;

    .line 399
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 402
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    .line 407
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-eq v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    if-ne v2, v0, :cond_2

    .line 408
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkSIMRecords Disposing  set PHB unready mPendingPhbNotify="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhbReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 410
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 411
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 412
    invoke-direct {p0, v1, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 421
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 422
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 427
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 430
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForRsuSimLockChanged(Landroid/os/Handler;)V

    .line 432
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispose()V

    .line 433
    return-void
.end method

.method protected blacklist fetchSimRecords()V
    .locals 4

    .line 1550
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1553
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fc9

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1554
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1559
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fca

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1560
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 1566
    return-void
.end method

.method public blacklist get5GEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "nLac"    # I
    .param p3, "bLongNameRequired"    # Z

    .line 2156
    const/16 v0, 0x2a

    .line 2157
    .local v0, "mask":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v1, "lac_sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 2161
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    div-int/2addr v5, v4

    if-ge v2, v5, :cond_2

    .line 2162
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2159
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2165
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EONS get5GEonsIfExist: plmn is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nLac is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bLongNameRequired: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2165
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2168
    .end local v0    # "mask":C
    .end local v1    # "lac_sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    .line 2172
    :cond_3
    const/4 v1, -0x1

    .line 2173
    .local v1, "nPnnIndex":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPlmnEqualsSimNumeric(Ljava/lang/String;)Z

    move-result v2

    .line 2175
    .local v2, "isHPLMN":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    .line 2177
    if-eqz v2, :cond_4

    .line 2178
    const-string v0, "get5GEonsIfExist: Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2179
    const/4 v1, 0x1

    goto :goto_3

    .line 2182
    :cond_4
    const-string v3, "get5GEonsIfExist: Plmn is not HPLMN and no mOperatorList, return null"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2184
    return-object v0

    .line 2188
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 2189
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;

    .line 2191
    .local v5, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->sPlmn:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    if-nez v6, :cond_6

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    const v7, 0xfffffe

    if-eq v6, v7, :cond_7

    :cond_6
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    if-gt v6, p2, :cond_9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    if-lt v6, p2, :cond_9

    .line 2194
    :cond_7
    const-string v6, "get5GEonsIfExist: find it in EF_5GOPL"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2195
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    if-nez v6, :cond_8

    .line 2197
    const-string v3, "get5GEonsIfExist: oplRec.nPnnIndex is 0, from other sources"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2199
    return-object v0

    .line 2201
    :cond_8
    iget v1, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    .line 2202
    goto :goto_3

    .line 2188
    .end local v5    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2207
    .end local v4    # "i":I
    :cond_a
    :goto_3
    const/4 v0, -0x1

    if-ne v1, v0, :cond_b

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 2209
    const-string v0, "get5GEonsIfExist: not find it in EF_5GOPL, but Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2212
    const/4 v1, 0x1

    goto :goto_4

    .line 2214
    :cond_b
    if-le v1, v3, :cond_c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_c

    if-eqz v2, :cond_c

    .line 2216
    const-string v0, "get5GEonsIfExist: find it in EF_5GOPL, but index in EF_5GOPL > EF_PNN list length & Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2219
    const/4 v1, 0x1

    goto :goto_4

    .line 2221
    :cond_c
    if-le v1, v3, :cond_d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_d

    if-nez v2, :cond_d

    .line 2223
    const-string v0, "get5GEonsIfExist: find it in EF_5GOPL, but index in EF_5GOPL > EF_PNN list length & Plmn is not HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2226
    const/4 v1, -0x1

    .line 2229
    :cond_d
    :goto_4
    const/4 v0, 0x0

    .line 2230
    .local v0, "sEons":Ljava/lang/String;
    if-lt v1, v3, :cond_11

    .line 2231
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    .line 2232
    .local v3, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    if-eqz p3, :cond_f

    .line 2233
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2234
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5

    .line 2235
    :cond_e
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 2236
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5

    .line 2238
    :cond_f
    if-nez p3, :cond_11

    .line 2239
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 2240
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5

    .line 2241
    :cond_10
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 2242
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2246
    .end local v3    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :cond_11
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get5GEonsIfExist: sEons is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2248
    return-object v0

    .line 2169
    .end local v0    # "sEons":Ljava/lang/String;
    .end local v1    # "nPnnIndex":I
    .end local v2    # "isHPLMN":Z
    :cond_12
    :goto_6
    return-object v0
.end method

.method public blacklist getEfGbabp()Ljava/lang/String;
    .locals 2

    .line 2421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBABP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEfPsismsc()[B
    .locals 1

    .line 2445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfPsismsc:[B

    return-object v0
.end method

.method public blacklist getEfRatBalancing()I
    .locals 2

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEfRatBalancing: iccCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEfRatLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEfRat is null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2089
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    if-nez v0, :cond_1

    .line 2090
    const/16 v0, 0x100

    return v0

    .line 2092
    :cond_1
    const/16 v0, 0x200

    return v0
.end method

.method public blacklist getEfSmsp()[B
    .locals 1

    .line 2453
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSmsp:[B

    return-object v0
.end method

.method public blacklist getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "nLac"    # I
    .param p3, "bLongNameRequired"    # Z

    .line 2254
    const/16 v0, 0x2a

    .line 2255
    .local v0, "mask":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2256
    .local v1, "lac_sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 2259
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    div-int/2addr v5, v4

    if-ge v2, v5, :cond_2

    .line 2260
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2257
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2263
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EONS getEonsIfExist: plmn is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nLac is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bLongNameRequired: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2263
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2266
    .end local v0    # "mask":C
    .end local v1    # "lac_sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    .line 2270
    :cond_3
    const/4 v1, -0x1

    .line 2271
    .local v1, "nPnnIndex":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPlmnEqualsSimNumeric(Ljava/lang/String;)Z

    move-result v2

    .line 2273
    .local v2, "isHPLMN":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    .line 2275
    if-eqz v2, :cond_4

    .line 2276
    const-string v0, "getEonsIfExist: Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2277
    const/4 v1, 0x1

    goto :goto_3

    .line 2280
    :cond_4
    const-string v3, "getEonsIfExist: Plmn is not HPLMN and no mOperatorList, return null"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2282
    return-object v0

    .line 2286
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 2287
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;

    .line 2292
    .local v5, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    if-nez v6, :cond_6

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    const v7, 0xfffe

    if-eq v6, v7, :cond_7

    :cond_6
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    if-gt v6, p2, :cond_9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    if-lt v6, p2, :cond_9

    .line 2295
    :cond_7
    const-string v6, "getEonsIfExist: find it in EF_OPL"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2296
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    if-nez v6, :cond_8

    .line 2298
    const-string v3, "getEonsIfExist: oplRec.nPnnIndex is 0, from other sources"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2300
    return-object v0

    .line 2302
    :cond_8
    iget v1, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    .line 2303
    goto :goto_3

    .line 2286
    .end local v5    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2309
    .end local v4    # "i":I
    :cond_a
    :goto_3
    const/4 v0, -0x1

    if-ne v1, v0, :cond_b

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 2311
    const-string v0, "getEonsIfExist: not find it in EF_OPL, but Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2314
    const/4 v1, 0x1

    goto :goto_4

    .line 2316
    :cond_b
    if-le v1, v3, :cond_c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_c

    if-eqz v2, :cond_c

    .line 2318
    const-string v0, "getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2321
    const/4 v1, 0x1

    goto :goto_4

    .line 2323
    :cond_c
    if-le v1, v3, :cond_d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_d

    if-nez v2, :cond_d

    .line 2325
    const-string v0, "getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is not HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2328
    const/4 v1, -0x1

    .line 2331
    :cond_d
    :goto_4
    const/4 v0, 0x0

    .line 2332
    .local v0, "sEons":Ljava/lang/String;
    if-lt v1, v3, :cond_12

    .line 2333
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    .line 2334
    .local v3, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    if-eqz p3, :cond_f

    .line 2335
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2336
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5

    .line 2337
    :cond_e
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 2338
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5

    .line 2340
    :cond_f
    if-nez p3, :cond_11

    .line 2341
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 2342
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5

    .line 2343
    :cond_10
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 2344
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2349
    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    .line 2350
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 2351
    .local v5, "simCardMccMnc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEonsIfExist spn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2352
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2353
    const-string v6, "50503"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2354
    move-object v0, v4

    .line 2355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sEons = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2360
    .end local v3    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    .end local v4    # "spn":Ljava/lang/String;
    .end local v5    # "simCardMccMnc":Ljava/lang/String;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEonsIfExist: sEons is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2362
    return-object v0

    .line 2267
    .end local v0    # "sEons":Ljava/lang/String;
    .end local v1    # "nPnnIndex":I
    .end local v2    # "isHPLMN":Z
    :cond_13
    :goto_6
    return-object v0
.end method

.method public blacklist getFirstFullNameInEfPnn()Ljava/lang/String;
    .locals 4

    .line 1615
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    .line 1621
    .local v0, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstFullNameInEfPnn(): first fullname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1622
    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1623
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1624
    :cond_1
    return-object v1

    .line 1616
    .end local v0    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :cond_2
    :goto_0
    const-string v0, "getFirstFullNameInEfPnn(): empty"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1617
    return-object v1
.end method

.method public blacklist getMenuTitleFromEf()Ljava/lang/String;
    .locals 1

    .line 2050
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMncLength()I
    .locals 2

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mncLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2462
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    return v0
.end method

.method public blacklist getMvnoMatchType()Ljava/lang/String;
    .locals 8

    .line 1637
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v1

    .line 1639
    .local v1, "SPN":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v2

    .line 1640
    .local v2, "PNN":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v3

    .line 1641
    .local v3, "GID1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1643
    .local v4, "MCCMNC":Ljava/lang/String;
    sget-boolean v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->USERDEBUG:Z

    const-string v6, ", spn = "

    if-eqz v5, :cond_0

    .line 1644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMvnoMatchType(): imsi = ***, mccmnc = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1647
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMvnoMatchType(): imsi = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mccmnc = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1652
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1653
    const-string v5, "spn"

    return-object v5

    .line 1655
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1656
    const-string v5, "imsi"

    return-object v5

    .line 1658
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1659
    const-string v5, "pnn"

    return-object v5

    .line 1661
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1662
    const-string v5, "gid"

    return-object v5

    .line 1664
    :cond_4
    const-string v5, ""

    return-object v5
.end method

.method public blacklist getSIMCPHSOns()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 553
    return-object v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .locals 9
    .param p1, "enService"    # Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 1813
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->getIndex()I

    move-result v0

    .line 1814
    .local v0, "nServiceNum":I
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 1816
    .local v1, "simServiceStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMServiceStatus enService is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Service Index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1820
    if-ltz v0, :cond_7

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->UNSUPPORTED_SERVICE:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 1821
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->getIndex()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    if-eqz v2, :cond_7

    .line 1823
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const-string v4, " nbit: "

    if-ne v2, v3, :cond_3

    .line 1824
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->usimServiceNumber:[I

    aget v2, v2, v0

    .line 1825
    .local v2, "nUSTIndex":I
    if-gtz v2, :cond_0

    .line 1826
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_1

    .line 1828
    :cond_0
    div-int/lit8 v3, v2, 0x8

    .line 1829
    .local v3, "nbyte":I
    rem-int/lit8 v5, v2, 0x8

    .line 1830
    .local v5, "nbit":I
    if-nez v5, :cond_1

    .line 1831
    const/4 v5, 0x7

    .line 1832
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1834
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 1836
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIMServiceStatus USIM nbyte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1838
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v6, v4

    if-le v6, v3, :cond_2

    aget-byte v4, v4, v3

    const/4 v6, 0x1

    shl-int/2addr v6, v5

    and-int/2addr v4, v6

    if-lez v4, :cond_2

    .line 1839
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_1

    .line 1841
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 1844
    .end local v2    # "nUSTIndex":I
    .end local v3    # "nbyte":I
    .end local v5    # "nbit":I
    :goto_1
    goto :goto_3

    .line 1845
    :cond_3
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->simServiceNumber:[I

    aget v2, v2, v0

    .line 1846
    .local v2, "nSSTIndex":I
    if-gtz v2, :cond_4

    .line 1847
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_3

    .line 1849
    :cond_4
    div-int/lit8 v3, v2, 0x4

    .line 1850
    .restart local v3    # "nbyte":I
    rem-int/lit8 v5, v2, 0x4

    .line 1851
    .restart local v5    # "nbit":I
    if-nez v5, :cond_5

    .line 1852
    const/4 v5, 0x3

    .line 1853
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1855
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 1858
    :goto_2
    mul-int/lit8 v6, v5, 0x2

    const/4 v7, 0x2

    shl-int v6, v7, v6

    .line 1859
    .local v6, "nMask":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIMServiceStatus SIM nbyte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nMask: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1861
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v7, v4

    if-le v7, v3, :cond_6

    aget-byte v4, v4, v3

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_6

    .line 1862
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_3

    .line 1864
    :cond_6
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 1870
    .end local v2    # "nSSTIndex":I
    .end local v3    # "nbyte":I
    .end local v5    # "nbit":I
    .end local v6    # "nMask":I
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMServiceStatus simServiceStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1871
    return-object v1
.end method

.method public blacklist getSpNameInEfSpn()Ljava/lang/String;
    .locals 2

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpNameInEfSpn(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoiceMailNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mVoiceMailNum:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 454
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist handleFileUpdate(I)V
    .locals 5
    .param p1, "efid"    # I

    .line 1200
    const/16 v0, 0x4f30

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6f13

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6f15

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6f17

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6f49

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6fc7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6fcb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f3a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_1

    .line 1253
    const-string v0, "handleFileUpdate default"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1255
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    if-nez v0, :cond_0

    .line 1256
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1258
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1263
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchSimRecords()V

    goto/16 :goto_1

    .line 1218
    :cond_1
    const-string v0, "SIM Refresh called for EF_FDN"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_0

    .line 1240
    :cond_2
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1241
    const-string v1, "SIM Refresh called for EF_CFIS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x20

    .line 1243
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1242
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1244
    goto/16 :goto_1

    .line 1202
    :cond_3
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1203
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    const/4 v4, 0x6

    .line 1204
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1203
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1205
    goto/16 :goto_1

    .line 1234
    :cond_4
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1235
    const-string v1, "SIM Refresh called for EF_MSISDN"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1236
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getExtFromEf(I)I

    move-result v3

    const/16 v4, 0xa

    .line 1237
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1236
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1238
    goto :goto_1

    .line 1207
    :cond_5
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1208
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f4a

    const/16 v4, 0xb

    .line 1209
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1208
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1210
    goto :goto_1

    .line 1212
    :cond_6
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1213
    const-string v1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x21

    .line 1215
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1214
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1216
    goto :goto_1

    .line 1246
    :cond_7
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1247
    const-string v1, "SIM Refresh called for EF_CFF_CPHS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x18

    .line 1249
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1248
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1250
    goto :goto_1

    .line 1225
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    if-nez v0, :cond_9

    .line 1226
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1228
    const-string v0, "handleFileUpdate ADN like"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    .line 1266
    :cond_9
    :goto_1
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 566
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 568
    .local v3, "isRecordLoadResponse":Z
    iget-object v4, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->shallIgnoreMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    return-void

    .line 571
    :cond_0
    :try_start_0
    iget v4, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x5

    const/16 v6, 0xb

    const/4 v9, 0x6

    const/16 v10, 0xff

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v4, v5, :cond_2f

    const/16 v5, 0xa

    const/16 v13, 0x64

    if-eq v4, v5, :cond_2d

    const/16 v5, 0xc

    const-string v14, ""

    const/4 v15, 0x2

    const/4 v7, 0x0

    if-eq v4, v5, :cond_25

    const/16 v5, 0xf

    const/16 v16, 0x65

    if-eq v4, v5, :cond_23

    const/16 v8, 0x11

    if-eq v4, v8, :cond_21

    const/16 v8, 0x1a

    if-eq v4, v8, :cond_1f

    const/16 v6, 0x1e

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x3e9

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x3ed

    if-eq v4, v6, :cond_1a

    const/16 v6, 0x101

    if-eq v4, v6, :cond_19

    const/16 v6, 0x102

    if-eq v4, v6, :cond_18

    const/16 v6, 0x3f5

    if-eq v4, v6, :cond_17

    const/16 v6, 0x3f6

    if-eq v4, v6, :cond_14

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    .line 1186
    :try_start_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 892
    :pswitch_0
    const/4 v3, 0x0

    .line 893
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 895
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 896
    goto/16 :goto_4

    .line 899
    :cond_1
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFopl5g(Ljava/util/ArrayList;)V

    .line 900
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/16 v6, 0x67

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 901
    goto/16 :goto_4

    .line 1153
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v4, "[RSU-SIMLOCK] handleMessage (EVENT_RSU_SIM_LOCK_CHANGED)"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1155
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1157
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_33

    .line 1158
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 1161
    .local v5, "simMelockEvent":[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RSU-SIMLOCK] sim melock event = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v12

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1164
    new-instance v6, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;

    invoke-direct {v6, v1, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V

    .line 1166
    .local v6, "listener":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;
    aget v7, v5, v12

    if-nez v7, :cond_2

    .line 1167
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "Unlock Phone"

    .line 1168
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Please restart the phone now since unlock setting has changed."

    .line 1169
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "OK"

    .line 1172
    invoke-virtual {v7, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1173
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 1175
    .local v7, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7, v12}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1176
    invoke-virtual {v7, v12}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1178
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1180
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1182
    .end local v5    # "simMelockEvent":[I
    .end local v6    # "listener":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;
    .end local v7    # "alertDialog":Landroid/app/AlertDialog;
    :cond_2
    goto/16 :goto_4

    .line 756
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const/4 v3, 0x0

    .line 758
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 763
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 764
    goto/16 :goto_4

    .line 768
    :cond_3
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    .line 769
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 770
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    if-nez v5, :cond_33

    .line 771
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1122
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1124
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_33

    .line 1126
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 1127
    .local v5, "phbReadyState":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    .line 1128
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v6

    .line 1129
    .local v6, "curSimState":I
    const/4 v7, 0x0

    .line 1132
    .local v7, "isSimLocked":Z
    const/4 v8, 0x4

    if-eq v6, v8, :cond_5

    if-ne v6, v15, :cond_4

    goto :goto_0

    :cond_4
    move v11, v12

    :cond_5
    :goto_0
    move v7, v11

    .line 1136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phbReadyState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",curSimState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isSimLocked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1138
    aget v8, v5, v12

    invoke-direct {v1, v8, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updatePHBStatus(IZ)V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateIccFdnStatus()V

    .line 1140
    .end local v5    # "phbReadyState":[I
    .end local v6    # "curSimState":I
    .end local v7    # "isSimLocked":Z
    goto/16 :goto_4

    .line 1145
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 1146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_DELAYED_SEND_PHB_CHANGE] isReady : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1147
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-direct {v1, v4, v12}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 1148
    goto/16 :goto_4

    .line 1068
    :pswitch_5
    const-string v4, "handleMessage (EVENT_IMSI_REFRESH_QUERY_DONE)"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1070
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1071
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 1073
    goto/16 :goto_4

    .line 1077
    :cond_6
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 1078
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iget-object v8, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1079
    const-string v6, "Invalid IMSI padding digits received."

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 1082
    :cond_7
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1083
    iput-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 1086
    :cond_8
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    const-string v8, "[0-9]+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1087
    const-string v6, "Invalid non-numeric IMSI digits received."

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 1088
    iput-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 1094
    :cond_9
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_a

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_b

    .line 1095
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 1096
    iput-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 1099
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1101
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_c

    .line 1102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 1103
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1102
    invoke-static {v12, v6}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1107
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateOperatorPlmn()V

    .line 1109
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1110
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimImsi:Ljava/lang/String;

    .line 1111
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1112
    const-string v5, "SimRecords: mImsiReadyRegistrants.notifyRegistrants"

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1115
    :cond_d
    iget v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    if-nez v5, :cond_33

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    if-ne v5, v11, :cond_33

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onAllRecordsLoaded()V

    goto/16 :goto_4

    .line 1059
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    sget-boolean v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->USERDEBUG:Z

    if-eqz v4, :cond_e

    .line 1060
    const-string v4, "handleMessage (EVENT_IMSI_REFRESH_QUERY)"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1062
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage (EVENT_IMSI_REFRESH_QUERY) mImsi= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1064
    :goto_1
    iget-object v4, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3ff

    .line 1065
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1064
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1066
    goto/16 :goto_4

    .line 1049
    :pswitch_7
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1051
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_33

    .line 1053
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 1054
    .local v5, "cfuResult":[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle EVENT_CFU_IND: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v5, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1055
    .end local v5    # "cfuResult":[I
    goto/16 :goto_4

    .line 1037
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1039
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_f

    .line 1040
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfGbanlList:Ljava/util/ArrayList;

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_GBANL record count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfGbanlList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1043
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_GBANL with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 1045
    goto/16 :goto_4

    .line 1023
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1025
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_10

    .line 1026
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1027
    .local v5, "data":[B
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_GBABP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1031
    .end local v5    # "data":[B
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_GBABP with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 1033
    goto/16 :goto_4

    .line 1007
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1008
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1010
    .restart local v5    # "data":[B
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_11

    .line 1011
    goto/16 :goto_4

    .line 1014
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_SMSP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1016
    if-eqz v5, :cond_33

    .line 1017
    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSmsp:[B

    goto/16 :goto_4

    .line 991
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    :pswitch_b
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 992
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 994
    .restart local v5    # "data":[B
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_12

    .line 995
    goto/16 :goto_4

    .line 998
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_PSISMSC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1000
    if-eqz v5, :cond_33

    .line 1001
    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfPsismsc:[B

    goto/16 :goto_4

    .line 917
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    :pswitch_c
    const-string v4, "handleMessage (EVENT_GET_SHORT_CPHSONS_DONE)"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 918
    const/4 v3, 0x0

    .line 920
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 921
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_33

    .line 922
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 923
    .restart local v5    # "data":[B
    array-length v6, v5

    invoke-static {v5, v12, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    .line 926
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 904
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    :pswitch_d
    const-string v4, "handleMessage (EVENT_GET_CPHSONS_DONE)"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 905
    const/4 v3, 0x0

    .line 907
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 908
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_33

    .line 909
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 910
    .restart local v5    # "data":[B
    array-length v6, v5

    invoke-static {v5, v12, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 912
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load EF_SPN_CPHS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 881
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    :pswitch_e
    const/4 v3, 0x0

    .line 883
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 884
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_13

    .line 885
    goto/16 :goto_4

    .line 887
    :cond_13
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFopl(Ljava/util/ArrayList;)V

    .line 888
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 889
    goto/16 :goto_4

    .line 939
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_14
    const-string v4, "handleMessage (EVENT_GET_RAT_DONE)"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 941
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 942
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iput-boolean v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    .line 943
    const/16 v5, 0x200

    if-eqz v4, :cond_15

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_15

    .line 944
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 945
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load EF_RAT complete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    aget-byte v7, v7, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 946
    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_4

    .line 948
    :cond_15
    const-string v6, "load EF_RAT fail"

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 949
    iput-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 950
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v6, v7, :cond_16

    .line 951
    const/16 v5, 0x100

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_4

    .line 953
    :cond_16
    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    .line 956
    goto/16 :goto_4

    .line 931
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_17
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 932
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_33

    .line 933
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v12

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->processEfCspPlmnModeBitUrc(I)V

    goto/16 :goto_4

    .line 577
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_18
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 578
    goto/16 :goto_4

    .line 573
    :cond_19
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 574
    goto/16 :goto_4

    .line 963
    :cond_1a
    const-string v4, "[sume receive response message"

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 964
    const/4 v3, 0x1

    .line 966
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 967
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_1b

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1b

    .line 968
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 969
    .restart local v5    # "data":[B
    if-eqz v5, :cond_33

    array-length v6, v5

    if-lt v6, v15, :cond_33

    .line 970
    aget-byte v6, v5, v12

    and-int/2addr v6, v10

    .line 971
    .local v6, "tag":I
    aget-byte v7, v5, v11

    and-int/2addr v7, v10

    .line 972
    .local v7, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[sume tag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 973
    invoke-static {v5, v15, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 974
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[sume menu title is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 975
    .end local v6    # "tag":I
    .end local v7    # "len":I
    goto/16 :goto_4

    .line 977
    .end local v5    # "data":[B
    :cond_1b
    const-string v5, "[sume null AsyncResult or exception."

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 979
    iput-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 982
    goto/16 :goto_4

    .line 984
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_1c
    iput-object v14, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    .line 986
    iget-object v4, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 987
    goto/16 :goto_4

    .line 658
    :cond_1d
    const/4 v3, 0x0

    .line 659
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 661
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1e

    .line 662
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mNewMsisdn:Ljava/lang/String;

    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    .line 663
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 665
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 667
    const-string v5, "Success to update EF[MSISDN]"

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 670
    :cond_1e
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v5, :cond_33

    .line 671
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    invoke-static {v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 673
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 858
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_1f
    const/4 v3, 0x1

    .line 860
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 862
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_20

    .line 863
    goto/16 :goto_4

    .line 866
    :cond_20
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCphsInfo:[B

    .line 868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iCPHS: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCphsInfo:[B

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 871
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isValidMBI:Z

    if-nez v5, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isCphsMailboxEnabled()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 872
    iget v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v5, v11

    iput v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 873
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 875
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 873
    const/16 v7, 0x6f4a

    const/16 v8, 0x6f17

    invoke-virtual {v5, v8, v7, v11, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_4

    .line 833
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_21
    const/4 v3, 0x1

    .line 835
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 836
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 838
    .restart local v5    # "data":[B
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_22

    .line 839
    goto/16 :goto_4

    .line 842
    :cond_22
    new-instance v6, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 845
    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 855
    goto/16 :goto_4

    .line 795
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    :cond_23
    const/4 v3, 0x0

    .line 799
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 804
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_24

    .line 805
    goto/16 :goto_4

    .line 809
    :cond_24
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    .line 812
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    if-nez v5, :cond_33

    .line 813
    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 678
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_25
    const/4 v3, 0x1

    .line 679
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 681
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v5, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 682
    if-eqz v4, :cond_2c

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2c

    .line 683
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 684
    .restart local v5    # "data":[B
    aget-byte v6, v5, v12

    and-int/2addr v6, v10

    .line 685
    .local v6, "displayCondition":I
    iput v12, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 687
    and-int/lit8 v8, v6, 0x1

    if-ne v8, v11, :cond_26

    .line 688
    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    or-int/2addr v8, v11

    iput v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 692
    :cond_26
    and-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_27

    .line 693
    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    or-int/2addr v8, v15

    iput v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 697
    :cond_27
    array-length v8, v5

    sub-int/2addr v8, v11

    invoke-static {v5, v11, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 700
    if-eqz v8, :cond_28

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 702
    const-string v8, "set mSpNameInEfSpn to null as parsing result is empty"

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 704
    iput-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 707
    :cond_28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load EF_SPN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " carrierNameDisplayCondition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 716
    sget-boolean v7, Lcom/android/internal/telephony/OemConstant;->EXP_VERSION:Z

    if-eqz v7, :cond_29

    .line 717
    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 720
    :cond_29
    iget v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eqz v7, :cond_2b

    iget v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2b

    .line 723
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 724
    .local v7, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/IOplusUiccManager;->isUsimWithCsim(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 726
    iget-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/internal/telephony/util/OplusPhoneUtil;->isCtCard(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "spn":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v9

    const-string v10, "20404"

    invoke-virtual {v9, v10, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 729
    .local v9, "operName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SPN loaded, spn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "   operName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 731
    if-eqz v8, :cond_2a

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 732
    const-string v10, "46011"

    invoke-direct {v1, v10}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 733
    const-string v10, "SPN loaded, update 46011 to set language"

    invoke-direct {v1, v10}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_2

    .line 735
    :cond_2a
    iget-object v10, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iget v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 736
    const-string v10, "SPN loaded, update mcc"

    invoke-direct {v1, v10}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 743
    .end local v7    # "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    .end local v8    # "spn":Ljava/lang/String;
    .end local v9    # "operName":Ljava/lang/String;
    :cond_2b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 746
    .end local v6    # "displayCondition":I
    :goto_3
    goto/16 :goto_4

    .line 747
    .end local v5    # "data":[B
    :cond_2c
    const-string v5, "Read EF_SPN fail!"

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 750
    iput v12, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 752
    goto/16 :goto_4

    .line 638
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_2d
    const/4 v3, 0x1

    .line 640
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 642
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2e

    .line 643
    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 644
    goto/16 :goto_4

    .line 647
    :cond_2e
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 649
    .local v5, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    .line 650
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 653
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSISDN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 656
    goto/16 :goto_4

    .line 582
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2f
    const/4 v3, 0x1

    .line 584
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 585
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 587
    .local v5, "data":[B
    const/4 v7, 0x0

    .line 588
    .local v7, "isValidMbdn":Z
    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_30

    .line 590
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EF_MBI: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 593
    aget-byte v8, v5, v12

    and-int/2addr v8, v10

    iput v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    .line 596
    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    if-eqz v8, :cond_30

    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    if-eq v8, v10, :cond_30

    .line 597
    const-string v8, "Got valid mailbox number for MBDN"

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 598
    const/4 v7, 0x1

    .line 600
    iput-boolean v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isValidMBI:Z

    .line 606
    :cond_30
    iget v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v8, v11

    iput v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 608
    if-eqz v7, :cond_31

    .line 611
    const-string v6, "EVENT_GET_MBI_DONE, to load EF_MBDN"

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 614
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v8, 0x6fc7

    const/16 v10, 0x6fc8

    iget v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    .line 615
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 614
    invoke-virtual {v6, v8, v10, v11, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_4

    .line 617
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isCphsMailboxEnabled()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 622
    const-string v8, "EVENT_GET_MBI_DONE, to load EF_MAILBOX_CPHS"

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 625
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 627
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 625
    const/16 v9, 0x6f4a

    const/16 v10, 0x6f17

    invoke-virtual {v8, v10, v9, v11, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_4

    .line 630
    :cond_32
    const-string v6, "EVENT_GET_MBI_DONE, do nothing"

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 631
    iget v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    sub-int/2addr v6, v11

    iput v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    nop

    .line 1193
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    .end local v7    # "isValidMbdn":Z
    :cond_33
    :goto_4
    if-eqz v3, :cond_34

    .line 1194
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onRecordLoaded()V

    goto :goto_6

    .line 1193
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_7

    .line 1188
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 1190
    .local v4, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "Exception parsing SIM record"

    invoke-direct {v1, v5, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLogw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1193
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    if-eqz v3, :cond_34

    .line 1194
    goto :goto_5

    .line 1197
    :cond_34
    :goto_6
    return-void

    .line 1193
    :goto_7
    if-eqz v3, :cond_35

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onRecordLoaded()V

    .line 1196
    :cond_35
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x402
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 5
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1270
    if-nez p1, :cond_0

    .line 1271
    const-string v0, "handleSimRefresh received without input"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1272
    return-void

    .line 1275
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1276
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eq v0, v1, :cond_1

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefresh, refreshResponse.aid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mParentApp.getAid() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1282
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1281
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1284
    return-void

    .line 1287
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v3, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 1352
    const-string v0, "handleSimRefresh callback to parent"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1353
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 1345
    :cond_2
    const-string v0, "handleSimRefresh with REFRESH_SESSION_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1349
    goto/16 :goto_1

    .line 1332
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefresh with REFRESH_INIT_FILE_UPDATED, EFID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1335
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1336
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1338
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_b

    .line 1340
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1325
    :cond_4
    const-string v0, "handleRefresh with REFRESH_INIT_FULL_FILE_UPDATED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    .line 1328
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1329
    goto :goto_1

    .line 1302
    :cond_5
    const-string v0, "handleRefresh with SIM_REFRESH_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1303
    const-string v0, "ro.vendor.sim_refresh_reset_by_modem"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1304
    const-string v0, "sim_refresh_reset_by_modem false"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_7

    .line 1306
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    goto :goto_0

    .line 1309
    :cond_6
    const-string v0, "Sim reset by modem!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1311
    :cond_7
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    .line 1315
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMovistarDualSim:Z

    if-nez v0, :cond_8

    .line 1316
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    goto :goto_1

    .line 1318
    :cond_8
    const-string v0, "SIMRecords"

    const-string v1, "handleRefresh: isMovistarDualSim don\'t handleFileUpdate"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    goto :goto_1

    .line 1295
    :cond_9
    const-string v0, "handleRefresh with SIM_REFRESH_INIT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1299
    goto :goto_1

    .line 1289
    :cond_a
    const-string v0, "handleRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1291
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1292
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1293
    nop

    .line 1356
    :cond_b
    :goto_1
    return-void
.end method

.method public blacklist isFetchRatBalancingAndEnsFile(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 2713
    const-string v0, "persist.vendor.radio.sim.opid"

    .line 2714
    .local v0, "strPropOperatorId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2716
    .local v1, "isFetch":Z
    if-lez p1, :cond_0

    .line 2717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2719
    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2720
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "145"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2721
    :cond_1
    const/4 v1, 0x1

    .line 2723
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFetchRatBalancingAndEnsFile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2724
    return v1
.end method

.method public blacklist isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 4

    .line 1628
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "MCCMNC":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "PNN":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOperatorMvnoForEfPnn(): mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1632
    return-object v1

    .line 1633
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 6

    .line 1596
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v0

    .line 1597
    .local v0, "spnOverride":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1598
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 1597
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "imsiPattern":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1601
    .local v2, "mccmnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOperatorMvnoForImsi(), imsiPattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mccmnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1604
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1607
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1609
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOperatorMvnoForImsi(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1611
    return-object v3

    .line 1605
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public blacklist isPhbReady()Z
    .locals 10

    .line 2553
    const-string v0, "false"

    .line 2554
    .local v0, "strPhbReady":Ljava/lang/String;
    const-string v1, ""

    .line 2555
    .local v1, "strAllSimState":Ljava/lang/String;
    const-string v2, ""

    .line 2556
    .local v2, "strCurSimState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2558
    .local v3, "isSimLocked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phbReady(): cached mPhbReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    const-string v6, "false"

    const-string v7, "true"

    if-eqz v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2560
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 2564
    :cond_1
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v8, "vendor.gsm.sim.ril.phbready"

    invoke-static {v4, v8, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2567
    const-string v4, "ro.vendor.mtk_ril_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "c6m_1rild"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "phbReady(): strPhbReady = "

    if-eqz v4, :cond_2

    .line 2569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 2573
    :cond_2
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2574
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2575
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2576
    .local v4, "values":[Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    if-ltz v8, :cond_3

    array-length v9, v4

    if-ge v8, v9, :cond_3

    aget-object v9, v4, v8

    if-eqz v9, :cond_3

    .line 2577
    aget-object v2, v4, v8

    .line 2580
    .end local v4    # "values":[Ljava/lang/String;
    :cond_3
    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_5

    .line 2581
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v8

    :goto_2
    move v3, v4

    .line 2584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", strAllSimState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    move v5, v8

    :cond_6
    return v5

    .line 2561
    :cond_7
    :goto_3
    return v5
.end method

.method public blacklist isRadioAvailable()Z
    .locals 3

    .line 2481
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2482
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2484
    :cond_1
    return v1
.end method

.method protected blacklist isSpnActive()Z
    .locals 8

    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, "bSpnActive":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 1572
    .local v1, "spn":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1

    .line 1573
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const-string v4, " set bSpnActive to true"

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-ne v2, v3, :cond_0

    .line 1574
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/4 v7, 0x3

    if-lt v3, v7, :cond_1

    aget-byte v2, v2, v5

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_1

    .line 1575
    const/4 v0, 0x1

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpnActive USIM mEfSST is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 1577
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1576
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1579
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/4 v7, 0x5

    if-lt v3, v7, :cond_1

    aget-byte v2, v2, v6

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    .line 1580
    const/4 v0, 0x1

    .line 1581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpnActive SIM mEfSST is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 1582
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1586
    :cond_1
    :goto_0
    return v0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2768
    return-void
.end method

.method protected blacklist onAllRecordsLoaded()V
    .locals 8

    .line 1391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1397
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    .line 1399
    return-void

    .line 1402
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 1404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1405
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;->DEFAULT:Lcom/android/internal/telephony/uicc/IOplusSIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;

    .line 1415
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/uicc/IOplusSIMRecords;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;->oppoProcessChangeRegion(Landroid/content/Context;I)V

    .line 1419
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "operator":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAllRecordsLoaded operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1425
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1428
    if-eqz v1, :cond_6

    .line 1429
    const/4 v3, 0x0

    .line 1430
    .local v3, "newName":Ljava/lang/String;
    const-string v4, "46002"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "46007"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1431
    :cond_2
    const-string v1, "46000"

    .line 1433
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1434
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    .line 1433
    const/4 v7, 0x1

    invoke-virtual {v4, v5, v1, v7, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1436
    const-string v4, "vendor.gsm.sim.operator.default-name"

    invoke-direct {p0, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v4, "21405"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "21407"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1443
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMovistarDualSim:Z

    goto :goto_1

    .line 1440
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAllRecordsLoaded isMovistarDualSim ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMovistarDualSim:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SIMRecords"

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMovistarDualSim:Z

    .line 1448
    .end local v3    # "newName":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchPnnAndOpl()V

    .line 1449
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchCPHSOns()V

    .line 1450
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchRatBalancing()V

    .line 1451
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchSmsp()V

    .line 1452
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchGbaRecords()V

    .line 1453
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchOpl5g()V

    .line 1455
    return-void

    .line 1407
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/uicc/IOplusSIMRecords;
    .end local v1    # "operator":Ljava/lang/String;
    :cond_7
    :goto_2
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    .line 1409
    return-void
.end method

.method protected blacklist onLocked()V
    .locals 2

    .line 2777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    .line 2778
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2780
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mLockedRecordsReqReason:I

    if-eqz v0, :cond_0

    .line 2781
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 2782
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onRecordLoaded()V

    .line 2783
    return-void

    .line 2786
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V

    .line 2787
    return-void
.end method

.method protected blacklist resetRecords()V
    .locals 2

    .line 436
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 437
    const-string v0, "vendor.gsm.sim.operator.default-name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public blacklist setEfGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2434
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2436
    .local v0, "data":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fd6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2437
    return-void
.end method

.method public blacklist setPhbReady(Z)V
    .locals 4
    .param p1, "isReady"    # Z

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhbReady(): isReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2593
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_3

    .line 2594
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 2595
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2596
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setPhonebookReady(ILandroid/os/Message;)V

    goto :goto_1

    .line 2597
    :cond_1
    if-nez p1, :cond_2

    .line 2598
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setPhonebookReady(ILandroid/os/Message;)V

    .line 2600
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 2602
    :cond_3
    return-void
.end method

.method protected blacklist setSpnFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    .line 1532
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1534
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1533
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1536
    :cond_0
    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 11
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialNumber"    # Ljava/lang/String;

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 477
    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v0

    goto :goto_0

    .line 478
    :cond_1
    move v3, v2

    :goto_0
    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mRecordsEventsRegistrants: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 481
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->checkEfCfis()Z

    move-result v3

    const/16 v4, 0xe

    if-eqz v3, :cond_5

    .line 486
    if-eqz p2, :cond_2

    .line 487
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    aget-byte v5, v3, v0

    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    goto :goto_1

    .line 489
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xfe

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 492
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCallForwardingFlag: enable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEfCfis="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    .line 493
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 497
    if-eqz p2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_CFIS: updating cf number, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLogv(Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->convertNumberIfContainsPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "tmpDialNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 506
    .local v1, "bcdNumber":[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v5, 0x3

    array-length v6, v1

    invoke-static {v1, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v5, 0x2

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 509
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    .line 510
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/16 v6, 0xf

    aput-byte v5, v3, v6

    .line 514
    .end local v0    # "tmpDialNumber":Ljava/lang/String;
    .end local v1    # "bcdNumber":[B
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_4

    .line 515
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6fcb

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v9, 0x0

    const/16 v0, 0x6fcb

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 515
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 519
    :cond_4
    const-string v0, "setVoiceCallForwardingFlag: mFh is null, skip update EF_CFIS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " invalid mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    .line 523
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 526
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_8

    .line 527
    if-eqz p2, :cond_6

    .line 528
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xf0

    or-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_3

    .line 531
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xf0

    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 535
    :goto_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    .line 538
    const/16 v2, 0x6f13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 536
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_4

    .line 540
    :cond_7
    const-string v0, "setVoiceCallForwardingFlag: mFh is null, skip update EF_CFF_CPHS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_8
    :goto_4
    goto :goto_5

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLogw(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    return-void
.end method

.method protected blacklist setVoiceCallForwardingFlagFromSimRecords()V
    .locals 5

    .line 2682
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->checkEfCfis()Z

    move-result v0

    const/4 v1, 0x1

    .line 2685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2682
    if-eqz v0, :cond_0

    .line 2683
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 2684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS2: callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 2686
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_2

    .line 2687
    nop

    .line 2688
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 2689
    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF2: callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2691
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 2693
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 2694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2697
    :goto_1
    return-void
.end method

.method protected blacklist setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    .line 1541
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    const-string v0, "setVoiceMailByCountry"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1547
    :cond_0
    return-void
.end method

.method public blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceMailNumber, mIsVoiceMailFixed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMailboxIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCphsMailboxEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isCphsMailboxEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voiceNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 467
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 468
    return-void
.end method

.method protected blacklist shallIgnoreMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2728
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "["

    const-string v2, "Received message "

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2734
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]  while being destroyed. Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 2736
    const/4 v0, 0x1

    return v0

    .line 2730
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]  while being destroyed. Keep going!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 2732
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist updateIccFdnStatus()V
    .locals 0

    .line 2488
    return-void
.end method

.method protected blacklist updateOperatorPlmn()V
    .locals 10

    .line 2792
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 2794
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 2796
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 2797
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x6

    if-lt v1, v5, :cond_2

    .line 2798
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2799
    .local v1, "mccmncCode":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 2800
    .local v8, "mccmnc":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2801
    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    .line 2802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: setting1 mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2803
    goto :goto_1

    .line 2799
    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2809
    .end local v1    # "mccmncCode":Ljava/lang/String;
    :cond_2
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-nez v1, :cond_4

    .line 2811
    :cond_3
    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2812
    .local v1, "mcc":I
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    .line 2813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting2 mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    .end local v1    # "mcc":I
    goto :goto_2

    .line 2814
    :catch_0
    move-exception v1

    .line 2815
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 2819
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_2
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eq v1, v2, :cond_5

    .line 2820
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_5

    .line 2821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mccmnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2825
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 2828
    :cond_5
    return-void
.end method
