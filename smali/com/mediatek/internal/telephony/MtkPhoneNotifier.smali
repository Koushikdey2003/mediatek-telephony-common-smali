.class public Lcom/mediatek/internal/telephony/MtkPhoneNotifier;
.super Lcom/android/internal/telephony/DefaultPhoneNotifier;
.source "MtkPhoneNotifier.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkPhoneNotifr"


# instance fields
.field private final blacklist mFakeSub:I

.field private blacklist mIsOp20:Z

.field protected blacklist mMtkRegistry:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Landroid/content/Context;)V

    .line 78
    const v0, 0x7ffffffe

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mFakeSub:I

    .line 278
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mIsOp20:Z

    .line 82
    const-string v0, "MtkPhoneNotifr"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->init()Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    .line 84
    const-string v0, "telephony.mtkregistry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mMtkRegistry:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    .line 86
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->getServiceStateBrief(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    return-object v0
.end method

.method private blacklist getServiceStateBrief(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 89
    if-nez p1, :cond_0

    const-string v0, "n/a"

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voice_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method


# virtual methods
.method protected blacklist mtkConvertDunToDefault(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 286
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mIsOp20:Z

    if-nez v0, :cond_0

    .line 287
    return-object p1

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 289
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-nez v0, :cond_1

    .line 290
    return-object p1

    .line 291
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 292
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 294
    :cond_2
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    return-object p1

    .line 296
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_4

    .line 297
    return-object p1

    .line 299
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 300
    .local v2, "rilRat":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    if-eq v2, v1, :cond_5

    const/16 v1, 0xc

    if-ne v2, v1, :cond_6

    .line 306
    :cond_5
    const/16 v1, 0x11

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object p1

    .line 308
    :cond_6
    return-object p1

    .line 293
    .end local v2    # "rilRat":I
    :cond_7
    :goto_0
    return-object p1
.end method

.method protected blacklist mtkGetDataNetworkType(Landroid/telephony/TelephonyManager;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;I)I
    .locals 4
    .param p1, "telephony"    # Landroid/telephony/TelephonyManager;
    .param p2, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p5, "subId"    # I

    .line 264
    const-string v0, "default"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p4, v0, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 268
    .local v0, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getTurboSS()Lmediatek/telephony/MtkServiceState;

    move-result-object v1

    .line 269
    .local v1, "turboSS":Lmediatek/telephony/MtkServiceState;
    if-eqz v1, :cond_0

    .line 270
    const-string v2, "MtkPhoneNotifr"

    const-string v3, "mtkGetDataNetworkType: get turbo SS"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v1}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v2

    return v2

    .line 275
    .end local v0    # "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .end local v1    # "turboSS":Lmediatek/telephony/MtkServiceState;
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mtkGetDataNetworkType(Landroid/telephony/TelephonyManager;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;I)I

    move-result v0

    return v0
.end method

.method public blacklist notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 314
    .local v0, "subId":I
    move-object v1, p2

    .line 315
    .local v1, "mCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;-><init>(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;ILjava/util/List;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 325
    return-void
.end method

.method public blacklist notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "preciseState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkPhoneNotifier notifyDataConnection phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preciseState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v1, "MtkPhoneNotifr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string v0, "emergency"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/telephony/PreciseDataConnectionState;)V

    .line 214
    return-void
.end method

.method public blacklist notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Lmediatek/telephony/MtkServiceState;)V
    .locals 5
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "mss"    # Lmediatek/telephony/MtkServiceState;

    .line 217
    move-object v0, p2

    .line 218
    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 223
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x7ffffffe

    .line 225
    .local v2, "subId":I
    :goto_0
    if-nez v0, :cond_1

    .line 226
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    move-object v0, v3

    .line 227
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 230
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MtkPhoneNotifier notifyMtkServiceState phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->getServiceStateBrief(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    const-string v4, "MtkPhoneNotifr"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v3, v2, v1, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    .line 238
    :cond_2
    return-void
.end method

.method public blacklist notifyMtkSignalStrength(Lcom/android/internal/telephony/Phone;Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ss"    # Landroid/telephony/SignalStrength;

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 246
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7ffffffe

    .line 249
    .local v1, "subId":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtkPhoneNotifier notifyMtkSignalStrength phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkPhoneNotifr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v2, v1, v0, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    .line 258
    :cond_1
    return-void
.end method

.method public blacklist notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 100
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 101
    .local v1, "subId":I
    new-instance v2, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-direct {v2, v3}, Lmediatek/telephony/MtkServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 102
    .local v2, "mtkSS":Lmediatek/telephony/MtkServiceState;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$1;-><init>(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;IILmediatek/telephony/MtkServiceState;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 115
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    .end local v2    # "mtkSS":Lmediatek/telephony/MtkServiceState;
    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 117
    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 119
    .local v2, "phoneId":I
    const v3, 0x7ffffffe

    .line 121
    .local v3, "subId":I
    if-nez v0, :cond_1

    .line 122
    new-instance v4, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v4}, Lmediatek/telephony/MtkServiceState;-><init>()V

    move-object v0, v4

    .line 123
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    goto :goto_0

    .line 135
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 138
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->getServiceStateBrief(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v5, "MtkPhoneNotifr"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v4, v3, v2, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    .line 149
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v4, v1, v2, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    .line 152
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 158
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 159
    .local v1, "subId":I
    new-instance v2, Lmediatek/telephony/MtkSignalStrength;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lmediatek/telephony/MtkSignalStrength;-><init>(ILandroid/telephony/SignalStrength;)V

    .line 160
    .local v2, "mtkSS":Lmediatek/telephony/MtkSignalStrength;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;-><init>(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;IILmediatek/telephony/MtkSignalStrength;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 174
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    .end local v2    # "mtkSS":Lmediatek/telephony/MtkSignalStrength;
    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 177
    .restart local v0    # "phoneId":I
    const v1, 0x7ffffffe

    .line 179
    .restart local v1    # "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySignalStrength phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "MtkPhoneNotifr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 185
    invoke-virtual {v2, v1, v0, v3}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    .line 189
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    :cond_1
    :goto_0
    return-void
.end method
