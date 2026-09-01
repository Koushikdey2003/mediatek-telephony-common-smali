.class public Lcom/mediatek/internal/telephony/MtkProxyController;
.super Lcom/android/internal/telephony/ProxyController;
.source "MtkProxyController.java"


# static fields
.field private static final blacklist C6M_1RILD:I = 0x2

.field private static final blacklist C6M_3RILD:I = 0x1

.field private static final blacklist EVENT_ON_REQUEST:I = 0x7

.field private static final blacklist EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final blacklist G5M_1RILD:I = 0x0

.field private static final blacklist PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final blacklist PROPERTY_CAPABILITY_SWITCH_STATE:Ljava/lang/String; = "persist.vendor.radio.simswitchstate"

.field private static final blacklist RC_CANNOT_SWITCH:I = 0x2

.field private static final blacklist RC_DO_SWITCH:I = 0x0

.field private static final blacklist RC_NO_NEED_SWITCH:I = 0x1

.field private static final blacklist RC_RETRY_CAUSE_AIRPLANE_MODE:I = 0x5

.field private static final blacklist RC_RETRY_CAUSE_CAPABILITY_SWITCHING:I = 0x2

.field private static final blacklist RC_RETRY_CAUSE_IN_CALL:I = 0x3

.field private static final blacklist RC_RETRY_CAUSE_NONE:I = 0x0

.field private static final blacklist RC_RETRY_CAUSE_RADIO_UNAVAILABLE:I = 0x4

.field private static final blacklist RC_RETRY_CAUSE_RESULT_ERROR:I = 0x6

.field private static final blacklist RC_RETRY_CAUSE_WORLD_MODE_SWITCHING:I = 0x1


