.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.super Landroid/os/Handler;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
    }
.end annotation


# static fields
.field private static final blacklist DATA_CONFIG_MULTI_PS:I = 0x1

.field private static final blacklist DBG:Z = true

.field private static final blacklist EVENT_CALL_ADDITIONAL_INFO:I = 0x46

.field private static final blacklist EVENT_DSDA_STATE_CHANGED:I = 0x32

.field private static final blacklist EVENT_ID_INTVL:I = 0xa

.field private static final blacklist EVENT_NO_CS_CALL_AFTER_SRVCC:I = 0x28

.field private static final blacklist EVENT_RADIO_UNAVAILABLE:I = 0xa

.field private static final blacklist EVENT_SUBSCRIPTION_CHANGED:I = 0x0

.field private static final blacklist EVENT_VOICE_CALL_ENDED:I = 0x1e

.field private static final blacklist EVENT_VOICE_CALL_OFFHOOK:I = 0x3c

.field private static final blacklist EVENT_VOICE_CALL_STARTED:I = 0x14

.field private static final blacklist INVALID_ICCID:Ljava/lang/String; = "N/A"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DcHelper"

.field private static final blacklist MT_CALL_MISSED:I = 0x2

.field private static final blacklist MT_CALL_NUMREDIRECT:I = 0x3

.field private static final blacklist MT_CALL_REJECTED:I = 0x1

.field private static final blacklist MT_CALL_RQ:I = 0x4

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final blacklist PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

.field private static final blacklist PROP_DATA_CONFIG:Ljava/lang/String; = "ro.vendor.mtk_data_config"

.field private static final blacklist RIL_CDMA_DUALACT_SUPPORT:Ljava/lang/String; = "vendor.ril.cdma.3g.dualact"

.field private static final blacklist VDBG:Z

.field private static final blacklist mOperatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;


# instance fields
.field protected final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDsdaMode:I

