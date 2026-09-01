.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhone;
.source "MtkImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;,
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
    }
.end annotation


# static fields
.field private static final blacklist CFU_TIME_SLOT:Ljava/lang/String; = "persist.vendor.radio.cfu.timeslot."

.field public static final blacklist EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6d

.field public static final blacklist EVENT_SET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6e

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkImsPhone"

.field public static final blacklist UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"


# instance fields
.field private blacklist mDialString:Ljava/lang/String;

.field private blacklist mIsWfcModeHomeForDomRoaming:Z

.field protected blacklist mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V

    .line 165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "unitTestMode"    # Z

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V

    .line 145
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 148
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    const-string v0, "Start to create MtkImsPhone."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 172
    const-string v0, "MtkImsPhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setPhoneName(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->cacheCarrierConfiguration()V

    .line 177
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->registerForListenCarrierConfigChanged()V

    .line 178
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 129
    iget v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->cacheCarrierConfiguration()V

    return-void
.end method

.method private blacklist cacheCarrierConfiguration()V
    .locals 5

    .line 1206
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getSubId()I

    move-result v0

    .line 1207
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    .line 1208
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1209
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_0

    .line 1210
    const-string v2, "cacheCarrierConfiguration failed: config mgr access failed"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1211
    return-void

    .line 1214
    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1216
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v2, :cond_1

    .line 1217
    const-string v3, "cacheCarrierConfiguration failed: carrier config access failed"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1218
    return-void

    .line 1221
    :cond_1
    const-string v3, "mtk_carrier_wfc_mode_domestic_roaming_to_home"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mIsWfcModeHomeForDomRoaming:Z

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheCarrierConfiguration,  WfcModeHomeForDomRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mIsWfcModeHomeForDomRoaming:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method private blacklist getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 770
    new-instance v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    .line 771
    .local v0, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 772
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 773
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 774
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 775
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 776
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 777
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 778
    return-object v0
.end method

