.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.source "MtkImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;
    }
.end annotation


# static fields
.field private static final blacklist EXTRA_IMS_GWSD:Ljava/lang/String; = "ims_gwsd"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkImsPhoneConnection"

.field public static final blacklist STATE_AUDIO_RINGTONE:I = 0x1

.field public static final blacklist STATE_VIDEO_RINGTONE:I = 0x2

.field public static final blacklist SUPPORTS_AUDIO_RINGTONE:I = 0x40

.field public static final blacklist SUPPORTS_VIDEO_RINGTONE:I = 0x80


# instance fields
.field private blacklist mCallIdBeforeDisconnected:I

.field private blacklist mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsIncomingCallDuringRttEmcGuard:Z

.field private blacklist mIsIncomingCallGwsd:Z

.field private blacklist mIsRttVideoSwitchSupported:Z

.field public blacklist mWasMultiparty:Z

.field public blacklist mWasPreMultipartyHost:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 575
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 103
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    nop

    .line 105
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "ims_gwsd"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z

    .line 114
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 575
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 117
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput-object p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "participantsToDial"    # [Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z

    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 575
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V

    .line 131
    return-void
.end method

.method private blacklist fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 622
    nop

    .line 623
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 624
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 625
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 626
    nop

    .line 627
    const-string v2, "rtt_supported_for_vt_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 629
    :cond_0
    return-void
.end method

