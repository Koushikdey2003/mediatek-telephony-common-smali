.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;
.super Lcom/android/internal/telephony/uicc/UiccProfile;
.source "MtkUiccProfile.java"


# static fields
.field protected static final blacklist EVENT_BASE_ID:I = 0x64

.field private static final blacklist EVENT_GET_ATR_DONE:I = 0x66

.field private static final blacklist EVENT_ICC_FDN_CHANGED:I = 0x68

.field private static final blacklist EVENT_OPEN_CHANNEL_WITH_SW_DONE:I = 0x67

.field private static final blacklist EVENT_SIM_IO_EX_DONE:I = 0x65

.field private static final blacklist ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final blacklist UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private blacklist mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mLastAppType:I

.field public final blacklist mMtkHandler:Landroid/os/Handler;

.field private blacklist mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 101
    const-string v0, "vendor.gsm.ril.uicctype"

    const-string v1, "vendor.gsm.ril.uicctype.2"

    const-string v2, "vendor.gsm.ril.uicctype.3"

    const-string v3, "vendor.gsm.ril.uicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 108
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 117
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLastAppType:I

    .line 137
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    .line 119
    const-string v0, "MtkUiccProfile Creating"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 84
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mDisposed:Z

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method


# virtual methods
.method protected blacklist covertException(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasIccCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->hasIccCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFullIccCardType()[Ljava/lang/String;
    .locals 2

    .line 562
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIccCardType()Ljava/lang/String;
    .locals 2

    .line 558
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 302
    const-string v0, "getIccStateReason E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 333
    :pswitch_0
    const-string v0, "SIM_C_PUK"

    return-object v0

    .line 331
    :pswitch_1
    const-string v0, "SIM_C"

    return-object v0

    .line 329
    :pswitch_2
    const-string v0, "NS_SP_PUK"

    return-object v0

    .line 327
    :pswitch_3
    const-string v0, "NS_SP"

    return-object v0

    .line 325
    :pswitch_4
    const-string v0, "SIM_PUK"

    return-object v0

    .line 323
    :pswitch_5
    const-string v0, "SERVICE_PROVIDER_PUK"

    return-object v0

    .line 321
    :pswitch_6
    const-string v0, "CORPORATE_PUK"

    return-object v0

    .line 319
    :pswitch_7
    const-string v0, "NETWORK_SUBSET_PUK"

    return-object v0

    .line 317
    :pswitch_8
    const-string v0, "NETWORK_PUK"

    return-object v0

    .line 315
    :pswitch_9
    const-string v0, "SIM"

    return-object v0

    .line 313
    :pswitch_a
    const-string v0, "SERVICE_PROVIDER"

    return-object v0

    .line 311
    :pswitch_b
    const-string v0, "CORPORATE"

    return-object v0

    .line 309
    :pswitch_c
    const-string v0, "NETWORK_SUBSET"

    return-object v0

    .line 307
    :pswitch_d
    const-string v0, "NETWORK"

    return-object v0

    .line 339
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public blacklist getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .line 515
    const-string v0, "getNetworkPersoType E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 520
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v0

    return-object v1

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist getSubscriptionDisplayName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 401
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v1

    .line 403
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "simMvnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "simCarrierName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriptionDisplayName- simNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", simMvnoName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", simCarrierName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    .line 412
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "carrier_a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    move-object v3, v1

    .local v3, "nameToSet":Ljava/lang/String;
    goto :goto_0

    .line 415
    .end local v3    # "nameToSet":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    .restart local v3    # "nameToSet":Ljava/lang/String;
    goto :goto_0

    .line 418
    .end local v3    # "nameToSet":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 420
    .restart local v3    # "nameToSet":Ljava/lang/String;
    :goto_0
    return-object v3
.end method

.method public blacklist hasIccCard()Z
    .locals 7

    .line 347
    const/4 v0, 0x0

    .line 352
    .local v0, "isSimInsert":Z
    const/4 v1, 0x0

    .line 353
    .local v1, "iccId":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 354
    .local v2, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_0
    const-string v3, "N/A"

    const-string v4, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 360
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 361
    const/4 v0, 0x1

    .line 367
    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 368
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v6, :cond_2

    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 370
    const/4 v0, 0x1

    .line 376
    :cond_2
    sget-boolean v3, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_SERVICESTATE_SMOOTH:Z

    if-eqz v3, :cond_4

    .line 377
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v5, :cond_3

    .line 378
    const-string v3, "hasIccCard: CARDSTATE_ERROR, return false"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x0

    return v3

    .line 380
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v5, :cond_4

    .line 382
    const/4 v3, 0x1

    return v3

    .line 388
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasIccCard(): isSimInsert =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,CardState = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v5, :cond_5

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", iccId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 393
    return v0
.end method

.method public blacklist iccExchangeSimIOEx(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "onComplete"    # Landroid/os/Message;

    .line 549
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    .line 550
    const/16 v3, 0x65

    move-object/from16 v11, p9

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 549
    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 551
    return-void
.end method

.method public blacklist iccGetAtr(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 554
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getATR(Landroid/os/Message;)V

    .line 555
    return-void
.end method

.method protected blacklist isSupportAllNetworkLockCategory()Z
    .locals 1

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist isUdpateCarrierName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newCarrierName"    # Ljava/lang/String;

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccProfile"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccProfile"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method protected blacklist makeUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 128
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public blacklist queryIccNetworkLock(ILandroid/os/Message;)V
    .locals 5
    .param p1, "category"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->hasIccCard()Z

    move-result v0

    .line 443
    .local v0, "hasIccCard":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryIccNetworkLock(ILandroid/os/Message;)V

    goto :goto_0

    .line 447
    :cond_0
    if-eqz p2, :cond_1

    .line 448
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 449
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to queryIccNetworkLock, hasIccCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 450
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v2, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 451
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 452
    monitor-exit v1

    return-void

    .line 454
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected blacklist registerCurrAppEvents()V
    .locals 4

    .line 175
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    :cond_0
    return-void
.end method

.method public blacklist registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 490
    .local v1, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 492
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 495
    .end local v1    # "r":Lcom/android/internal/telephony/Registrant;
    :cond_0
    monitor-exit v0

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist repollIccStateForModemSmlChangeFeatrue(Z)V
    .locals 2
    .param p1, "needIntent"    # Z

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 532
    .local v0, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->repollIccStateForModemSmlChangeFeatrue(IZ)V

    .line 535
    :cond_0
    return-void
.end method

.method protected blacklist setCurrentAppType(Z)V
    .locals 2
    .param p1, "isGsm"    # Z

    .line 198
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCurrentAppType:I

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLastAppType:I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentAppType, isGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 209
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 210
    return-void
.end method

.method protected blacklist setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 287
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    .line 289
    .local v0, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_0

    .line 290
    const-string v1, "setExternalState(): PERM_DISABLED"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 291
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 292
    return-void

    .line 296
    .end local v0    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 297
    return-void
.end method

.method protected blacklist setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 6
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid; Return!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 217
    monitor-exit v0

    return-void

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState(): mExternalState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " override = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 225
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    .line 227
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLastAppType:I

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCurrentAppType:I

    if-eq v1, v2, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->checkCdma3gCard(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 236
    const-string v1, "Update operatorNumeric for CDMA 3G dual mode card"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 240
    monitor-exit v0

    return-void

    .line 246
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 248
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_4

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkLockState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_7

    .line 257
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_7

    .line 258
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "operator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 262
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 263
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 265
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v4

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_5
    const-string v3, "EVENT_RECORDS_LOADED Country code is null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 270
    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 271
    :cond_6
    const-string v2, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 275
    .end local v1    # "operator":Ljava/lang/String;
    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: set mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 280
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v4

    .line 279
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 14
    .param p1, "category"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .line 463
    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lockop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->hasIccCard()Z

    move-result v12

    .line 468
    .local v12, "hasIccCard":Z
    iget-object v13, v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 469
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object v3, v0

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 472
    :cond_0
    if-eqz p7, :cond_1

    .line 473
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to setIccNetworkLockEnabled, hasIccCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 475
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 476
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    .line 477
    monitor-exit v13

    return-void

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v13

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected blacklist unregisterCurrAppEvents()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->unregisterForFdnChanged(Landroid/os/Handler;)V

    .line 194
    :cond_0
    return-void
.end method

.method public blacklist unregisterForFdnChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 500
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 502
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
