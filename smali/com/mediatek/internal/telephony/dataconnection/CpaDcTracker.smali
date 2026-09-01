.class public Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
.super Landroid/os/Handler;
.source "CpaDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;,
        Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    }
.end annotation


# static fields
.field public static final blacklist ABORT:Ljava/lang/String; = "ABORT"

.field public static final blacklist CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final blacklist CPA_DCT_STATE_APN_UPDATE:I = 0x1

.field public static final blacklist CPA_DCT_STATE_CONNECTED:I = 0x5

.field public static final blacklist CPA_DCT_STATE_CONNECTING:I = 0x4

.field public static final blacklist CPA_DCT_STATE_DISCONNECTED:I = 0x3

.field public static final blacklist CPA_DCT_STATE_DISCONNECTING:I = 0x2

.field public static final blacklist CPA_DCT_STATE_LOST_NW:I = 0x6

.field public static final blacklist CPA_DCT_STATE_NONE:I = 0x0

.field public static final blacklist CPA_DCT_STATE_RETRYING:I = 0x7

.field public static final blacklist CPA_DC_ALREADY_ACTIVE:I = 0x0

.field public static final blacklist CPA_DC_DATA_SOCKET_DISABLED:I = 0x5

.field public static final blacklist CPA_DC_REQUEST_FAILED:I = 0x3

.field public static final blacklist CPA_DC_REQUEST_NOT_AVAILABLE:I = 0x4

.field public static final blacklist CPA_DC_REQUEST_STARTED:I = 0x1

.field public static final blacklist CPA_DC_TYPE_NOT_AVAILABLE:I = 0x2

.field private static final blacklist CPA_NAVI_APN_ID:I = 0x63

.field public static final blacklist CPA_RTN_AUTHENTICATION_ERROR:I = -0x3

.field public static final blacklist CPA_RTN_PARAMTER_ERROR:I = -0x1

.field public static final blacklist CPA_RTN_RADIO_NOT_AVAILABLE:I = -0x2

.field public static final blacklist CPA_RTN_SUCCESS:I = 0x0

.field public static final blacklist CPA_RTN_UNKNOWN_ERROR:I = -0x4

.field private static final blacklist DBG:Z = true

.field public static final blacklist DEFAULT_MODE:Ljava/lang/String; = "DEFAULT"

.field public static final blacklist EVENT_ALL_DC_DISCONNECTED:I = 0x2

.field public static final blacklist EVENT_ALL_DC_DISCONNECTING:I = 0x1

.field public static final blacklist EVENT_APN_UPDATE:I = 0x0

.field public static final blacklist EVENT_CPA_DC_CONNECTED:I = 0x4

.field public static final blacklist EVENT_CPA_DC_CONNECTING:I = 0x3

.field public static final blacklist EVENT_CPA_DC_LOST_CONNECTION:I = 0x5

.field public static final blacklist EVENT_CPA_DC_PROTOCOL_ERRORS:I = 0x7

.field public static final blacklist EVENT_CPA_DC_RETRY:I = 0x6

.field public static final blacklist EXTRA_CONNECTIVITY_STATUS:Ljava/lang/String; = "connStatus"

.field public static final blacklist EXTRA_ERRNO:Ljava/lang/String; = "errno"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CpaDct"

.field public static final blacklist MTK_CPA_SUPPORT:Z = true

.field public static final blacklist NAVI_MODE:Ljava/lang/String; = "NAVI"

.field public static final blacklist NONE:Ljava/lang/String; = "NONE"

.field public static final blacklist REQ_TO_DEFAULT:I = 0x1

.field public static final blacklist REQ_TO_NAVI:I = 0x0

.field public static final blacklist STATE_CONNECTED:I = 0x2

.field public static final blacklist STATE_CONNECTING:I = 0x1

.field public static final blacklist STATE_DISCONNECTED:I = 0x4

.field public static final blacklist STATE_DISCONNECTING:I = 0x3

.field private static final blacklist VDBG:Z