.method private blacklist isParticipantHost([Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "hostHandles"    # [Landroid/net/Uri;
    .param p2, "handle"    # Landroid/net/Uri;

    .line 323
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 328
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 332
    return v0

    .line 334
    :cond_1
    aget-object v1, v2, v0

    .line 336
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 337
    .local v5, "hostHandle":Landroid/net/Uri;
    if-nez v5, :cond_2

    .line 338
    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "hostNumber":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 348
    .local v7, "isHost":Z
    if-eqz v7, :cond_3

    .line 349
    const/4 v0, 0x1

    return v0

    .line 336
    .end local v5    # "hostHandle":Landroid/net/Uri;
    .end local v6    # "hostNumber":Ljava/lang/String;
    .end local v7    # "isHost":Z
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    :cond_4
    return v0

    .line 324
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "numberParts":[Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v1, "MtkImsPhoneConnection"

    const-string v2, "isParticipantHost(N) : host or participant uri null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v0
.end method

.method private blacklist isTestSim()Z
    .locals 3

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "isTestSim":Z
    const-string v1, "vendor.gsm.sim.ril.testsim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 641
    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    const-string v1, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    const-string v1, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v0
.end method

.method private blacklist removeHostAddress()V
    .locals 8

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "hostAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 295
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentSubscriberUris()[Landroid/net/Uri;

    move-result-object v2

    const-string v3, "MtkImsPhoneConnection"

    if-eqz v2, :cond_3

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentSubscriberUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    .line 304
    .local v2, "conferenceHostAddress":[Landroid/net/Uri;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Landroid/net/Uri;

    .line 306
    const/4 v4, 0x0

    .line 308
    .local v4, "hostParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/internal/ConferenceParticipant;

    .line 309
    .local v6, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-virtual {v6}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isParticipantHost([Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    move-object v4, v6

    .line 311
    goto :goto_1

    .line 313
    .end local v6    # "participant":Lcom/android/ims/internal/ConferenceParticipant;
    :cond_0
    goto :goto_0

    .line 315
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 316
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove host participant: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 299
    .end local v2    # "conferenceHostAddress":[Landroid/net/Uri;
    .end local v4    # "hostParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    :cond_3
    const-string v2, "remove host participant failed "

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private blacklist setConnectionAddressDisplay()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 487
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_0

    .line 488
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onAddressDisplayChanged()V

    .line 490
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    goto :goto_0

    .line 491
    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist allowedUpdateMOAddress()Z
    .locals 1

    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 3
    .param p1, "localProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "capabilities"    # I

    .line 610
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result p2

    .line 611
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isRttEnabledForCall()Z

    move-result v0

    .line 612
    .local v0, "isRttActive":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLocalCallCapabilities: isRttEnabledForCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsRttVideoSwitchSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    if-nez v1, :cond_0

    .line 615
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result p2

    .line 618
    :cond_0
    return p2
.end method

.method protected blacklist applyVideoRingtoneCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 7
    .param p1, "remoteProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "capabilities"    # I

    .line 496
    move v0, p2

    .line 497
    .local v0, "remoteCapabilities":I
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 498
    .local v1, "ringtoneState":I
    const/16 v2, 0x40

    const/16 v3, 0x80

    if-ltz v1, :cond_2

    .line 499
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    const-string v6, "MtkImsPhoneConnection"

    if-ne v4, v5, :cond_0

    .line 500
    const-string v4, "Add video ringtone capability"

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->addCapability(II)I

    move-result v0

    goto :goto_0

    .line 503
    :cond_0
    const-string v4, "Remove video ringtone capability"

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    .line 506
    :goto_0
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 507
    const-string v3, "Add audio ringtone capability"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->addCapability(II)I

    move-result v0

    goto :goto_1

    .line 510
    :cond_1
    const-string v3, "Remove audio ringtone capability"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    goto :goto_1

    .line 514
    :cond_2
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    .line 515
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    .line 517
    :goto_1
    return v0
.end method

.method protected blacklist calNumberPresentation(Landroid/telephony/ims/ImsCallProfile;)I
    .locals 2
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 542
    nop

    .line 543
    const-string v0, "oir"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 542
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v0

    .line 545
    .local v0, "nump":I
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncoming:Z

    if-nez v1, :cond_0

    .line 546
    const/4 v0, 0x1

    .line 549
    :cond_0
    return v0
.end method

.method blacklist getCallId()I
    .locals 5

    .line 226
    const-string v0, "MtkImsPhoneConnection"

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 227
    .local v2, "call":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "callId":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 233
    const-string v4, "Abnormal! Call Id = null"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v1

    .line 237
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    .end local v3    # "callId":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 240
    .end local v2    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1
.end method

.method blacklist getCallIdBeforeDisconnected()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    return v0
.end method

.method public blacklist getConferenceParticipantAddress(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    .line 266
    const-string v0, ""

    .line 268
    .local v0, "emptyAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    const-string v2, "MtkImsPhoneConnection"

    if-nez v1, :cond_0

    .line 269
    const-string v1, "getConferenceParticipantAddress(): no XML information"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v0

    .line 273
    :cond_0
    if-ltz p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/ConferenceParticipant;

    .line 279
    .local v1, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    if-nez v1, :cond_2

    .line 280
    const-string v3, "getConferenceParticipantAddress(): empty participant info"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v0

    .line 284
    :cond_2
    invoke-virtual {v1}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    .line 285
    .local v3, "userEntity":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConferenceParticipantAddress(): ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-static {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 274
    .end local v1    # "participant":Lcom/android/ims/internal/ConferenceParticipant;
    .end local v3    # "userEntity":Landroid/net/Uri;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConferenceParticipantAddress(): invalid index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v0
.end method

.method blacklist getParentCallName()Ljava/lang/String;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-nez v0, :cond_0

    .line 358
    const-string v0, "Unknown"

    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_1

    .line 362
    const-string v0, "Foreground Call"

    return-object v0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_2

    .line 364
    const-string v0, "Background Call"

    return-object v0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_3

    .line 366
    const-string v0, "Ringing Call"

    return-object v0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_4

    .line 368
    const-string v0, "Handover Call"

    return-object v0

    .line 370
    :cond_4
    const-string v0, "Abnormal"

    return-object v0
.end method

.method public blacklist hangup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "CC"

    const-string v2, "Hangup"

    const-string v3, "MtkImsphoneConnection.hangup"

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hangup()V

    .line 148
    return-void
.end method

.method public blacklist isConfHostBeforeHandover()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    return v0
.end method

.method public blacklist isIncomingCallDuringRttEmcGuard()Z
    .locals 2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIncomingCallDuringRttEmcGuard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    return v0
.end method

.method public declared-synchronized blacklist isIncomingCallGwsd()Z
    .locals 3

    monitor-enter p0

    .line 134
    :try_start_0
    const-string v0, "MtkImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIncomingCallGwsd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isIncomingCallMultiparty()Z
    .locals 1

    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    instance-of v0, v0, Lcom/mediatek/ims/MtkImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    check-cast v0, Lcom/mediatek/ims/MtkImsCall;

    .line 403
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCall;->isIncomingCallMultiparty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :cond_0
    const/4 v0, 0x0

    .line 402
    :goto_0
    monitor-exit p0

    return v0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isMultipartyBeforeHandover()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    return v0
.end method

.method protected blacklist needUpdateAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isMultiparty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x1

    return v0

    .line 566
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p1, "radioConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 467
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_0

    .line 468
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    .line 470
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    goto :goto_0

    .line 471
    :cond_1
    return-void
.end method

.method blacklist notifyConferenceParticipantsInvited(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .line 453
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 454
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_0

    .line 455
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onConferenceParticipantsInvited(Z)V

    .line 457
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    goto :goto_0

    .line 458
    :cond_1
    return-void
.end method

.method public blacklist notifyRedialEcc(Z)V
    .locals 3
    .param p1, "isNeedUserConfirm"    # Z

    .line 474
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 475
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_0

    .line 476
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onRedialEcc(Z)V

    .line 478
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    goto :goto_0

    .line 479
    :cond_1
    return-void
.end method

.method public blacklist onDisconnect()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 159
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method public blacklist onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 4
    .param p1, "endpoint"    # Landroid/net/Uri;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "CC"

    const-string v3, "RemoveMember"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    .line 177
    return-void
.end method

.method public blacklist setIncomingCallDuringRttEmcGuard(Z)V
    .locals 2
    .param p1, "isDuringRttGuard"    # Z

    .line 582
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIncomingCallDuringRttEmcGuard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void
.end method

.method protected blacklist skipSwitchingCallToForeground()Z
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eq v0, v1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update() - Switch Connection to foreground call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist switchCallToBackgroundIfNecessary()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update() - Switch Connection to background call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 535
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 536
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 538
    :cond_0
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, " mParent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 189
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->setConnectionAddressDisplay()V

    .line 192
    :cond_0
    return v0
.end method

.method public blacklist updateConferenceParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 409
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeHostAddress()V

    .line 410
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateConferenceParticipants(Ljava/util/List;)V

    .line 411
    return-void
.end method

.method public blacklist updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 599
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 601
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaCapabilities capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getConnectionCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    return v0
.end method
