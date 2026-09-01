.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
.super Lcom/android/internal/telephony/GsmCdmaConnection;
.source "MtkGsmCdmaConnection.java"


# static fields
.field private static final blacklist MO_CALL_VIBRATE_TIME:I = 0xc8

.field private static final blacklist PROP_LOG_TAG:Ljava/lang/String; = "GsmCdmaConn"


# instance fields
.field blacklist mForwardingAddress:Ljava/lang/String;

.field private blacklist mIsIncomingCallGwsd:Z

.field private blacklist mIsRealConnected:Z

.field private blacklist mReceivedAccepted:Z

.field blacklist mRedirectingAddress:Ljava/lang/String;

.field blacklist mRejectCauseToRIL:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "index"    # I

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 109
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->isGwsdCall()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 110
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 111
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setGwsdCall(Z)V

    .line 114
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 115
    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;->convertAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "origAddress":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 117
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 118
    invoke-interface {v1, v3}, Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;->getAddressExtras(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 117
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    .line 120
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNumberConverted:Z

    .line 121
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConvertedNumber:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 125
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p5, "isEmergencyCall"    # Z

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 99
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 100
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    .line 102
    return-void
.end method

.method protected static blacklist equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 158
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private blacklist isInChina()Z
    .locals 7

    .line 396
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 397
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 398
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "numeric":Ljava/lang/String;
    const-string v3, ""

    .line 400
    .local v3, "countryIso":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInChina, numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GsmCdmaConn"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 404
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInChina, countryIso="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 408
    :cond_1
    if-eqz v2, :cond_2

    const-string v4, "460"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "cn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private blacklist vibrateForAccepted()V
    .locals 4

    .line 412
    const-string v0, "persist.vendor.radio.telecom.vibrate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "vibrateForAccepted, disabled by Engineer Mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 415
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 420
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 422
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 423
    return-void
.end method


# virtual methods
.method public blacklist clearRejectWithCause()V
    .locals 3

    .line 524
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearRejectWithCause ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to -1)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaConn"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 528
    :cond_0
    return-void
.end method

.method public blacklist compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .line 141
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncoming:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    return v1

    .line 151
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 154
    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isIncomingCallGwsd()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 153
    :cond_3
    :goto_0
    return v1
.end method

.method public blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "other"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    .line 540
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 550
    return-void

    .line 544
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cs can transfer check fail"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cs ect fail (phone null)"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getForwardingAddress()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mForwardingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRedirectingAddress()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRedirectingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRejectWithCause()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    return v0
.end method

.method public declared-synchronized blacklist isIncomingCallGwsd()Z
    .locals 3

    monitor-enter p0

    .line 89
    :try_start_0
    const-string v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIncomingCallGwsd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 88
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isMultiparty()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isMultiparty()Z

    move-result v0

    return v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRealConnected()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    return v0
.end method

.method blacklist onCdmaCallAccepted()Z
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCdmaCallAccepted, mIsRealConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 383
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    if-nez v0, :cond_1

    .line 387
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 389
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    .line 390
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->vibrateForAccepted()V

    .line 392
    :cond_1
    return v2
.end method

.method public blacklist onConnectedInOrOut()V
    .locals 4

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConnectTime:J

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConnectTimeReal:J

    .line 430
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mDuration:J

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 438
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_4

    .line 441
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    goto :goto_1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 446
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mParent.mConnections.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 448
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    add-int/lit8 v0, v0, -0x1

    .line 451
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    goto :goto_0

    .line 452
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isInChina()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    if-nez v1, :cond_3

    if-ne v0, v2, :cond_3

    .line 453
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 454
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    .line 455
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->vibrateForAccepted()V

    .line 457
    :cond_3
    if-le v0, v2, :cond_4

    .line 458
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 459
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    .line 464
    .end local v0    # "count":I
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist onHangupLocal()V
    .locals 0

    .line 531
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->clearRejectWithCause()V

    .line 532
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 533
    return-void
.end method

