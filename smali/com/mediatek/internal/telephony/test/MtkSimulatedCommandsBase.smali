.class public Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
.super Lcom/android/internal/telephony/BaseCommands;
.source "MtkSimulatedCommandsBase.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/mediatek/internal/telephony/test/MtkSimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;,
        Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_PIN1_ATTEMPT:I = 0x5

.field public static final blacklist DEFAULT_PIN2_ATTEMPT:I = 0x5

.field public static final blacklist DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field public static final blacklist DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field public static final blacklist FAKE_ESN:Ljava/lang/String; = "1234"

.field public static final blacklist FAKE_IMEI:Ljava/lang/String; = "012345678901234"

.field public static final blacklist FAKE_IMEISV:Ljava/lang/String; = "99"

.field public static final blacklist FAKE_LONG_NAME:Ljava/lang/String; = "Fake long name"

.field public static final blacklist FAKE_MCC_MNC:Ljava/lang/String; = "310260"

.field public static final blacklist FAKE_MEID:Ljava/lang/String; = "1234"

.field public static final blacklist FAKE_SHORT_NAME:Ljava/lang/String; = "Fake short name"

.field private static final blacklist INITIAL_FDN_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field private static final blacklist INITIAL_LOCK_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSimulatedCommandsBase"

.field private static final blacklist SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final blacklist SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field private final blacklist getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChannelId:I

.field public blacklist mCssSupported:Z

.field private blacklist mDataRadioTech:I

.field private blacklist mDataRegState:I

.field private blacklist mDcSuccess:Z

.field public blacklist mDefaultRoamingIndicator:I

.field private final blacklist mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

.field private blacklist mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

.field private blacklist mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

.field private blacklist mImei:Ljava/lang/String;

.field private blacklist mImeiSv:Ljava/lang/String;