.field private blacklist mGwsdDualSimStatusArray:[Z

.field private blacklist mHasFetchMpsAttachSupport:Z

.field private blacklist mIsCallingArray:[Z

.field private blacklist mIsPhoneOffhook:Z

.field private blacklist mMpsAttachSupport:Z

.field protected blacklist mPhoneNum:I

.field protected blacklist mPhones:[Lcom/android/internal/telephony/Phone;

.field private blacklist mRspHandler:Landroid/os/Handler;

.field private blacklist mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field private blacklist mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 97
    nop

    .line 96
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->VDBG:Z

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 141
    const-string v0, "vendor.gsm.sim.ril.testsim"

    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    const-string v2, "vendor.gsm.sim.ril.testsim.3"

    const-string v3, "vendor.gsm.sim.ril.testsim.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    .line 148
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mOperatorMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 209
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mHasFetchMpsAttachSupport:Z

    .line 112
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mMpsAttachSupport:Z

    .line 139
    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    .line 157
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 182
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z

    .line 183
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    .line 210
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mContext:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 212
    array-length v1, p2

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    .line 213
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    .line 214
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    aput-boolean v0, v2, v1

    .line 217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    aput-boolean v0, v2, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->registerEvents()V

    .line 220
    return-void
.end method

.method static synthetic blacklist access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z

    return p1
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    return v0
.end method

.method static synthetic blacklist access$202(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInSRVCC()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallStarted()V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Lcom/android/internal/telephony/Call$SrvccState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    return-object v0
.end method

.method static synthetic blacklist access$602(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .param p1, "x1"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 93
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    return-object p1
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallEnded()V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInCallStatusInternel()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .locals 2

    .line 367
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    if-eqz v0, :cond_0

    .line 370
    return-object v0

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not be called before makesMtkDcHelper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasVsimApn([Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnTypes"    # [Ljava/lang/String;

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "hasVsimApn":Z
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 650
    const-string v2, "hasVsimApn: apnTypes is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->loge(Ljava/lang/String;)V

    .line 651
    return v1

    .line 653
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 654
    return v1

    .line 656
    :cond_1
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    .line 657
    .local v3, "type":Ljava/lang/String;
    const-string v4, "vsim"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 658
    const/4 v0, 0x1

    .line 659
    goto :goto_1

    .line 656
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_3
    :goto_1
    return v0
.end method

.method public static blacklist isCdma3GCard(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 744
    const/4 v0, 0x0

    if-ltz p0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 752
    .local v1, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 745
    .end local v1    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma3GCard invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 746
    return v0
.end method

.method public static blacklist isCdma3GDualModeCard(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 731
    const/4 v0, 0x0

    if-ltz p0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 739
    .local v1, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 732
    .end local v1    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma3GDualModeCard invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 733
    return v0
.end method

.method public static blacklist isCdma4GDualModeCard(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 718
    const/4 v0, 0x0

    if-ltz p0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 726
    .local v1, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 719
    .end local v1    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma4GDualModeCard invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 720
    return v0
.end method

.method public static blacklist isCdmaDualActivationSupport()Z
    .locals 2

    .line 714
    const-string v0, "vendor.ril.cdma.3g.dualact"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isImsOrEmergencyApn([Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnTypes"    # [Ljava/lang/String;

    .line 611
    const/4 v0, 0x1

    .line 612
    .local v0, "isImsApn":Z
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 613
    const-string v2, "isImsOrEmergencyApn: apnTypes is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->loge(Ljava/lang/String;)V

    .line 614
    return v1

    .line 616
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 617
    return v1

    .line 619
    :cond_1
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    .line 620
    .local v3, "type":Ljava/lang/String;
    const-string v4, "ims"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 621
    const-string v4, "emergency"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 622
    const/4 v0, 0x0

    .line 623
    goto :goto_1

    .line 619
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_3
    :goto_1
    return v0
.end method

.method private blacklist isInCallStatusInternel()Z
    .locals 3

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_1

    .line 802
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 803
    const/4 v0, 0x1

    .line 804
    goto :goto_1

    .line 801
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isInSRVCC()Z
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 786
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 788
    .local v0, "preferredDataPhoneId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 790
    .local v1, "curPhoneId":I
    if-eq v0, v1, :cond_1

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current phone is not preferred phone: curPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preferredDataPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 794
    const/4 v2, 0x0

    return v2

    .line 796
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method protected static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 818
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void
.end method

.method protected static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 824
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method protected static blacklist logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 830
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void
.end method

.method protected static blacklist logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 812
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void
.end method

.method public static blacklist makeMtkDcHelper(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 258
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 262
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeMtkDcHelper: phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->updatePhones([Lcom/android/internal/telephony/Phone;)V

    .line 269
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makesMtkDcHelper: X sMtkDcHelper ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    return-object v0

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist onVoiceCallEnded()V
    .locals 3

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceCallEnded: mPhone[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 484
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onVoiceCallEndedEx()V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist onVoiceCallStarted()V
    .locals 3

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceCallStarted: mPhone[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 476
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onVoiceCallStartedEx()V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist registerEvents()V
    .locals 5

    .line 387
    const-string v0, "registerEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x14

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDsdaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x46

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 407
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    const-string v1, "registered phone change event."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private blacklist shouldAutoAttachForCall(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 768
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 769
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v1

    .line 770
    .local v1, "phoneSwitcher":Lcom/android/internal/telephony/PhoneSwitcher;
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 772
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 773
    .local v2, "mAutoAttach":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldAutoAttachForCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getVoiceNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 777
    :cond_1
    return v2
.end method

.method private blacklist unregisterEvents()V
    .locals 3

    .line 441
    const-string v0, "unregisterEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 445
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 446
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 447
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDsdaStateChanged(Landroid/os/Handler;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 223
    const-string v0, "MtkDcHelper.dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->unregisterEvents()V

    .line 225
    return-void
.end method

.method public blacklist getDsdaMode()I
    .locals 1

    .line 782
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    return v0
.end method

.method public blacklist hasMdAutoSetupImsCapability()Z
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 699
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 700
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasMdAutoSetupImsCapability()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 701
    const-string v0, "hasMdAutoSetupImsCapability: true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 702
    return v2

    .line 704
    :cond_0
    const-string v0, "hasMdAutoSetupImsCapability: false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 705
    return v1
.end method

.method public blacklist isAllCallingStateIdle()Z
    .locals 5

    .line 561
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneConstants$State;

    .line 562
    .local v0, "state":[Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v1, 0x0

    .line 563
    .local v1, "allCallingState":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v2, v3, :cond_1

    .line 564
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    aput-object v3, v0, v2

    .line 566
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 567
    const/4 v1, 0x1

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_0
    const/4 v1, 0x0

    .line 574
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->VDBG:Z

    if-eqz v2, :cond_2

    .line 576
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v2, v3, :cond_2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCallingStateIdle: state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " allCallingState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 581
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public blacklist isDataAllowedForConcurrent(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 636
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 637
    const-string v0, "isDataAllowedForConcurrent: invalid calling phone id"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 638
    return v1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isAllCallingStateIdle()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataSupportConcurrent(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    return v1

    .line 642
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDataSupportConcurrent(I)Z
    .locals 10
    .param p1, "phoneId"    # I

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "callingPhoneIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 496
    const-string v1, "isDataSupportConcurrent: no calling phone!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 497
    return v2

    .line 501
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_9

    .line 502
    const/4 v3, 0x0

    .line 503
    .local v3, "isConcurrent":Z
    const/4 v4, 0x0

    .line 504
    .local v4, "inSrvcc":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 505
    .local v5, "ct":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 507
    .local v6, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-nez v6, :cond_3

    .line 508
    move v7, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v7

    .line 510
    .local v7, "inPsEcc":Z
    :goto_1
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 511
    .local v8, "csCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    if-eqz v5, :cond_5

    .line 512
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getHandoverConnectionSize()I

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    move v4, v2

    .line 513
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 516
    :cond_5
    if-nez v7, :cond_7

    if-nez v4, :cond_7

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v2, :cond_6

    goto :goto_3

    .line 525
    :cond_6
    const/4 v2, 0x1

    .end local v3    # "isConcurrent":Z
    .local v2, "isConcurrent":Z
    goto :goto_4

    .line 518
    .end local v2    # "isConcurrent":Z
    .restart local v3    # "isConcurrent":Z
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    .line 520
    .end local v3    # "isConcurrent":Z
    .restart local v2    # "isConcurrent":Z
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->shouldAutoAttachForCall(I)Z

    move-result v3

    .line 521
    .local v3, "mShouldAutoAttach":Z
    if-eqz v3, :cond_8

    .line 522
    const/4 v2, 0x1

    .line 524
    .end local v3    # "mShouldAutoAttach":Z
    :cond_8
    nop

    .line 528
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDataSupportConcurrent: (voice/data on the same phone) isConcurrent = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", phoneId = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", callingPhoneId = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inPsEcc = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inSrvcc = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", csCallState = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 532
    return v2

    .line 535
    .end local v2    # "isConcurrent":Z
    .end local v4    # "inSrvcc":Z
    .end local v5    # "ct":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    .end local v6    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "inPsEcc":Z
    .end local v8    # "csCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_9
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    if-ne v3, v2, :cond_a

    .line 536
    const-string v1, "DSDA mode, support concurrent"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 537
    return v2

    .line 541
    :cond_a
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    .line 542
    .local v3, "tmEx":Lcom/mediatek/telephony/MtkTelephonyManagerEx;
    const/4 v4, 0x0

    .line 543
    .local v4, "isDataAvailable":Z
    if-eqz v3, :cond_b

    .line 544
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 545
    .local v5, "mVoicePhoneId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    aget-boolean v6, v6, v5

    .line 546
    invoke-virtual {v3, v6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isDataAvailableForGwsdDualSim(Z)Z

    move-result v4

    .line 547
    if-eqz v4, :cond_b

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDataAvailable: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mGwsdDualSimStatusArray["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    aget-boolean v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 551
    return v2

    .line 555
    .end local v5    # "mVoicePhoneId":I
    :cond_b
    const-string v2, "isDataSupportConcurrent return false."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 556
    return v1
.end method

.method public blacklist isMultiPsAttachSupport()Z
    .locals 3

    .line 686
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mHasFetchMpsAttachSupport:Z

    if-nez v0, :cond_1

    .line 687
    const/4 v0, 0x0

    const-string v1, "ro.vendor.mtk_data_config"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 689
    .local v0, "config":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 690
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mMpsAttachSupport:Z

    .line 692
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mHasFetchMpsAttachSupport:Z

    .line 694
    .end local v0    # "config":I
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mMpsAttachSupport:Z

    return v0
.end method

.method public blacklist isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z
    .locals 4
    .param p1, "opt"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
    .param p2, "phoneId"    # I

    .line 376
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "mccMnc":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mOperatorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 379
    .local v1, "bMatched":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOperatorMccMnc: mccmnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bMatched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 382
    return v1
.end method

.method public blacklist isSimInserted(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimInserted:phoneId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 669
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "iccid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isSimMeLockAllowed(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 757
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPsAllowedByPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    return v0

    .line 764
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isTestIccCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, "testCard":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestIccCard: phoneId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", iccType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 678
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isWifiCallingEnabled()Z
    .locals 5

    .line 585
    const/4 v0, 0x0

    .line 587
    .local v0, "isWifiCallingEnabled":Z
    nop

    .line 588
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 587
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 589
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_2

    .line 591
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v2, v3, :cond_1

    .line 592
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    aget-boolean v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 594
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    .line 595
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 594
    invoke-interface {v1, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v3

    move v0, v3

    .line 596
    if-eqz v0, :cond_0

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiCallingEnabled phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    goto :goto_1

    .line 591
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v2    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 602
    :catch_0
    move-exception v2

    .line 603
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 607
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return v0
.end method

.method public blacklist registerImsEvents(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 415
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const-string v0, "registerImsEvents, invalid phoneId"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 417
    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerImsEvents, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 426
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 428
    .local v1, "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x14

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 430
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 432
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x28

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    .end local v1    # "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    goto :goto_0

    .line 435
    :cond_1
    const-string v1, "Not register IMS phone calling state yet."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void
.end method

.method public blacklist unregisterImsEvents(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 454
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const-string v0, "unregisterImsEvents, invalid phoneId"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 456
    return-void

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterImsEvents, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 462
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 464
    .local v1, "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 465
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 466
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;)V

    .line 467
    .end local v1    # "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    goto :goto_0

    .line 468
    :cond_1
    const-string v1, "Not unregister IMS phone calling state yet."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void
.end method

.method public blacklist updatePhones([Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhones: prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    array-length v1, p1

    if-le v0, v1, :cond_0

    return-void

    .line 231
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    .line 233
    .local v0, "prevPhoneNum":I
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 234
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    .line 235
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    .line 236
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 239
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsCallingArray:[Z

    aput-boolean v3, v2, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    :cond_1
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0xa

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x14

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDsdaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x46

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