# instance fields
.field private blacklist mCallStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field blacklist mCurrRafs:[Landroid/telephony/RadioAccessFamily;

.field private blacklist mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

.field private blacklist mHasRegisterCallStateReceiver:Z

.field private blacklist mHasRegisterWorldModeReceiver:Z

.field private blacklist mIsCapSwitching:Z

.field private blacklist mMtkHandler:Landroid/os/Handler;

.field private blacklist mMtkPhoneSubInfoControllerEx:Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;

.field protected blacklist mMtkUiccPhoneBookController:Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;

.field private blacklist mMtkUiccSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

.field blacklist mNextRafs:[Landroid/telephony/RadioAccessFamily;

.field private blacklist mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

.field private blacklist mRildMode:I

.field private blacklist mSetRafRetryCause:I

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mWorldModeReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist onExceptionCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 125
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 128
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrRafs:[Landroid/telephony/RadioAccessFamily;

    .line 132
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 144
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 145
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

    .line 259
    new-instance v1, Lcom/mediatek/internal/telephony/MtkProxyController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkProxyController$1;-><init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    .line 979
    new-instance v1, Lcom/mediatek/internal/telephony/MtkProxyController$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkProxyController$2;-><init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1001
    new-instance v1, Lcom/mediatek/internal/telephony/MtkProxyController$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkProxyController$3;-><init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 154
    const-string v1, "ro.vendor.mtk_ril_mode"

    const-string v2, "c6m_1rild"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "rilMode":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 157
    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    goto :goto_0

    .line 158
    :cond_0
    const-string v2, "c6m_3rild"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    goto :goto_0

    .line 161
    :cond_1
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    .line 164
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor - Enter, rild mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkUiccPhoneBookController:Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;

    .line 169
    new-instance v0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v2, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkPhoneSubInfoControllerEx:Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;

    .line 170
    new-instance v0, Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkUiccSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    .line 171
    const-string v0, "Constructor - Exit"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkUiccSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    invoke-direct {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/mediatek/internal/telephony/MtkUiccSmsController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 177
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    if-eq v0, v3, :cond_2

    .line 180
    nop

    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 182
    nop

    .line 183
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeMtkProxyControllerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "mProxyControllerExt init fail"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkProxyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkProxyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkProxyController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterCallStateReceiver()V

    return-void
.end method

.method private blacklist checkRadioCapabilitySwitchConditions([Landroid/telephony/RadioAccessFamily;)I
    .locals 17
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 737
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 738
    :try_start_0
    iput-object v2, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 741
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 743
    const-string v0, "keep it and return,because capability swithing"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 744
    iput v3, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 745
    monitor-exit p0

    return v4

    .line 746
    :cond_0
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    .line 747
    const-string v0, "setCapability, mIsCapSwitching is not switching, can switch"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 748
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 750
    :cond_1
    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 751
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 754
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v6, 0x0

    if-ne v0, v4, :cond_2

    .line 755
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 757
    const-string v0, "skip switching because mtk_disable_cap_switch is true"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 758
    return v4

    .line 761
    :cond_2
    const-string v0, "vendor.gsm.gcf.testmode"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 762
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 764
    const-string v0, "skip switching because FTA mode"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 765
    return v4

    .line 768
    :cond_3
    const-string v0, "persist.vendor.radio.simswitch.emmode"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 769
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 771
    const-string v0, "skip switching because EM disable mode"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 772
    return v4

    .line 776
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 777
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-nez v0, :cond_6

    .line 778
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->isModemTypeSwitching()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 779
    const-string v0, "world mode switching."

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 780
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    if-nez v0, :cond_5

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->registerWorldModeReceiverFor90Modem()V

    .line 783
    :cond_5
    iput v4, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 784
    monitor-enter p0

    .line 785
    :try_start_1
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 786
    monitor-exit p0

    .line 787
    return v3

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 789
    :cond_6
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    if-ne v0, v4, :cond_7

    .line 790
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    if-eqz v0, :cond_7

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterWorldModeReceiver()V

    .line 792
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 798
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v7, 0x3

    if-nez v0, :cond_1f

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isEccInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_6

    .line 810
    :cond_8
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    if-ne v0, v7, :cond_9

    .line 811
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    if-eqz v0, :cond_9

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterCallStateReceiver()V

    .line 813
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 818
    :cond_9
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge v7, v0, :cond_c

    .line 819
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    const/4 v8, 0x4

    if-nez v0, :cond_a

    .line 821
    iput v8, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 822
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v7

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-interface {v0, v4, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCapability fail,Phone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not available"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 824
    monitor-enter p0

    .line 825
    :try_start_2
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 826
    monitor-exit p0

    .line 827
    return v3

    .line 826
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 828
    :cond_a
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    if-ne v0, v8, :cond_b

    .line 829
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v7

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 830
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_b

    .line 831
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 818
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 836
    .end local v7    # "i":I
    :cond_c
    nop

    .line 837
    const-string v0, "persist.vendor.radio.simswitch"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 839
    .local v8, "switchStatus":I
    const/4 v0, 0x0

    .line 840
    .local v0, "bIsboth3G":Z
    const/4 v3, 0x0

    .line 841
    .local v3, "bIsMajorPhone":Z
    const/4 v7, 0x0

    .line 843
    .local v7, "newMajorPhoneId":I
    const/4 v9, 0x1

    .line 844
    .local v9, "bIsSameRaf":Z
    const/4 v10, 0x0

    move v11, v7

    move v12, v9

    move v9, v0

    move/from16 v16, v10

    move v10, v3

    move/from16 v3, v16

    .end local v0    # "bIsboth3G":Z
    .end local v7    # "newMajorPhoneId":I
    .local v3, "i":I
    .local v9, "bIsboth3G":Z
    .local v10, "bIsMajorPhone":Z
    .local v11, "newMajorPhoneId":I
    .local v12, "bIsSameRaf":Z
    :goto_1
    array-length v0, v2

    if-ge v3, v0, :cond_13

    .line 845
    const/4 v0, 0x0

    .line 846
    .end local v10    # "bIsMajorPhone":Z
    .local v0, "bIsMajorPhone":Z
    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v7

    and-int/2addr v7, v4

    if-lez v7, :cond_d

    .line 847
    const/4 v0, 0x1

    move v10, v0

    goto :goto_2

    .line 846
    :cond_d
    move v10, v0

    .line 850
    .end local v0    # "bIsMajorPhone":Z
    .restart local v10    # "bIsMajorPhone":Z
    :goto_2
    if-eqz v10, :cond_11

    .line 851
    aget-object v0, v2, v3

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v7

    .line 852
    .end local v11    # "newMajorPhoneId":I
    .restart local v7    # "newMajorPhoneId":I
    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_f

    .line 853
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 855
    monitor-enter p0

    .line 856
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    aget-object v0, v0, v7

    .line 857
    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v0

    if-ne v7, v0, :cond_e

    .line 858
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 859
    const-string v0, "no change, skip setRadioCapability"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    goto :goto_3

    .line 861
    :cond_e
    const-string v0, "no change, skip setRadioCapability and trigger next"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 863
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 865
    return v4

    .line 863
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 867
    :cond_f
    if-nez v9, :cond_10

    .line 874
    const/4 v0, 0x1

    move v9, v0

    move v11, v7

    .end local v9    # "bIsboth3G":Z
    .local v0, "bIsboth3G":Z
    goto :goto_4

    .line 868
    .end local v0    # "bIsboth3G":Z
    .restart local v9    # "bIsboth3G":Z
    :cond_10
    const-string v0, "set more than one 3G phone, fail"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 869
    monitor-enter p0

    .line 870
    :try_start_5
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 871
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 872
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "input parameter is incorrect"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 877
    .end local v7    # "newMajorPhoneId":I
    .restart local v11    # "newMajorPhoneId":I
    :cond_11
    :goto_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v0

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v7

    if-eq v0, v7, :cond_12

    .line 878
    const/4 v0, 0x0

    move v12, v0

    .line 844
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 881
    .end local v3    # "i":I
    :cond_13
    if-eqz v12, :cond_14

    .line 883
    const-string v0, "setRadioCapability: Already in requested configuration, nothing to do."

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 884
    monitor-enter p0

    .line 885
    :try_start_7
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 886
    monitor-exit p0

    .line 887
    return v4

    .line 886
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 889
    :cond_14
    if-eqz v9, :cond_1e

    .line 897
    const-string v0, "ro.vendor.mtk_external_sim_support"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1b

    .line 899
    const/4 v0, 0x0

    move v3, v0

    .restart local v3    # "i":I
    :goto_5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge v3, v0, :cond_17

    .line 901
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.enabled"

    const-string v7, "0"

    invoke-static {v3, v0, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 904
    .local v7, "isVsimEnabled":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.inserted"

    const-string v13, "0"

    invoke-static {v3, v0, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 907
    .local v13, "isVsimInserted":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 908
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultDataSubId()I

    move-result v14

    .line 907
    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getPhoneId(I)I

    move-result v14

    .line 910
    .local v14, "defaultPhoneId":I
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 911
    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    if-eq v11, v14, :cond_16

    .line 914
    monitor-enter p0

    .line 915
    :try_start_8
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 916
    monitor-exit p0

    .line 917
    return v4

    .line 916
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 899
    .end local v7    # "isVsimEnabled":Ljava/lang/String;
    .end local v13    # "isVsimInserted":Ljava/lang/String;
    .end local v14    # "defaultPhoneId":I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 922
    .end local v3    # "i":I
    :cond_17
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 924
    .local v3, "mainPhoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.enabled"

    const-string v7, "0"

    invoke-static {v3, v0, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, "isVsimEnabledOnMain":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.inserted"

    const-string v13, "0"

    invoke-static {v3, v0, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 929
    .local v13, "mainPhoneIdSimType":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->getPreferedRsimSlot()I

    move-result v14

    .line 931
    .local v14, "rsimPhoneId":I
    const-string v0, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "2"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    const/4 v0, -0x1

    if-eq v14, v0, :cond_1a

    if-eq v11, v14, :cond_1a

    .line 934
    :cond_19
    monitor-enter p0

    .line 935
    :try_start_9
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 936
    monitor-exit p0

    .line 937
    return v4

    .line 936
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    .line 938
    :cond_1a
    const-string v15, "ro.vendor.mtk_non_dsda_rsim_support"

    invoke-static {v15, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v15, v4, :cond_1b

    if-eq v14, v0, :cond_1b

    if-ne v14, v11, :cond_1b

    .line 941
    return v5

    .line 947
    .end local v3    # "mainPhoneId":I
    .end local v7    # "isVsimEnabledOnMain":Ljava/lang/String;
    .end local v13    # "mainPhoneIdSimType":Ljava/lang/String;
    .end local v14    # "rsimPhoneId":I
    :cond_1b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    invoke-interface {v0, v11, v3}, Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;->isNeedSimSwitch(II)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 948
    const-string v0, "check sim card type and skip setRadioCapability"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 949
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 950
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 952
    return v4

    .line 955
    :cond_1c
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 956
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->notifyRadioCapabilityChange(I)V

    .line 958
    :cond_1d
    const-string v0, "checkRadioCapabilitySwitchConditions, do switch"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 959
    return v5

    .line 890
    :cond_1e
    monitor-enter p0

    .line 891
    :try_start_a
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 892
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 893
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "input parameter is incorrect - no 3g phone"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :catchall_7
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    .line 801
    .end local v8    # "switchStatus":I
    .end local v9    # "bIsboth3G":Z
    .end local v10    # "bIsMajorPhone":Z
    .end local v11    # "newMajorPhoneId":I
    .end local v12    # "bIsSameRaf":Z
    :cond_1f
    :goto_6
    const-string v0, "setCapability in calling, fail to set RAT for phones"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 802
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    if-nez v0, :cond_20

    .line 803
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->registerCallStateReceiver()V

    .line 805
    :cond_20
    iput v7, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 806
    monitor-enter p0

    .line 807
    :try_start_c
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 808
    monitor-exit p0

    .line 809
    return v3

    .line 808
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    .line 751
    :catchall_9
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    throw v0
.end method

.method private blacklist isEccInProgress()Z
    .locals 6

    .line 1074
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1076
    .local v1, "inEcm":Z
    const/4 v2, 0x0

    .line 1077
    .local v2, "isInEcc":Z
    nop

    .line 1078
    const-string v3, "telecom"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1077
    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1079
    .local v3, "tm":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_0

    .line 1081
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 1084
    goto :goto_0

    .line 1082
    :catch_0
    move-exception v4

    .line 1083
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception of isEccInProgress"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkProxyController;->loge(Ljava/lang/String;)V

    .line 1086
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEccInProgress, value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", inEcm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInEcc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 1087
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4
.end method

.method private blacklist onRetryWhenRadioAvailable(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRetryWhenRadioAvailable,mSetRafRetryCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 964
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 965
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryWhenRadioAvailable, Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modem off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 967
    return-void

    .line 964
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 972
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    goto :goto_1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 977
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist registerCallStateReceiver()V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1053
    const-string v0, "registerCallStateReceiver, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1054
    return-void

    .line 1057
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1060
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    .line 1061
    return-void
.end method

.method private blacklist registerWorldModeReceiverFor90Modem()V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1032
    const-string v0, "registerWorldModeReceiverFor90Modem, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 1033
    return-void

    .line 1035
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1036
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "mediatek.intent.action.ACTION_MODEM_SWITCH_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1038
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1039
    return-void
.end method

.method private blacklist resetSimSwitchState()V
    .locals 2

    .line 607
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->clearTransaction()V

    .line 612
    return-void

    .line 615
    :cond_1
    monitor-enter p0

    .line 616
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 617
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->clearTransaction()V

    .line 619
    return-void

    .line 617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist sendCapabilityFailBroadcast()V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1028
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private blacklist unRegisterCallStateReceiver()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1065
    const-string v0, "unRegisterCallStateReceiver, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1066
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    .line 1071
    return-void
.end method

.method private blacklist unRegisterWorldModeReceiver()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1043
    const-string v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1044
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1049
    return-void
.end method


# virtual methods
.method protected blacklist completeRadioCapabilityTransaction()V
    .locals 6

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 555
    const-string v0, "persist.vendor.radio.simswitchstate"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v0, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    .line 560
    .local v3, "raf":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radioAccessFamily["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 561
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v4, v2, v3}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 562
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v3    # "raf":I
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "rafs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 569
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 572
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 573
    .end local v0    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    goto :goto_1

    .line 574
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 577
    .restart local v2    # "intent":Landroid/content/Intent;
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    .line 580
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 584
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    if-ne v0, v3, :cond_4

    .line 591
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has next request, trigger it, cause = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    goto :goto_2

    .line 596
    :cond_3
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_2
    goto :goto_3

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 603
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :goto_3
    return-void
.end method

.method protected blacklist doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .locals 2
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 249
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    return v0

    .line 252
    :cond_0
    monitor-enter p0

    .line 253
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 256
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    return v0

    .line 254
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getDeviceRegisterController()Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    return-object v0
.end method

.method public blacklist getMaxRafSupported()I
    .locals 6

    .line 642
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    .line 643
    .local v0, "numRafSupported":[I
    const/4 v1, 0x0

    .line 644
    .local v1, "maxNumRafBit":I
    const/4 v2, 0x0

    .line 646
    .local v2, "maxRaf":I
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 647
    invoke-super {p0}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v3

    return v3

    .line 651
    :cond_0
    const/4 v3, 0x0

    .local v3, "len":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 652
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 654
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 651
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    .end local v3    # "len":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxRafSupported: maxRafBit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxRaf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 662
    if-nez v2, :cond_3

    .line 663
    or-int/lit8 v2, v2, 0x1

    .line 666
    :cond_3
    return v2
.end method

.method public blacklist getMinRafSupported()I
    .locals 5

    .line 673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    .line 674
    .local v0, "numRafSupported":[I
    const/4 v1, 0x0

    .line 675
    .local v1, "minNumRafBit":I
    const/4 v2, 0x0

    .line 677
    .local v2, "minRaf":I
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 678
    invoke-super {p0}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v3

    return v3

    .line 682
    :cond_0
    const/4 v3, 0x0

    .local v3, "len":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 683
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 684
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 682
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 687
    .end local v3    # "len":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMinRafSupported: minRafBit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " minRaf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 690
    return v2
.end method

.method public blacklist isCapabilitySwitching()Z
    .locals 5

    .line 715
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 717
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 718
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 717
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapabilitySwitching: Phone["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 723
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 726
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 727
    const/4 v0, 0x0

    return v0

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 729
    :cond_3
    monitor-enter p0

    .line 730
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    monitor-exit p0

    return v0

    .line 731
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method protected blacklist issueFinish(I)V
    .locals 11
    .param p1, "sessionId"    # I

    .line 516
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 517
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    .line 518
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 526
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueFinish: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTransactionFailed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 530
    const/4 v6, 0x4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mOldRadioAccessFamily:[I

    aget v7, v3, v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v8, v3, v2

    .line 536
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-eqz v3, :cond_1

    move v9, v1

    goto :goto_1

    .line 537
    :cond_1
    const/4 v3, 0x1

    move v9, v3

    :goto_1
    const/4 v10, 0x4

    .line 530
    move-object v3, p0

    move v4, v2

    move v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 539
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-eqz v3, :cond_2

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueFinish: phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status: FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v3, v2

    .line 526
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist mtkLogd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 694
    const-string v0, "MtkProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method protected blacklist mtkLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 698
    const-string v0, "MtkProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void
.end method

.method protected blacklist onApplyExceptionHandler(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 418
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 419
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyExceptionHandler(Landroid/os/Message;)V

    .line 420
    return-void

    .line 422
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 423
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 424
    .local v1, "ar":Landroid/os/AsyncResult;
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v2

    .line 425
    .local v2, "id":I
    const/4 v3, 0x0

    .line 427
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_1

    .line 428
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 431
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 433
    const/4 v4, 0x4

    iput v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 435
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    const-string v4, "onApplyRadioCapabilityResponse: Retry later due to modem off"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void
.end method

.method protected blacklist onApplyRadioCapabilityErrorHandler(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 379
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 381
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 382
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 383
    return-void

    .line 386
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 387
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 388
    .local v1, "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 390
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    if-nez v0, :cond_4

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    if-nez v3, :cond_4

    .line 392
    const/4 v3, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 393
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 394
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 397
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_3

    .line 399
    const/4 v3, 0x4

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 401
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v3    # "i":I
    :cond_2
    const-string v3, "onApplyRadioCapabilityResponse: Retry due to RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 409
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 410
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 411
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 414
    :cond_4
    return-void
.end method

.method protected blacklist onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 473
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 474
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_2

    .line 478
    :cond_0
    if-nez v0, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 479
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 480
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishRadioCapabilityResponse C2K mRadioAccessFamilyStatusCounter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 482
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 483
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 486
    :cond_1
    monitor-exit v2

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 491
    :cond_2
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 492
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    .line 493
    return-void

    .line 496
    :cond_3
    const/4 v2, -0x1

    const-string v3, "persist.vendor.radio.simswitchstate"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 497
    .local v2, "phoneId":I
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    if-ne v3, v1, :cond_4

    .line 498
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    .line 499
    .local v1, "raf":I
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_4

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishRadioCapabilityResponse, main phone raf["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 501
    const/4 v3, 0x6

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 504
    .end local v1    # "raf":I
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    .line 505
    return-void
.end method

.method protected blacklist onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 452
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-nez v0, :cond_0

    .line 453
    const-string v1, "onNotificationRadioCapabilityChanged: rc == null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 454
    return-void

    .line 456
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v1

    .line 459
    .local v1, "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 460
    const-string v2, "onNotificationRadioCapabilityChanged: update phone capability"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 464
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    .line 465
    return-void
.end method

.method public blacklist onSetRadioCapabilityRequest([Landroid/telephony/RadioAccessFamily;)Z
    .locals 4
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 218
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 219
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    .line 220
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 223
    :cond_0
    return v0

    .line 226
    .end local v0    # "ret":Z
    :cond_1
    array-length v0, p1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 232
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v1

    and-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 233
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "persist.vendor.radio.simswitchstate"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_1

    .line 231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkProxyController;->checkRadioCapabilitySwitchConditions([Landroid/telephony/RadioAccessFamily;)I

    move-result v0

    .line 240
    .local v0, "result":I
    if-nez v0, :cond_4

    .line 241
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    return v1

    .line 243
    :cond_4
    return v2

    .line 227
    .end local v0    # "result":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Length of input rafs must equal to total phone count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 290
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 291
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    if-eq v2, v3, :cond_2

    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 295
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 296
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    move-object v2, v3

    .line 299
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_2

    .line 301
    const/4 v3, 0x4

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 303
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "i":I
    :cond_1
    const-string v3, "onStartRadioCapabilityResponse: Retry later due to modem off"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 311
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 313
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 314
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 315
    monitor-exit v0

    return-void

    .line 317
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RadioCapability;

    .line 318
    .local v2, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v5

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    if-eq v5, v6, :cond_4

    goto/16 :goto_5

    .line 323
    :cond_4
    iget v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 324
    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v5

    .line 325
    .local v5, "id":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status=FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x5

    aput v6, v3, v5

    .line 330
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    goto :goto_1

    .line 332
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status=STARTED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 333
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aput v3, v6, v5

    .line 336
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v3, :cond_8

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 350
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-eqz v3, :cond_7

    .line 353
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->issueFinish(I)V

    goto :goto_4

    .line 356
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 357
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 358
    iget v8, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    const/4 v9, 0x2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNewRadioAccessFamily:[I

    aget v10, v4, v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v11, v4, v3

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object v6, p0

    move v7, v3

    invoke-virtual/range {v6 .. v13}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status=APPLYING"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x3

    aput v6, v4, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 373
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "rc":Lcom/android/internal/telephony/RadioCapability;
    .end local v3    # "i":I
    .end local v5    # "id":I
    :cond_8
    :goto_4
    monitor-exit v0

    .line 374
    return-void

    .line 319
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_9
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 321
    monitor-exit v0

    return-void

    .line 373
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 510
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 511
    .local v0, "tmsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 512
    return-void
.end method

.method protected blacklist sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .line 624
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 625
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 627
    return-void

    .line 630
    :cond_0
    if-eqz p5, :cond_1

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    :cond_1
    const-string p5, "modem_sys3"

    .line 634
    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 636
    return-void
.end method

.method public blacklist setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 3
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 206
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 208
    const-string v0, "skip switching because mtk_disable_cap_switch is true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "tmsg":Landroid/os/Message;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrRafs:[Landroid/telephony/RadioAccessFamily;

    .line 212
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v0    # "tmsg":Landroid/os/Message;
    :goto_0
    return v1
.end method