.field private static blacklist sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

.field public blacklist mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

.field public blacklist mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

.field private blacklist mCpaDctState:I

.field private blacklist mCurrentCpaMode:Ljava/lang/String;

.field private blacklist mCurrentPhoneId:I

.field private blacklist mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

.field protected blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field protected blacklist mPhoneId:I

.field private blacklist mRequestCpaMode:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 75
    nop

    .line 74
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->VDBG:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentPhoneId:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    .line 85
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 87
    const-string v1, "DEFAULT"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 88
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 92
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    .line 105
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    .line 191
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 193
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhoneId:I

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 196
    return-void
.end method

.method private blacklist converEventIdToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "eventId"    # I

    .line 779
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown eventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 793
    :cond_0
    const-string v0, "EVENT_CPA_DC_PROTOCOL_ERRORS"

    return-object v0

    .line 791
    :cond_1
    const-string v0, "EVENT_CPA_DC_LOST_CONNECTION"

    return-object v0

    .line 789
    :cond_2
    const-string v0, "EVENT_CPA_DC_CONNECTED"

    return-object v0

    .line 787
    :cond_3
    const-string v0, "EVENT_CPA_DC_CONNECTING"

    return-object v0

    .line 785
    :cond_4
    const-string v0, "EVENT_ALL_DC_DISCONNECTED"

    return-object v0

    .line 783
    :cond_5
    const-string v0, "EVENT_ALL_DC_DISCONNECTING"

    return-object v0

    .line 781
    :cond_6
    const-string v0, "EVENT_APN_UPDATE"

    return-object v0
.end method

.method private blacklist converToCpaDcState(Lcom/android/internal/telephony/DctConstants$State;)I
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DctConstants$State;

    .line 734
    const/4 v0, 0x4

    .line 736
    .local v0, "cpaDcState":I
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 749
    :pswitch_0
    const/4 v0, 0x3

    .line 750
    goto :goto_0

    .line 746
    :pswitch_1
    const/4 v0, 0x2

    .line 747
    goto :goto_0

    .line 743
    :pswitch_2
    const/4 v0, 0x1

    .line 744
    goto :goto_0

    .line 739
    :pswitch_3
    const/4 v0, 0x4

    .line 740
    nop

    .line 755
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist converToCpaReturnCode(I)I
    .locals 2
    .param p1, "cause"    # I

    .line 759
    const/4 v0, -0x4

    .line 761
    .local v0, "errorCode":I
    const/4 v1, -0x5

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_0

    const v1, 0x10001

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 766
    :cond_0
    const/4 v0, -0x3

    .line 767
    goto :goto_0

    .line 763
    :cond_1
    const/4 v0, 0x0

    .line 764
    goto :goto_0

    .line 770
    :cond_2
    const/4 v0, -0x2

    .line 775
    :goto_0
    return v0
.end method

.method private blacklist createCpaApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lmediatek/telephony/data/MtkApnSetting;
    .locals 36
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "proxyHost"    # Ljava/lang/String;
    .param p6, "proxyPort"    # Ljava/lang/String;

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "apnTypesBitmask":I
    const-string v2, "default"

    const-string v3, "mms"

    const-string v4, "supl"

    const-string v5, "dun"

    const-string v6, "hipri"

    const-string v7, "fota"

    const-string v8, "cbs"

    const-string v9, "ia"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 591
    .local v2, "types":[Ljava/lang/String;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v34

    .line 592
    .local v34, "operator":Ljava/lang/String;
    const/4 v4, 0x0

    .line 595
    .local v4, "proxyPortNum":I
    :try_start_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    .line 598
    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 597
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "[CpaDct]proxyPort is a invalid format"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    move v0, v4

    .line 600
    .end local v4    # "proxyPortNum":I
    .local v0, "proxyPortNum":I
    :goto_0
    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CpaDct]createCpaApn Cpa apnTypesBitmask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 603
    new-instance v35, Lmediatek/telephony/data/MtkApnSetting;

    const/16 v5, 0x63

    .line 607
    const-string v4, ""

    if-eqz p1, :cond_0

    move-object/from16 v8, p1

    goto :goto_1

    :cond_0
    move-object v8, v4

    .line 608
    :goto_1
    if-eqz p5, :cond_1

    move-object/from16 v9, p5

    goto :goto_2

    :cond_1
    move-object v9, v4

    :goto_2
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 612
    if-eqz p2, :cond_2

    move-object/from16 v14, p2

    goto :goto_3

    :cond_2
    move-object v14, v4

    .line 613
    :goto_3
    if-eqz p3, :cond_3

    move-object/from16 v15, p3

    goto :goto_4

    :cond_3
    move-object v15, v4

    :goto_4
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    const v21, 0x5ffff

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v7, "CPA"

    const-string v12, ""

    const-string v29, ""

    move-object/from16 v4, v35

    move-object/from16 v6, v34

    move v10, v0

    move/from16 v16, p4

    move/from16 v17, v1

    invoke-direct/range {v4 .. v33}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    .line 603
    return-object v35