.field private blacklist mImsRegState:[I

.field private blacklist mIsRadioPowerFailResponse:Z

.field public blacklist mMaxDataCalls:I

.field blacklist mNetworkType:I

.field blacklist mNextCallFailCause:I

.field blacklist mPausedResponseCount:I

.field blacklist mPausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPin1attemptsRemaining:I

.field blacklist mPin2Code:Ljava/lang/String;

.field blacklist mPin2UnlockAttempts:I

.field blacklist mPinCode:Ljava/lang/String;

.field blacklist mPinUnlockAttempts:I

.field blacklist mPuk2UnlockAttempts:I

.field blacklist mPukUnlockAttempts:I

.field public blacklist mReasonForDenial:I

.field public blacklist mRoamingIndicator:I

.field private blacklist mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

.field private blacklist mShouldReturnCellInfo:Z

.field private blacklist mSignalStrength:Landroid/telephony/SignalStrength;

.field blacklist mSimFdnEnabled:Z

.field blacklist mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field blacklist mSimLockEnabled:Z

.field blacklist mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field blacklist mSsnNotifyOn:Z

.field public blacklist mSystemIsInPrl:I

.field private blacklist mVoiceRadioTech:I

.field private blacklist mVoiceRegState:I

.field blacklist simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 96
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_LOCK_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 99
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_FDN_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnNotifyOn:Z

    .line 132
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRegState:I

    .line 133
    const/4 v3, 0x3

    iput v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    .line 134
    iput v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRegState:I

    .line 135
    iput v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRadioTech:I

    .line 144
    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mShouldReturnCellInfo:Z

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mChannelId:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    .line 155
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNextCallFailCause:I

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDcSuccess:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIsRadioPowerFailResponse:Z

    .line 982
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1010
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1035
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1410
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "MtkSimulatedCommandsBase"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 169
    .local v0, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-direct {v3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    .line 171
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 172
    sget-object v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_LOCK_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 173
    sget-object v4, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockEnabled:Z

    .line 174
    const-string v3, "1234"

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    .line 175
    sget-object v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_FDN_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 176
    sget-object v4, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    if-eq v3, v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabled:Z

    .line 177
    const-string v1, "5678"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private blacklist getCellInfoGsm()Landroid/telephony/CellInfoGsm;
    .locals 4

    .line 1890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1892
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    const-wide v2, 0x1526bf6e6d4L

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1896
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    const-string v1, "310"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1900
    const-string v1, "260"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1901
    const-string v1, "long"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1902
    const-string v1, "short"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1904
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1905
    const/16 v1, 0x1c8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    const/16 v1, 0x3b6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1914
    sget-object v1, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfoGsm;

    return-object v1
.end method

.method private blacklist isSimLocked()Z
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    if-eq v0, v1, :cond_0

    .line 1236
    const/4 v0, 0x1

    return v0

    .line 1238
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 187
    const-string v0, "MtkSimulatedCommandsBase"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private blacklist resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 1677
    if-eqz p1, :cond_1

    .line 1678
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1679
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1682
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1685
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1666
    if-eqz p1, :cond_1

    .line 1667
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1668
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1674
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist unimplemented(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1653
    if-eqz p1, :cond_1

    .line 1654
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1657
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1660
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1663
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 804
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->acceptCall(Landroid/os/Message;)V

    .line 805
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 807
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 808
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 810
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 812
    :goto_0
    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1272
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1273
    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1266
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1267
    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1259
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1260
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    .line 1261
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1262
    return-void
.end method

.method public blacklist cancelPendingUssd(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 1497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1498
    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 404
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 405
    return-void
.end method

.method public blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 371
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    .line 373
    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 375
    return-void

    .line 378
    :cond_0
    const-string v1, "MtkSimulatedCommandsBase"

    const-string v2, "[SimCmd] changeIccPin: pin failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 382
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 383
    return-void
.end method

.method public blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 387
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    .line 389
    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 391
    return-void

    .line 394
    :cond_0
    const-string v1, "MtkSimulatedCommandsBase"

    const-string v2, "[SimCmd] changeIccPin2: pin2 failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 398
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 399
    return-void
.end method

.method public blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1868
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1869
    return-void
.end method

.method public blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1860
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1862
    invoke-virtual {p0, p1, p2, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1863
    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 745
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 747
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 748
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 752
    :goto_0
    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1182
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->deactivateDataCall(IILandroid/os/Message;)V

    .line 1183
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1184
    return-void
.end method

.method public blacklist deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete RUIM message at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1119
    return-void
.end method

.method public blacklist deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete message at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1113
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 563
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 565
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p7, "result"    # Landroid/os/Message;

    .line 585
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 587
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, p7, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 590
    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 184
    :cond_0
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1387
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 766
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 768
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 769
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 771
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 773
    :goto_0
    return-void
.end method

.method public blacklist forceDataDormancy(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1808
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1809
    return-void
.end method

.method public blacklist getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2080
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2081
    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1424
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1425
    return-void
.end method

.method public blacklist getBasebandVersion(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1445
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getBasebandVersion(Landroid/os/Message;)V

    .line 1446
    const-string v0, "MtkSimulatedCommandsBase"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1447
    return-void
.end method

.method public blacklist getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1698
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1699
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "123"

    aput-object v2, v0, v1

    .line 1700
    const/4 v1, 0x1

    const-string v2, "456"

    aput-object v2, v0, v1

    .line 1701
    const/4 v1, 0x2

    const-string v2, "789"

    aput-object v2, v0, v1

    .line 1702
    const/4 v1, 0x3

    const-string v2, "234"

    aput-object v2, v0, v1

    .line 1703
    const/4 v1, 0x4

    const-string v2, "345"

    aput-object v2, v0, v1

    .line 1704
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1705
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1319
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1798
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1800
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1231
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1232
    return-void
.end method

.method public declared-synchronized blacklist getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    monitor-enter p0

    .line 1923
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mShouldReturnCellInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1925
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    .local v0, "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getCellInfoGsm()Landroid/telephony/CellInfoGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    .end local v0    # "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local p0    # "this":Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    monitor-exit p0

    return-void

    .line 1922
    .end local p1    # "response":Landroid/os/Message;
    .end local p2    # "workSource":Landroid/os/WorkSource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 517
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getCurrentCalls(Landroid/os/Message;)V

    .line 518
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 523
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 526
    :goto_0
    return-void
.end method

.method public blacklist getDataCallList(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public blacklist getDataRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 999
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1001
    new-instance v0, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 1002
    .local v0, "ret":Landroid/hardware/radio/V1_0/DataRegStateResult;
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    .line 1003
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    .line 1004
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mMaxDataCalls:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 1005
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 1007
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1008
    return-void
.end method

.method public blacklist getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1691
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1692
    const-string v0, "012345678901234"

    const-string v1, "99"

    const-string v2, "1234"

    filled-new-array {v0, v1, v2, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1693
    return-void
.end method

.method public blacklist getGetDataRegistrationStateCallCount()I
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public blacklist getGetNetworkSelectionModeCallCount()I
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public blacklist getGetOperatorCallCount()I
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1040
    .local v0, "count":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method public blacklist getGetVoiceRegistrationStateCallCount()I
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1825
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1826
    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 2308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2033
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2034
    return-void
.end method

.method public blacklist getIMEI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 621
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIMEI(Landroid/os/Message;)V

    .line 622
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImei:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "012345678901234"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public blacklist getIMEISV(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 638
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIMEISV(Landroid/os/Message;)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImeiSv:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "99"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 640
    return-void
.end method

.method public blacklist getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 595
    return-void
.end method

.method public blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 605
    const-string v0, "012345678901234"

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 606
    return-void
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 194
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIccCardStatus(Landroid/os/Message;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IccCardStatus not set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 200
    :goto_0
    return-void
.end method

.method public blacklist getIccSlotsStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 208
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIccSlotsStatus(Landroid/os/Message;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 215
    :goto_0
    return-void
.end method

.method public blacklist getImsRegistrationState(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 1957
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    if-nez v0, :cond_0

    .line 1958
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1962
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public blacklist getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 843
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 844
    .local v0, "mFailCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNextCallFailCause:I

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 845
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 846
    return-void
.end method

.method public blacklist getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 860
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 861
    return-void
.end method

.method public blacklist getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 855
    return-void
.end method

.method public blacklist getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2069
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2070
    return-void
.end method

.method public blacklist getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 867
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1402
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1404
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1406
    .local v0, "ret":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1407
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1408
    return-void
.end method

.method public blacklist getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1025
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1026
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1028
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "Fake long name"

    aput-object v2, v0, v1

    .line 1029
    const/4 v1, 0x1

    const-string v2, "Fake short name"

    aput-object v2, v0, v1

    .line 1030
    const/4 v1, 0x2

    const-string v2, "310260"

    aput-object v2, v0, v1

    .line 1032
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1033
    return-void
.end method

.method public blacklist getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getDataCallList(Landroid/os/Message;)V

    .line 535
    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1195
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1196
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1198
    .local v0, "ret":[I
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNetworkType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1199
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1200
    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1730
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1731
    return-void
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 2085
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getRadioCapability(Landroid/os/Message;)V

    .line 2086
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xffff

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2087
    return-void
.end method

.method public blacklist getRilVersion()I
    .locals 1

    .line 1935
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getSignalStrength(Landroid/os/Message;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 875
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthGsm;

    const/16 v1, 0x14

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v3, v1, v4, v5}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    new-instance v4, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 885
    return-void
.end method

.method public blacklist getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1210
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1211
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1879
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 1880
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1881
    .local v0, "ret":[I
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1882
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1883
    return-void
.end method

.method public blacklist getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 968
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 970
    new-instance v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 971
    .local v0, "ret":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    .line 972
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    .line 973
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCssSupported:Z

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 974
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 975
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSystemIsInPrl:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 976
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDefaultRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 977
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 979
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 980
    return-void
.end method

.method public blacklist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 949
    return-void
.end method

.method public blacklist hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 659
    .local v0, "success":Z
    const/4 v1, 0x0

    const-string v2, "GSM"

    if-nez v0, :cond_0

    .line 660
    const-string v3, "[SimCmd] hangupConnection: resultFail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 663
    :cond_0
    const-string v3, "[SimCmd] hangupConnection: resultSuccess"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 666
    :goto_0
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 702
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 704
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 705
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 707
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 709
    :goto_0
    return-void
.end method

.method public blacklist hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 680
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 682
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 683
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 685
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 687
    :goto_0
    return-void
.end method

.method public blacklist iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1989
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1990
    return-void
.end method

.method public blacklist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 1278
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1279
    return-void
.end method

.method public blacklist iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 1289
    invoke-direct {p0, p10}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1290
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1982
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1983
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mChannelId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1984
    .local v0, "result":Ljava/lang/Object;
    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1985
    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 2008
    invoke-direct {p0, p7}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2009
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 1996
    move-object v0, p0

    move-object/from16 v10, p8

    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1998
    iget-object v1, v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v1, :cond_0

    .line 1999
    invoke-direct {p0, v10, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 2001
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IccIoResult not set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2003
    :goto_0
    return-void
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1509
    if-eqz p2, :cond_0

    .line 1510
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1511
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1513
    :cond_0
    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1528
    if-eqz p2, :cond_0

    .line 1529
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1530
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1532
    :cond_0
    return-void
.end method

.method public blacklist isDataAllowed()Z
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist notifyEmergencyCallbackMode()V
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2110
    :cond_0
    return-void
.end method

.method public blacklist notifyExitEmergencyCallbackMode()V
    .locals 3

    .line 2119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2123
    :cond_0
    return-void
.end method

.method public blacklist notifyGsmBroadcastSms(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 2095
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2098
    :cond_0
    return-void
.end method

.method public blacklist notifyIccSmsFull()V
    .locals 1

    .line 2101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2104
    :cond_0
    return-void
.end method

.method public blacklist notifyImsNetworkStateChanged()V
    .locals 1

    .line 2126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2129
    :cond_0
    return-void
.end method

.method public blacklist notifyModemReset()V
    .locals 4

    .line 2132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const-string v3, "Test"

    invoke-direct {v1, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2135
    :cond_0
    return-void
.end method

.method public blacklist notifyNetworkStateChanged()V
    .locals 1

    .line 2150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2151
    return-void
.end method

.method public blacklist notifyOtaProvisionStatusChanged()V
    .locals 4

    .line 2155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_0

    .line 2156
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2157
    .local v0, "ret":[I
    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 2158
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2160
    .end local v0    # "ret":[I
    :cond_0
    return-void
.end method

.method public blacklist notifyRadioOn()V
    .locals 1

    .line 2145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2146
    return-void
.end method

.method public blacklist notifySignalStrength()V
    .locals 8

    .line 2163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 2164
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthGsm;

    const/16 v1, 0x14

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v3, v1, v4, v5}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    new-instance v4, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_1

    .line 2174
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2177
    :cond_1
    return-void
.end method

.method public blacklist notifySmsStatus(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 2089
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2092
    :cond_0
    return-void
.end method

.method public blacklist nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 2013
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2014
    return-void
.end method

.method public blacklist nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2028
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2029
    return-void
.end method

.method public blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2023
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2024
    return-void
.end method

.method public blacklist nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 2018
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2019
    return-void
.end method

.method public blacklist pauseResponses()V
    .locals 1

    .line 1632
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    .line 1633
    return-void
.end method

.method public blacklist progressConnectingCallState()V
    .locals 1

    .line 1548
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingCallState()V

    .line 1549
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1550
    return-void
.end method

.method public blacklist progressConnectingToActive()V
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingToActive()V

    .line 1557
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1558
    return-void
.end method

.method public blacklist pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2054
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2055
    return-void
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 908
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 910
    .local v1, "ret":[I
    const/4 v2, 0x0

    aput v0, v1, v2

    .line 911
    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 912
    const/4 v2, 0x3

    aput v2, v1, v3

    .line 913
    aput v0, v1, v2

    .line 915
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 916
    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1299
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1379
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1381
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1382
    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1340
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1341
    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1715
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1716
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 422
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 423
    return-void
.end method

.method public blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 428
    const-string v0, "MtkSimulatedCommandsBase"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string v3, "SC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    if-eqz p5, :cond_1

    .line 430
    new-array v1, v1, [I

    .line 431
    .local v1, "r":[I
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockEnabled:Z

    aput v3, v1, v2

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCmd] queryFacilityLock: SIM is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    aget v2, v1, v2

    if-nez v2, :cond_0

    const-string v2, "unlocked"

    goto :goto_0

    :cond_0
    const-string v2, "locked"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p5, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 436
    .end local v1    # "r":[I
    :cond_1
    return-void

    .line 437
    :cond_2
    if-eqz p1, :cond_5

    const-string v3, "FD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 438
    if-eqz p5, :cond_4

    .line 439
    new-array v1, v1, [I

    .line 440
    .restart local v1    # "r":[I
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabled:Z

    aput v3, v1, v2

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCmd] queryFacilityLock: FDN is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    aget v2, v1, v2

    if-nez v2, :cond_3

    const-string v2, "disabled"

    goto :goto_1

    :cond_3
    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p5, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 445
    .end local v1    # "r":[I
    :cond_4
    return-void

    .line 448
    :cond_5
    invoke-direct {p0, p5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 449
    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1766
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1767
    return-void
.end method

.method public blacklist registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2139
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    .line 2140
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2141
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2142
    return-void
.end method

.method public blacklist registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2270
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2271
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2272
    return-void
.end method

.method public blacklist registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2059
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2060
    return-void
.end method

.method public blacklist registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2219
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2220
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2221
    return-void
.end method

.method public blacklist registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2282
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2283
    return-void
.end method

.method public blacklist registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2211
    return-void
.end method

.method public blacklist rejectCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 824
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 826
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 827
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 831
    :goto_0
    return-void
.end method

.method public blacklist reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1220
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1221
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1222
    return-void
.end method

.method public blacklist reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1227
    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1874
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1875
    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2038
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 2039
    return-void
.end method

.method public blacklist resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1503
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1504
    return-void
.end method

.method public blacklist resumeResponses()V
    .locals 3

    .line 1638
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    .line 1640
    if-nez v0, :cond_1

    .line 1641
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1642
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1644
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1646
    :cond_1
    const-string v0, "GSM"

    const-string v1, "MtkSimulatedCommandsBase.resumeResponses < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :goto_1
    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1080
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1774
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1775
    return-void
.end method

.method public blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 1788
    return-void
.end method

.method public blacklist sendCdmaSms([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1782
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendCdmaSms([BLandroid/os/Message;)V

    .line 1783
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1784
    return-void
.end method

.method public blacklist sendDeviceState(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2225
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendDeviceState(IZLandroid/os/Message;)V

    .line 2226
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2227
    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1050
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1051
    return-void
.end method

.method public blacklist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 932
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 939
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 940
    return-void
.end method

.method public blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1967
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 1969
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p4, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1970
    return-void
.end method

.method public blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 6
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1975
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 1977
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p5, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1978
    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1092
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1093
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1094
    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1106
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1107
    return-void
.end method

.method public blacklist sendStkCcAplha(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 1460
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->triggerIncomingStkCcAlpha(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method public blacklist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 923
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 924
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1482
    const-string v0, "#646#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1483
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1486
    const-string v0, "You have NNN minutes remaining."

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1488
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1490
    const-string v0, "All Done"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :goto_0
    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .locals 5
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 784
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    .line 785
    .local v0, "ch":C
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v1

    .line 787
    .local v1, "success":Z
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 788
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Hangup Error"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2, v3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 790
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 792
    :goto_0
    return-void
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "carrierRestrictionRules"    # Landroid/telephony/CarrierRestrictionRules;
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 2075
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2076
    return-void
.end method

.method public blacklist setAutoProgressConnectingCall(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 1567
    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 896
    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1328
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 1363
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1365
    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1366
    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1352
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1353
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1519
    if-eqz p2, :cond_0

    .line 1520
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1521
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1523
    :cond_0
    return-void
.end method

.method public blacklist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1792
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1794
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1804
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1805
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1720
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1721
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1710
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1711
    return-void
.end method

.method public blacklist setCellInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1886
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    .line 1887
    return-void
.end method

.method public declared-synchronized blacklist setCellInfoListBehavior(Z)V
    .locals 0
    .param p1, "shouldReturn"    # Z

    monitor-enter p0

    .line 1918
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mShouldReturnCellInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    monitor-exit p0

    return-void

    .line 1917
    .end local p0    # "this":Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
    .end local p1    # "shouldReturn":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1940
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1941
    return-void
.end method

.method public blacklist setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->log(Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2201
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2202
    return-void
.end method

.method public blacklist setDataCallResult(ZLandroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "dcResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1134
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1135
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDcSuccess:Z

    .line 1136
    return-void
.end method

.method public blacklist setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1949
    return-void
.end method

.method public blacklist setDataRadioTech(I)V
    .locals 0
    .param p1, "radioTech"    # I

    .line 990
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRadioTech:I

    .line 991
    return-void
.end method

.method public blacklist setDataRegState(I)V
    .locals 0
    .param p1, "dataRegState"    # I

    .line 994
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRegState:I

    .line 995
    return-void
.end method

.method public blacklist setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2114
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2115
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2116
    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 454
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 455
    return-void
.end method

.method public blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 461
    const/4 v0, 0x0

    const-string v1, "MtkSimulatedCommandsBase"

    if-eqz p1, :cond_1

    .line 462
    const-string v2, "SC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    const-string v2, "[SimCmd] setFacilityLock: pin is valid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockEnabled:Z

    .line 467
    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 469
    return-void

    .line 472
    :cond_0
    const-string v2, "[SimCmd] setFacilityLock: pin failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 476
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 478
    return-void

    .line 479
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    if-eqz p1, :cond_3

    .line 480
    const-string v2, "FD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 481
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    const-string v2, "[SimCmd] setFacilityLock: pin2 is valid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabled:Z

    .line 485
    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 487
    return-void

    .line 490
    :cond_2
    const-string v2, "[SimCmd] setFacilityLock: pin2 failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 494
    .restart local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 496
    return-void

    .line 499
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    invoke-direct {p0, p6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 500
    return-void
.end method

.method public blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1814
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1815
    return-void
.end method

.method public blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1820
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1821
    return-void
.end method

.method public blacklist setIMEI(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .line 609
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImei:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public blacklist setIMEISV(Ljava/lang/String;)V
    .locals 0
    .param p1, "imeisv"    # Ljava/lang/String;

    .line 626
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImeiSv:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public blacklist setIccCardStatus(Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 0
    .param p1, "iccCardStatus"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 2180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 2181
    return-void
.end method

.method public blacklist setIccIoResultForApduLogicalChannel(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .locals 0
    .param p1, "iccIoResult"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2184
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2185
    return-void
.end method

.method public blacklist setIccSlotStatus(Lcom/android/internal/telephony/uicc/IccSlotStatus;)V
    .locals 0
    .param p1, "iccSlotStatus"    # Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 203
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 204
    return-void
.end method

.method public blacklist setImsRegistrationState([I)V
    .locals 0
    .param p1, "regState"    # [I

    .line 1952
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    .line 1953
    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1945
    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2244
    return-void
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1204
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1205
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1206
    return-void
.end method

.method public blacklist setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 0
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 219
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public blacklist setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 864
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1385
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1390
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setNextCallFailCause(I)V
    .locals 0
    .param p1, "gsmCause"    # I

    .line 1578
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNextCallFailCause:I

    .line 1579
    return-void
.end method

.method public blacklist setNextDialFailImmediately(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1572
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 1573
    return-void
.end method

.method public blacklist setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2260
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2261
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2262
    return-void
.end method

.method public blacklist setOpenChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .line 2188
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mChannelId:I

    .line 2189
    return-void
.end method

.method public blacklist setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .line 1726
    return-void
.end method

.method public blacklist setPin1RemainingAttempt(I)V
    .locals 0
    .param p1, "pin1attemptsRemaining"    # I

    .line 2192
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    .line 2193
    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1188
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1189
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNetworkType:I

    .line 1190
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1191
    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1735
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1736
    return-void
.end method

.method public blacklist setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1243
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIsRadioPowerFailResponse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "setRadioPower failed!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1245
    return-void

    .line 1248
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1249
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    goto :goto_0

    .line 1251
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 1253
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1254
    return-void
.end method

.method public blacklist setRadioPowerFailResponse(Z)V
    .locals 0
    .param p1, "fail"    # Z

    .line 2265
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIsRadioPowerFailResponse:Z

    .line 2266
    return-void
.end method

.method public blacklist setSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 870
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 871
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(Landroid/telephony/SignalThresholdInfo;ILandroid/os/Message;)V
    .locals 0
    .param p1, "signalThresholdInfo"    # Landroid/telephony/SignalThresholdInfo;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2238
    return-void
.end method

.method public blacklist setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 2248
    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1215
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1216
    return-void
.end method

.method public blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 412
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnNotifyOn:Z

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "MtkSimulatedCommandsBase"

    const-string v1, "Supp Service Notifications already enabled!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnNotifyOn:Z

    .line 417
    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1750
    const-string v0, "MtkSimulatedCommandsBase"

    const-string v1, "Not implemented in MtkSimulatedCommandsBase"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1752
    return-void
.end method

.method public blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 1
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2231
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 2232
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2233
    return-void
.end method

.method public blacklist setVoiceRadioTech(I)V
    .locals 0
    .param p1, "voiceRadioTech"    # I

    .line 952
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    .line 953
    return-void
.end method

.method public blacklist setVoiceRegState(I)V
    .locals 0
    .param p1, "voiceRegState"    # I

    .line 956
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRegState:I

    .line 957
    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 8
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 1150
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 1153
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-nez v0, :cond_0

    .line 1155
    :try_start_0
    new-instance v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1156
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 1157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 1158
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 1159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 1160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "IP"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "rmnet_data7"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "12.34.56.78"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "98.76.54.32"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 1164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "11.22.33.44"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, ""

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/16 v1, 0x5a0

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1172
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDcSuccess:Z

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {p0, p7, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_1

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Setup data call failed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p7, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1178
    :goto_1
    return-void
.end method

.method public blacklist shutdown()V
    .locals 2

    .line 1607
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 1608
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1609
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1612
    :cond_0
    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1060
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1061
    return-void
.end method

.method public blacklist startLceService(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "report_interval_ms"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2043
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->startLceService(IZLandroid/os/Message;)V

    .line 2045
    return-void
.end method

.method public blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 1
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2293
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    .line 2295
    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 1432
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1433
    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1070
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1071
    return-void
.end method

.method public blacklist stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2049
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2050
    return-void
.end method

.method public blacklist stopNattKeepalive(ILandroid/os/Message;)V
    .locals 1
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2299
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->stopNattKeepalive(ILandroid/os/Message;)V

    .line 2300
    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1440
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1441
    return-void
.end method

.method public blacklist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PIN:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 229
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 230
    return-void

    .line 233
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const-string v0, "[SimCmd] supplyIccPin: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    .line 236
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 237
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 239
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 241
    return-void

    .line 244
    :cond_1
    if-eqz p2, :cond_3

    .line 245
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 250
    const-string v0, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 254
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 256
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 258
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 299
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 304
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 305
    return-void

    .line 308
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    const-string v0, "[SimCmd] supplyIccPin2: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    .line 311
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 313
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 314
    return-void

    .line 317
    :cond_1
    if-eqz p2, :cond_3

    .line 318
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 323
    const-string v0, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 327
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 329
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 331
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1850
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1851
    return-void
.end method

.method public blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1830
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1831
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1833
    return-void

    .line 1836
    :cond_0
    const-string v0, "MtkSimulatedCommandsBase"

    const-string v1, "[SimCmd] supplyIccPinForApp: pin failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1839
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 1840
    iget v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    const/4 v1, 0x0

    if-gez v3, :cond_1

    move v3, v1

    :cond_1
    aput v3, v2, v1

    .line 1839
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1841
    return-void
.end method

.method public blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 267
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 268
    return-void

    .line 271
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "12345678"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string v0, "[SimCmd] supplyIccPuk: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 277
    invoke-direct {p0, p3, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 278
    return-void

    .line 281
    :cond_1
    if-eqz p3, :cond_3

    .line 282
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 287
    const-string v0, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 291
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 293
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 295
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 335
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 340
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 341
    return-void

    .line 344
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "87654321"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const-string v0, "[SimCmd] supplyIccPuk2: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    .line 349
    invoke-direct {p0, p3, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 350
    return-void

    .line 353
    :cond_1
    if-eqz p3, :cond_3

    .line 354
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 359
    const-string v0, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 363
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 365
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1855
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1856
    return-void
.end method

.method public blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1845
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1846
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 504
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 505
    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "persoType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .param p2, "controlKey"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2305
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 724
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 726
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 727
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 729
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 731
    :goto_0
    return-void
.end method

.method public blacklist triggerHangupAll()V
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupAll()Z

    .line 1620
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1621
    return-void
.end method

.method public blacklist triggerHangupBackground()V
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1593
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1594
    return-void
.end method

.method public blacklist triggerHangupForeground()V
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1585
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1586
    return-void
.end method

.method public blacklist triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1627
    return-void
.end method

.method public blacklist triggerIncomingStkCcAlpha(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 1454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1457
    :cond_0
    return-void
.end method

.method public blacklist triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1471
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 1472
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1473
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1475
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public blacklist triggerNITZupdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "NITZStr"    # Ljava/lang/String;

    .line 1139
    if-eqz p1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 1141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1140
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public blacklist triggerRestrictedStateChanged(I)V
    .locals 4
    .param p1, "restrictedState"    # I

    .line 2252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    .line 2254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2253
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2256
    :cond_0
    return-void
.end method

.method public blacklist triggerRing(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1543
    return-void
.end method

.method public blacklist triggerSsn(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "code"    # I

    .line 1598
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1599
    .local v0, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1600
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1601
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1602
    return-void
.end method

.method public blacklist unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2276
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2277
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2278
    return-void
.end method

.method public blacklist unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2064
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->unregisterForLceInfo(Landroid/os/Handler;)V

    .line 2065
    return-void
.end method

.method public blacklist unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2287
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V

    .line 2288
    return-void
.end method

.method public blacklist unregisterForPcoData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2215
    return-void
.end method

.method public blacklist writeSmsToRuim(I[BLandroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "response"    # Landroid/os/Message;

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write SMS to RUIM with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1131
    return-void
.end method

.method public blacklist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write SMS to SIM with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1125
    return-void
.end method