.method protected blacklist processNextPostDialChar()V
    .locals 5

    .line 309
    const/4 v0, 0x0

    .line 312
    .local v0, "c":C
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    .line 313
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNextPostDialChar:I

    if-le v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mDisconnected:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 332
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 334
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processPostDialChar(C)Z

    move-result v1

    .line 336
    .local v1, "isValid":Z
    if-nez v1, :cond_3

    .line 338
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNextPostDialChar: c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsmCdmaConnection"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 323
    .end local v1    # "isValid":Z
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 326
    const/4 v0, 0x0

    .line 345
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 348
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPostDialHandler()Lcom/android/internal/telephony/Registrant;

    move-result-object v1

    .line 352
    .local v1, "postDialHandler":Lcom/android/internal/telephony/Registrant;
    if-eqz v1, :cond_4

    .line 353
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v2

    move-object v3, v2

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 355
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 356
    .local v2, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    .line 357
    .local v4, "ar":Landroid/os/AsyncResult;
    iput-object p0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 358
    iput-object v2, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 361
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 365
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 367
    .end local v2    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_4
    return-void
.end method

.method blacklist resumeHoldAfterDialFailed()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 480
    return-void
.end method

.method public blacklist setForwardingAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mForwardingAddress:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public blacklist setRedirectingAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRedirectingAddress:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public blacklist setRejectWithCause(I)V
    .locals 5
    .param p1, "telephonyDisconnectCode"    # I

    .line 505
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    const-string v1, ")"

    const-string v2, "GsmCdmaConn"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    .line 507
    .local v0, "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 508
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    .line 507
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->isMtkEnhancedCallBlockingEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRejectWithCause set ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 513
    .end local v0    # "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    :cond_0
    goto :goto_0

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRejectWithCause fail. mParent("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), mOwner("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void
.end method

.method public blacklist update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 11
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v1

    .line 205
    .local v1, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 207
    .local v2, "wasHolding":Z
    :goto_0
    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    .line 209
    .local v3, "newParent":Lcom/android/internal/telephony/GsmCdmaCall;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", newParent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v6, :cond_1

    .line 213
    const-string v6, "update: mOrigConnection is not null"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mNumberConverted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNumberConverted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 219
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkGsmCdmaCallTrackerExt:Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNumberConverted:Z

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConvertedNumber:Ljava/lang/String;

    .line 220
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;->isAddressChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 222
    .local v6, "addrChanged":Z
    if-eqz v6, :cond_2

    .line 224
    const-string v7, "update: phone # changed!"

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 225
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 226
    const/4 v0, 0x1

    .line 230
    .end local v6    # "addrChanged":Z
    :cond_2
    :goto_1
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result v6

    .line 231
    .local v6, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAudioQuality()I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: audioQuality # changed!:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 235
    const-string v8, "high"

    goto :goto_2

    :cond_3
    const-string v8, "standard"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setAudioQuality(I)V

    .line 238
    const/4 v0, 0x1

    .line 242
    :cond_4
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 251
    :cond_5
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 252
    const/4 v0, 0x1

    .line 253
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 256
    :cond_6
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 257
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapNamePresentation:I

    .line 258
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNumberPresentation:I

    .line 260
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v3, v7, :cond_8

    .line 261
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v7, :cond_7

    .line 262
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 264
    :cond_7
    invoke-virtual {v3, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 265
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 266
    const/4 v0, 0x1

    goto :goto_6

    .line 269
    :cond_8
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v7

    .line 270
    .local v7, "parentStateChange":Z
    if-nez v0, :cond_a

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    move v8, v5

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v4

    :goto_5
    move v0, v8

    .line 275
    .end local v7    # "parentStateChange":Z
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v3, v8, :cond_b

    goto :goto_7

    :cond_b
    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wasConnectingInOrOut="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wasHolding="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isConnectingInOrOut="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", changed="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 284
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    if-nez v4, :cond_c

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onConnectedInOrOut()V

    .line 288
    :cond_c
    if-eqz v0, :cond_d

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_d

    .line 290
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onStartedHolding()V

    .line 294
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_e

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mReceivedAccepted="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_e

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    if-eqz v4, :cond_e

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onCdmaCallAccepted()Z

    .line 298
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    .line 303
    :cond_e
    return v0
.end method

.method blacklist updateConferenceParticipantAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 485
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 486
    return-void
.end method