.end method

.method private blacklist createCpaConnection(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;Landroid/telephony/data/ApnSetting;)V
    .locals 1
    .param p1, "mode"    # Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    .param p2, "apn"    # Landroid/telephony/data/ApnSetting;

    .line 628
    const-string v0, "[CpaDct]create mCpaConnInfo"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 630
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;-><init>(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    .line 631
    iput-object p1, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    .line 632
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    .line 633
    return-void
.end method

.method public static blacklist getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
    .locals 2

    .line 568
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-eqz v0, :cond_0

    .line 571
    return-object v0

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[CpaDct]Should not be called before makesCpaDcTracker"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 807
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method protected static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 813
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method protected static blacklist logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 819
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method protected static blacklist logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 801
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public static blacklist makeCpaDcTracker(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 205
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 209
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]makeCpaDcTracker: X sCpaDcTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    return-object v0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/DctConstants$State;

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]setCpaConnectionStatus() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, p1, :cond_1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]old mCpaConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new mCpaConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 712
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    .line 715
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist CpaChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authType"    # I
    .param p6, "dns1"    # Ljava/lang/String;
    .param p7, "dns2"    # Ljava/lang/String;
    .param p8, "proxyHost"    # Ljava/lang/String;
    .param p9, "proxyPort"    # Ljava/lang/String;

    .line 422
    move-object v7, p0

    move-object v8, p1

    const/4 v9, 0x3

    .line 423
    .local v9, "retValue":I
    const/4 v10, 0x0

    .line 425
    .local v10, "newCpaApnSetting":Lmediatek/telephony/data/MtkApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]CpaChanged, mCurrentCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCpaDctState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 435
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 436
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "[CpaDct]switch procedure is on-gonig"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 438
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 439
    :cond_0
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    const-string v0, "[CpaDct]interrupt the switching procedure!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 443
    iput-object v8, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 445
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 447
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 448
    const/4 v9, 0x1

    .line 449
    .end local v0    # "msg":Landroid/os/Message;
    goto/16 :goto_1

    .line 451
    :cond_1
    const-string v0, "[CpaDct]Unhandled with this case!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 454
    :cond_2
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const-string v0, "[CpaDct]cpa mode is not changed"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 456
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 459
    :cond_3
    iget v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-eq v0, v3, :cond_4

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]Unhandled with mCpaDctState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 464
    :cond_4
    iput-object v8, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 467
    const-string v0, "NAVI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, " to "

    const-string v4, "[CpaDct]Cpa changed from "

    if-eqz v0, :cond_b

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 471
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v0

    const/4 v12, 0x2

    if-nez v0, :cond_5

    .line 472
    const-string v0, "[CpaDct] mobile data off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 473
    return v12

    .line 477
    :cond_5
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v13

    .line 478
    .local v13, "serviceState":I
    if-eq v13, v2, :cond_a

    if-ne v13, v12, :cond_6

    goto :goto_0

    .line 485
    :cond_6
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->createCpaApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lmediatek/telephony/data/MtkApnSetting;

    move-result-object v10

    .line 488
    if-nez v10, :cond_7

    .line 489
    const-string v0, "[CpaDct]Cpa APN configuration error"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 490
    return v12

    .line 494
    :cond_7
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    if-eqz v0, :cond_8

    .line 495
    invoke-virtual {v0, v10}, Lmediatek/telephony/data/MtkApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 496
    :cond_8
    const-string v0, "[CpaDct]update new Cpa APN settings!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 497
    iput-object v10, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    .line 501
    :cond_9
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 502
    .restart local v0    # "msg":Landroid/os/Message;
    iput v11, v0, Landroid/os/Message;->arg1:I

    .line 503
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 505
    const/4 v9, 0x1

    .line 508
    .end local v0    # "msg":Landroid/os/Message;
    .end local v13    # "serviceState":I
    goto :goto_1

    .line 480
    .restart local v13    # "serviceState":I
    :cond_a
    :goto_0
    const-string v0, "[CpaDct]radio not available"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x4

    return v0

    .line 508
    .end local v13    # "serviceState":I
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 514
    .restart local v0    # "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 515
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 516
    const/4 v9, 0x1

    .line 517
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 518
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]paramter error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 520
    nop

    .line 528
    :cond_d
    :goto_1
    return v9