.method private blacklist handleCfInTimeSlotQueryResult([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 719
    const/4 v0, 0x0

    .line 721
    .local v0, "cfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    if-eqz p1, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_1

    .line 723
    array-length v1, p1

    new-array v0, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    goto :goto_0

    .line 727
    :cond_0
    if-eqz p1, :cond_1

    .line 728
    array-length v1, p1

    new-array v0, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 732
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 733
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    array-length v4, p1

    if-nez v4, :cond_2

    goto :goto_4

    .line 745
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "s":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 746
    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    if-nez v6, :cond_4

    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_4

    .line 748
    if-eqz v1, :cond_4

    .line 749
    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    if-ne v6, v3, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    aget-object v7, p1, v4

    iget-object v7, v7, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 751
    aget-object v6, p1, v4

    iget-object v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->saveTimeSlot([J)V

    .line 756
    :cond_4
    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    if-nez v6, :cond_6

    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_6

    .line 758
    iget v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    sget-object v7, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IOplusPhone;

    .line 759
    .local v6, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    aget-object v7, p1, v4

    iget v7, v7, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    if-ne v7, v3, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 762
    .end local v6    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_6
    aget-object v6, p1, v4

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v6

    aput-object v6, v0, v4

    .line 745
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 734
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 737
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 740
    iget v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    sget-object v4, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IOplusPhone;

    .line 741
    .local v3, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v3, v2}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 766
    .end local v3    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_8
    return-object v0
.end method

.method private blacklist isSupportImsEcc()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isSupportImsEcc()Z

    move-result v0

    return v0
.end method

.method private blacklist registerForListenCarrierConfigChanged()V
    .locals 3

    .line 1196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1197
    const-string v0, "registerForListenCarrierConfigChanged failed"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1198
    return-void

    .line 1200
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1201
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1203
    return-void
.end method

.method private blacklist supportMdAutoSetupIms()Z
    .locals 3

    .line 1188
    const/4 v0, 0x0

    .line 1189
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    const/4 v0, 0x1

    .line 1192
    :cond_0
    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "isUriNumber":Z
    move-object v1, p1

    .line 197
    .local v1, "newDialString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 198
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 204
    return-object v3

    .line 209
    :cond_1
    instance-of v2, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    if-nez v2, :cond_2

    .line 210
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v2

    .local v2, "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    goto :goto_0

    .line 212
    .end local v2    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    :cond_2
    move-object v2, p2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v2

    .line 214
    .restart local v2    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 216
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 217
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 223
    :cond_3
    move-object v4, p1

    .line 224
    .local v4, "networkPortion":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 225
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    :cond_4
    const/4 v5, 0x0

    .line 238
    .local v5, "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 239
    invoke-static {v4, p0, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v5

    goto :goto_1

    .line 241
    :cond_5
    const-string v6, "dialInternal: url dial string, it must not be MMI"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 244
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->getIsEmergencyNumber()Z

    move-result v6

    .line 247
    .local v6, "isEcc":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialInternal: dialing w/ mmi ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "] isEcc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDialString:Ljava/lang/String;

    .line 252
    if-eqz v5, :cond_a

    if-eqz v6, :cond_6

    goto :goto_3

    .line 254
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 255
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getCLIRMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 256
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 257
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result v7

    const-string v8, "cs_fallback"

    if-eqz v7, :cond_9

    .line 266
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v3, v5, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 270
    :try_start_0
    const-string v7, "MMI processCode"

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_2

    .line 272
    :catch_0
    move-exception v7

    .line 273
    .local v7, "cse":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 282
    .end local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :goto_2
    return-object v3

    .line 274
    .restart local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_8
    const-string v3, "dialInternal: fallback to GSM required."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    throw v7

    .line 263
    .end local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_9
    const-string v3, "dialInternal: USSD not supported by IMS; fallback to CS."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 264
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v3, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic blacklist disableDataConnectivity()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist disableLocationUpdates()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->disableLocationUpdates()V

    return-void
.end method

.method public blacklist dispose()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    :cond_0
    return-void
.end method

.method public blacklist dumpPendingMmi()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 369
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 370
    const-string v1, "dumpPendingMmi: none"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 371
    return-void

    .line 373
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpPendingMmi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist enableDataConnectivity()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist enableLocationUpdates()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->enableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .line 552
    const-string v0, "ACR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x6

    return v0

    .line 556
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected blacklist getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 440
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 452
    const/4 v0, 0x3

    return v0

    .line 447
    :cond_0
    return v0

    .line 446
    :cond_1
    return v0

    .line 445
    :cond_2
    return v0

    .line 443
    :cond_3
    return v0

    .line 442
    :cond_4
    return v0

    .line 441
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardInTimeSlot reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 641
    if-nez p1, :cond_0

    .line 643
    const-string v0, "requesting call forwarding in a time slot query."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 647
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 650
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 651
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/MtkImsUt;

    .line 652
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    .line 651
    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/MtkImsUt;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 657
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_0
    if-eqz p2, :cond_1

    .line 658
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_1

    .line 657
    :cond_1
    :goto_0
    nop

    .line 660
    :goto_1
    return-void
.end method

.method protected blacklist getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Landroid/telephony/ims/ImsCallForwardInfo;

    .line 853
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 854
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 855
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 856
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 857
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 858
    iget-object v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 859
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 860
    return-object v0
.end method

.method public blacklist getCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardingOption reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "requesting call forwarding query."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 481
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 485
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 490
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_0
    if-eqz p2, :cond_1

    .line 491
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_1

    .line 490
    :cond_1
    :goto_0
    nop

    .line 493
    :goto_1
    return-void
.end method

.method public blacklist getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V
    .locals 5
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardingOptionForServiceClass reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", service class= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "requesting call forwarding query."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 703
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 706
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 707
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/MtkImsUt;

    .line 708
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    .line 707
    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/mediatek/ims/MtkImsUt;->queryCFForServiceClass(ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 713
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_0
    if-eqz p3, :cond_1

    .line 714
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_1

    .line 713
    :cond_1
    :goto_0
    nop

    .line 716
    :goto_1
    return-void
.end method

.method public bridge synthetic blacklist getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .locals 2
    .param p1, "code"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandException code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 792
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 794
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    const/16 v1, 0xf1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x321

    if-eq p1, v1, :cond_1

    const/16 v1, 0x322

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 842
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    .line 843
    goto :goto_0

    .line 839
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    .line 840
    goto :goto_0

    .line 836
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    .line 837
    goto :goto_0

    .line 833
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    .line 834
    goto :goto_0

    .line 830
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    .line 831
    goto :goto_0

    .line 827
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    .line 828
    goto :goto_0

    .line 823
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    .line 824
    goto :goto_0

    .line 820
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    .line 821
    goto :goto_0

    .line 817
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    .line 818
    goto :goto_0

    .line 814
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    .line 815
    goto :goto_0

    .line 811
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    .line 812
    goto :goto_0

    .line 808
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    .line 809
    goto :goto_0

    .line 799
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    .line 800
    goto :goto_0

    .line 802
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 803
    goto :goto_0

    .line 796
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 797
    goto :goto_0

    .line 805
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 806
    nop

    .line 848
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x335
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf006
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf009
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf010
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 423
    packed-switch p1, :pswitch_data_0

    .line 435
    const/4 v0, -0x1

    return v0

    .line 430
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 429
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 428
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 427
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 426
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 425
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 424
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDataRoamingEnabled()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getDeviceId()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getEsn()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getIccRecordsLoaded()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getImei()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getMeid()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getMessageWaitingIndicator()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getPhoneType()I
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeSlot()[J
    .locals 14

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "timeSlotString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 615
    .local v3, "timeSlot":[J
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 618
    new-array v3, v5, [J

    .line 619
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 620
    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 621
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 622
    .local v6, "calenar":Ljava/util/Calendar;
    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 623
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 624
    .local v8, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 625
    .local v10, "min":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 626
    .local v11, "calenar2":Ljava/util/Calendar;
    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 627
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 628
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    aput-wide v12, v3, v4

    .line 619
    .end local v6    # "calenar":Ljava/util/Calendar;
    .end local v8    # "hour":I
    .end local v10    # "min":I
    .end local v11    # "calenar2":Ljava/util/Calendar;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 632
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeSlot = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 633
    return-object v3
.end method

.method public bridge synthetic blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 3
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 921
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 929
    .local v0, "cbInfos":[I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    aput v2, v0, v1

    .line 931
    return-object v0
.end method

.method public blacklist handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 865
    const/4 v0, 0x0

    .line 867
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    if-eqz p1, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_1

    .line 870
    array-length v1, p1

    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_0

    .line 874
    :cond_0
    if-eqz p1, :cond_1

    .line 875
    array-length v1, p1

    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 879
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 880
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    array-length v4, p1

    if-nez v4, :cond_2

    goto :goto_4

    .line 892
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "s":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 893
    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    if-nez v6, :cond_4

    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_4

    .line 895
    if-eqz v1, :cond_4

    .line 896
    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v6, v3, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    aget-object v7, p1, v4

    iget-object v7, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 900
    :cond_4
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v6

    aput-object v6, v0, v4

    .line 903
    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    if-nez v6, :cond_6

    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_6

    .line 905
    iget v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    sget-object v7, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IOplusPhone;

    .line 906
    .local v6, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    aget-object v7, p1, v4

    iget v7, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v7, v3, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 909
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    .line 892
    .end local v6    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 881
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 884
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 887
    iget v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    sget-object v4, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IOplusPhone;

    .line 888
    .local v3, "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v3, v2}, Lcom/android/internal/telephony/IOplusPhone;->setVideoCallForwardingFlag(Z)V

    .line 916
    .end local v3    # "interfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_8
    return-object v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 936
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 938
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mtk handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 940
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_c

    const/16 v2, 0x3b

    const v6, 0xf008

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_7

    const/16 v2, 0x6d

    const/4 v6, 0x2

    const v7, 0xf006

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_0

    .line 1098
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1018
    .local v1, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;

    .line 1019
    .local v2, "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    iget-boolean v8, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mIsCfu:Z

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    .line 1020
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 1021
    .local v8, "cfAction":I
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v9

    .line 1023
    .local v9, "cfEnable":I
    if-ne v9, v5, :cond_1

    move v3, v5

    :cond_1
    iget-object v10, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v3, v10}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1024
    iget-object v3, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetTimeSlot:[J

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->saveTimeSlot([J)V

    .line 1027
    .end local v8    # "cfAction":I
    .end local v9    # "cfEnable":I
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_3

    .line 1028
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/ims/ImsException;

    .line 1029
    .local v3, "imsException":Lcom/android/ims/ImsException;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 1031
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1033
    iget-object v5, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    .line 1034
    .local v5, "resp":Landroid/os/Message;
    if-eqz v5, :cond_3

    .line 1035
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v5, v4, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1037
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1038
    return-void

    .line 1042
    .end local v3    # "imsException":Lcom/android/ims/ImsException;
    .end local v5    # "resp":Landroid/os/Message;
    :cond_3
    iget-object v3, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1043
    goto/16 :goto_1

    .line 992
    .end local v1    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    :cond_4
    const/4 v1, 0x0

    .line 993
    .local v1, "mtkCfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 994
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleCfInTimeSlotQueryResult([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v1

    .line 998
    :cond_5
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/ims/ImsException;

    if-eqz v2, :cond_6

    .line 999
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/ims/ImsException;

    .line 1000
    .local v2, "imsException":Lcom/android/ims/ImsException;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 1002
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1004
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 1005
    .local v3, "resp":Landroid/os/Message;
    if-eqz v3, :cond_6

    .line 1006
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1008
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1009
    return-void

    .line 1013
    .end local v2    # "imsException":Lcom/android/ims/ImsException;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_6
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v1, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1014
    goto/16 :goto_1

    .line 1049
    .end local v1    # "mtkCfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1050
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_8

    .line 1052
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1053
    .local v1, "imsException":Lcom/android/ims/ImsException;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v2

    if-ne v2, v6, :cond_8

    .line 1055
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1056
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_8

    .line 1057
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1059
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1060
    return-void

    .line 1065
    .end local v1    # "imsException":Lcom/android/ims/ImsException;
    .end local v2    # "resp":Landroid/os/Message;
    :cond_8
    const/4 v1, 0x0

    .line 1066
    .local v1, "ssInfos":[I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9

    .line 1067
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v1

    .line 1069
    :cond_9
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v1, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1071
    .end local v1    # "ssInfos":[I
    goto/16 :goto_1

    .line 1076
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1077
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_b

    .line 1080
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1081
    .local v1, "imsException":Lcom/android/ims/ImsException;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 1083
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1084
    .restart local v2    # "resp":Landroid/os/Message;
    if-eqz v2, :cond_b

    .line 1085
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1087
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    return-void

    .line 1093
    .end local v1    # "imsException":Lcom/android/ims/ImsException;
    .end local v2    # "resp":Landroid/os/Message;
    :cond_b
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v4, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1095
    goto/16 :goto_1

    .line 943
    :cond_c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 944
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;

    .line 945
    .local v2, "cf":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 946
    .local v6, "cfAction":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 948
    .local v7, "cfReason":I
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v8

    .line 950
    .local v8, "cfEnable":I
    iget-boolean v9, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mIsCfu:Z

    if-eqz v9, :cond_10

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_10

    if-eqz v1, :cond_10

    .line 951
    iget-object v9, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v9

    if-eqz v9, :cond_e

    if-nez v7, :cond_e

    .line 953
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_d

    .line 954
    const-string v3, "arResult is null."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :cond_d
    const-string v3, "[EVENT_SET_CALL_FORWARD_DONE check cfinfo."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_e
    iget v9, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mServiceClass:I

    and-int/2addr v9, v5

    if-eqz v9, :cond_10

    .line 960
    if-ne v8, v5, :cond_f

    move v3, v5

    :cond_f
    iget-object v9, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v3, v9}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 966
    :cond_10
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_12

    .line 967
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    instance-of v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 968
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 969
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_12

    .line 970
    if-ne v8, v5, :cond_11

    .line 971
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v5, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    .line 972
    invoke-virtual {v3, v7, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->applyCFSharePreference(ILjava/lang/String;)Z

    move-result v3

    .line 974
    .local v3, "ret":Z
    if-nez v3, :cond_11

    .line 975
    const-string v5, "applySharePreference false."

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 979
    .end local v3    # "ret":Z
    :cond_11
    const/4 v3, 0x4

    if-ne v6, v3, :cond_12

    .line 980
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearCFSharePreference(I)V

    .line 987
    :cond_12
    iget-object v3, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 989
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "cf":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
    .end local v6    # "cfAction":I
    .end local v7    # "cfReason":I
    .end local v8    # "cfEnable":I
    nop

    .line 1101
    :goto_1
    return-void
.end method

.method public blacklist handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "mmi"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMmiCodeCsfb: reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDialString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDialString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->removeMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 390
    const v0, 0xf006

    if-ne p1, v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    goto :goto_0

    .line 393
    :cond_0
    const v0, 0xf007

    if-ne p1, v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 397
    :cond_1
    :goto_0
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 399
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 402
    .local v1, "msgCSFB":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->sendMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method public bridge synthetic blacklist handlePinMmi(Ljava/lang/String;)Z
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 355
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->hangupAll()V

    .line 358
    return-void
.end method

.method public bridge synthetic blacklist isDataAllowed(I)Z
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isDataAllowed(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist isUserDataEnabled()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method protected blacklist isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 417
    const/4 v0, 0x0

    return v0

    .line 415
    :pswitch_0
    const/4 v0, 0x1

    return v0

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

.method public blacklist isWifiPdnOutOfService()Z
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isWifiPdnOutOfService()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method protected blacklist needNotifySrvccState()Z
    .locals 1

    .line 1251
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic blacklist needsOtaServiceProvisioning()Z
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist notifyCallForwardingIndicator()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic blacklist notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic blacklist notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public bridge synthetic blacklist notifyPhoneStateChanged()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    return-void
.end method

.method public bridge synthetic blacklist notifyPreciseCallStateChanged()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public bridge synthetic blacklist notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public bridge synthetic blacklist onCallQualityChanged(Landroid/telephony/CallQuality;I)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onCallQualityChanged(Landroid/telephony/CallQuality;I)V

    return-void
.end method

.method protected blacklist onIncomingUSSD(ILjava/lang/String;)V
    .locals 6
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingUSSD ussdMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 314
    .local v2, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    move v0, v1

    .line 318
    .local v0, "isUssdError":Z
    :cond_1
    const/4 v1, 0x0

    .line 319
    .local v1, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 320
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 322
    goto :goto_2

    .line 319
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 328
    if-eqz v0, :cond_4

    .line 329
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    goto :goto_4

    .line 331
    :cond_4
    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_4

    .line 338
    :cond_5
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 340
    invoke-static {p2, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v3

    .line 343
    .local v3, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .end local v3    # "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_3

    .line 344
    :cond_6
    if-eqz v0, :cond_7

    .line 346
    invoke-static {p2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v3

    .line 347
    .local v3, "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_4

    .line 344
    .end local v3    # "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :cond_7
    :goto_3
    nop

    .line 350
    :goto_4
    return-void
.end method

.method public bridge synthetic blacklist onTtyModeReceived(I)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onTtyModeReceived(I)V

    return-void
.end method

.method public bridge synthetic blacklist registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist removeMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 2
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMmi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->dumpPendingMmi()V

    .line 364
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public blacklist saveTimeSlot([J)V
    .locals 5
    .param p1, "timeSlot"    # [J

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    .line 604
    .local v1, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    :cond_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeSlotString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public bridge synthetic blacklist selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .line 784
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->dumpPendingMmi()V

    .line 785
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallBarring facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 567
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 570
    .local v0, "resp":Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 571
    const/4 v1, 0x1

    move v8, v1

    .local v1, "action":I
    goto :goto_0

    .line 574
    .end local v1    # "action":I
    :cond_0
    const/4 v1, 0x0

    move v8, v1

    .line 578
    .local v8, "action":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    move-object v9, v1

    .line 580
    .local v9, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v1, v9

    check-cast v1, Lcom/mediatek/ims/MtkImsUt;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    move-object v2, p3

    move v4, v8

    move-object v5, v0

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/MtkImsUt;->updateCallBarring(Ljava/lang/String;IILandroid/os/Message;[Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v9    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_1

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 585
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public blacklist setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 16
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 669
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallForwardInTimeSlot action = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", reason = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 675
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;

    const/4 v5, 0x1

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-direct {v0, v13, v14, v5, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;-><init>(Ljava/lang/String;[JZLandroid/os/Message;)V

    move-object v5, v0

    .line 676
    .local v5, "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    const/16 v0, 0x6e

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v2, v6, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 680
    .local v15, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 681
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/MtkImsUt;

    .line 682
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getActionFromCFAction(I)I

    move-result v7

    .line 683
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v8

    .line 681
    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object v12, v15

    invoke-virtual/range {v6 .. v12}, Lcom/mediatek/ims/MtkImsUt;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v4, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 672
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v5    # "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    .end local v15    # "resp":Landroid/os/Message;
    :cond_0
    move-object/from16 v13, p3

    move-object/from16 v14, p5

    .line 691
    if-eqz v4, :cond_1

    .line 692
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_1

    .line 691
    :cond_1
    :goto_0
    nop

    .line 694
    :goto_1
    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallForwardingOption action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 511
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 512
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 513
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 516
    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCFPreviousDialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "getNumber":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    move-object p3, v1

    .line 527
    .end local v1    # "getNumber":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;

    .line 528
    const/4 v2, 0x0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-direct {v1, p3, v0, p6, p4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;I)V

    move-object v0, v1

    .line 530
    .local v0, "cf":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
    const/16 v1, 0xc

    .line 531
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v3

    .line 530
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 534
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 535
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getActionFromCFAction(I)I

    move-result v3

    .line 536
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v4

    .line 535
    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, v1

    invoke-interface/range {v2 .. v8}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_1

    .line 543
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p6, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 546
    .end local v0    # "cf":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_3
    :goto_1
    goto :goto_2

    :cond_4
    if-eqz p6, :cond_3

    .line 547
    invoke-virtual {p0, p6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    .line 549
    :goto_2
    return-void
.end method

.method public bridge synthetic blacklist setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist setDataRoamingEnabled(Z)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public blacklist setImsRegistrationState(I)V
    .locals 5
    .param p1, "value"    # I

    .line 288
    iput p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mImsRegistrationState:I

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "wifi_calling"

    .line 293
    .local v0, "notificationTag":Ljava/lang/String;
    const/4 v1, 0x1

    .line 295
    .local v1, "notificationId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    .line 296
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 298
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/4 v3, 0x1

    const-string v4, "wifi_calling"

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 300
    .end local v0    # "notificationTag":Ljava/lang/String;
    .end local v1    # "notificationId":I
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public bridge synthetic blacklist setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist setRadioPower(Z)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setRadioPower(Z)V

    return-void
.end method

.method public blacklist setServiceState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1168
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 1169
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->updateIsEmergencyOnly()V

    .line 1170
    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "line"    # I
    .param p3, "enable"    # Z
    .param p4, "number"    # Ljava/lang/String;

    .line 1234
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1237
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 1239
    .local v0, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v0, :cond_0

    .line 1240
    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1241
    .local v1, "record":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 1242
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1245
    .end local v1    # "record":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    .line 1247
    .end local v0    # "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic blacklist startRingbackTone()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startRingbackTone()V

    return-void
.end method

.method public bridge synthetic blacklist stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic blacklist stopRingbackTone()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopRingbackTone()V

    return-void
.end method

.method public bridge synthetic blacklist unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic blacklist unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateIsEmergencyOnly()V
    .locals 3

    .line 1177
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1178
    .local v0, "ss":Landroid/telephony/ServiceState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIsEmergencyOnly() sst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " supportImsEcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isSupportImsEcc()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isSupportImsEcc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    goto :goto_0

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1185
    :goto_0
    return-void
.end method

.method protected blacklist updateRoamingState(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 1112
    if-nez p1, :cond_0

    .line 1113
    const-string v0, "updateRoamingState: null ServiceState!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->loge(Ljava/lang/String;)V

    .line 1114
    return-void

    .line 1116
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 1118
    .local v0, "newRoamingState":Z
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mRoaming:Z

    if-ne v1, v0, :cond_1

    .line 1119
    return-void

    .line 1121
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1122
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 1125
    .local v1, "isInService":Z
    :goto_1
    if-nez v1, :cond_4

    .line 1126
    const-string v2, "updateRoamingState: we are OUT_OF_SERVICE, ignoring roaming change."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1134
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCsNotInServiceAndPsWwanReportingWlan(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1135
    const-string v2, "updateRoamingState: IWLAN masking roaming, ignore roaming change."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 1136
    return-void

    .line 1138
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_8

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1140
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mRoaming:Z

    .line 1141
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    .line 1143
    .local v3, "imsManager":Lcom/android/ims/ImsManager;
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mIsWfcModeHomeForDomRoaming:Z

    if-eqz v4, :cond_7

    .line 1144
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v4

    .line 1145
    .local v4, "voiceRoamingType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v5

    .line 1147
    .local v5, "dataRoamingType":I
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mRoaming:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    if-ne v5, v6, :cond_7

    .line 1149
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convert new roaming to HOME if it\'s domestic roaming,  voiceRoamingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dataRoamingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v3, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1154
    return-void

    .line 1158
    .end local v4    # "voiceRoamingType":I
    .end local v5    # "dataRoamingType":I
    :cond_7
    invoke-virtual {v3, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1159
    .end local v3    # "imsManager":Lcom/android/ims/ImsManager;
    goto :goto_2

    .line 1160
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRoamingState postponed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1161
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1163
    :goto_2
    return-void
.end method

.method public bridge synthetic blacklist updateServiceLocation()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateServiceLocation()V

    return-void
.end method