.end method

.method public blacklist clearCpaConnectionInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "reson"    # Ljava/lang/String;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]clearCpaConnectionInfo reson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    .line 638
    return-void
.end method

.method public blacklist dispose()V
    .locals 2

    .line 199
    const-string v0, "[CpaDct]CpaDcTracker.dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v1, -0x3

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 202
    return-void
.end method

.method public blacklist getCpaApn()Landroid/telephony/data/ApnSetting;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaApn()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]getCpaConnectionInfo, mCurrentCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCpaDctState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaConnectionType()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NAVI:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    if-ne v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    return-object v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCpaConnectionStatus()Lcom/android/internal/telephony/DctConstants$State;
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]getCpaConnectionStatus() mCpaConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public blacklist getCpaDctPhoneId()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhoneId:I

    return v0
.end method

.method public blacklist getCpaDctState()I
    .locals 1

    .line 645
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    return v0
.end method

.method public blacklist getCpaProxyData()Landroid/net/ProxyInfo;
    .locals 5

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]getCpaProxyData, mCurrentCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCpaDctState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v1, 0x0

    .line 555
    .local v1, "portNum":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    .line 558
    new-instance v2, Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v1, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 561
    :cond_0
    const-string v2, "[CpaDct]getCpaProxyData, mCpaConnInfo is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 564
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getCurrentCpaMode()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestCpaMode()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "selfMsg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]handleMessage event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->converEventIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 221
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "[CpaDct]Unhandled mRequestCpaMode: "

    const/4 v3, 0x0

    const/4 v4, 0x7

    const-string v5, "[CpaDct] mode="

    const-string v6, "NONE"

    const/4 v7, 0x1

    const-string v8, "DEFAULT"

    const-string v9, "NAVI"

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]Unhandled message with number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 382
    :pswitch_0
    const-string v1, "[CpaDct] protocol error"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 387
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 388
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    const/16 v2, 0x6f

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 392
    const-string v1, "protocol error"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->clearCpaConnectionInfo(Ljava/lang/String;)V

    .line 396
    iput-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 397
    iput-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 399
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 400
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 401
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 373
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 374
    const-string v1, "[CpaDct] retry to setup CPA PDN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 375
    iput v4, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 376
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 377
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    goto/16 :goto_1

    .line 363
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 364
    const-string v1, "[CpaDct] network deact"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x6

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 366
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 367
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    goto/16 :goto_1

    .line 339
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    if-ne v1, v4, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 359
    goto/16 :goto_1

    .line 342
    :cond_3
    :goto_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 345
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 350
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 352
    iput-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 354
    iput v10, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    goto/16 :goto_1

    .line 297
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "apnChanged"

    if-eqz v1, :cond_4

    .line 299
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 302
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NAVI:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->createCpaConnection(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;Landroid/telephony/data/ApnSetting;)V

    .line 305
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 306
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataForCpaChange(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NONE:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->createCpaConnection(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;Landroid/telephony/data/ApnSetting;)V

    .line 324
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataForCpaChange(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 329
    iput-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 331
    iput v10, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    goto/16 :goto_1

    .line 334
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 336
    goto/16 :goto_1

    .line 276
    :pswitch_5
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 279
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 282
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 284
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v2, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 288
    const-string v2, "connection disconnected"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->clearCpaConnectionInfo(Ljava/lang/String;)V

    .line 290
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 293
    goto/16 :goto_1

    .line 255
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 261
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;I)V

    .line 265
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 266
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 267
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 271
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionsOnCpaChanged(ILandroid/os/Handler;)V

    .line 272
    goto :goto_1

    .line 224
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 225
    iput v7, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 231
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 233
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    invoke-virtual {v1, v9, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updateApnListForCpaConnection(Ljava/lang/String;Lmediatek/telephony/data/MtkApnSetting;)I

    .line 236
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 238
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 239
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v1, v8, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updateApnListForCpaConnection(Ljava/lang/String;Lmediatek/telephony/data/MtkApnSetting;)I

    .line 244
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 246
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 249
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]Unhandled mRequestCpaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 251
    nop

    .line 410
    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isCapApn(I)Z
    .locals 4
    .param p1, "apnTypeBitmask"    # I

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v1, :cond_1

    .line 670
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaApn()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 671
    .local v1, "localCapApnTypeBitmask":I
    and-int v2, v1, p1

    if-ne v2, p1, :cond_0

    .line 672
    const-string v2, "[CpaDct]isCapApn() is true!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]isCapApn() can\'t handle type,apnTypeBitmask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 677
    .end local v1    # "localCapApnTypeBitmask":I
    :goto_0
    goto :goto_1

    .line 678
    :cond_1
    const-string v1, "[CpaDct]isCapApn() mCpaConnInfo is null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 680
    :goto_1
    return v0
.end method

.method public blacklist isCapApnCanHandleType(I)Z
    .locals 4
    .param p1, "apnTypeBitmask"    # I

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {v1}, Lmediatek/telephony/data/MtkApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 687
    .local v1, "capApnTypeBitmask":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]isCapApnCanHandleType() cap_ApnTypeBitmask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "apnTypeBitmask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 689
    and-int v2, v1, p1

    if-ne v2, p1, :cond_0

    .line 690
    const-string v2, "[CpaDct]isCapApnCanHandleType() is true!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    .line 693
    .end local v1    # "capApnTypeBitmask":I
    :cond_0
    goto :goto_0

    .line 694
    :cond_1
    const-string v1, "[CpaDct]isCapApnCanHandleType() mCpaApnSetting is null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 696
    :goto_0
    return v0
.end method

.method public blacklist notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p2, "failCause"    # I

    .line 719
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]onNotifyCpaStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->converToCpaDcState(Lcom/android/internal/telephony/DctConstants$State;)I

    move-result v0

    .line 723
    .local v0, "cpaState":I
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->converToCpaReturnCode(I)I

    move-result v1

    .line 725
    .local v1, "cause":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "connStatus"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string v3, "errno"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 731
    .end local v0    # "cpaState":I
    .end local v1    # "cause":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public blacklist setCpaConInfo(Ljava/net/InetAddress;[Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "localAdr"    # Ljava/net/InetAddress;
    .param p2, "dnsAdr"    # [Ljava/net/InetAddress;

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v0, :cond_0

    .line 662
    iput-object p1, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mLocalAddress:Ljava/net/InetAddress;

    .line 663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mDnsAddresses:[Ljava/net/InetAddress;

    .line 665
    :cond_0
    return-void
.end method
