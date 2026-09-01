.class Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
.super Lcom/android/internal/telephony/StateMachine;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;,
        Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final blacklist CMD_PARAMS_READY:I = 0x2

.field private static final blacklist CMD_START:I = 0x1

.field private static blacklist mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

.field private static blacklist mSimCount:I


# instance fields
.field private blacklist mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

.field private blacklist mCaller:Landroid/os/Handler;

.field private blacklist mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

.field private blacklist mSlotId:I

.field private blacklist mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

.field private blacklist mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 156
    const-string v0, "BipRilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 74
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 75
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 157
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)V
    .locals 2
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "slotId"    # I

    .line 143
    const-string v0, "BipRilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 74
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 75
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->addState(Lcom/android/internal/telephony/State;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->addState(Lcom/android/internal/telephony/State;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 149
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 150
    iput p4, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->getInstance(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 153
    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->decodeMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    return-object v0
.end method

.method private blacklist decodeMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z
    .locals 4
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 194
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 195
    iget v0, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mId:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 225
    const/4 v0, 0x0

    .local v0, "decodingStarted":Z
    goto :goto_0

    .line 198
    .end local v0    # "decodingStarted":Z
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "rawData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeMessageParams raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :try_start_0
    iget-object v1, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 207
    nop

    .line 210
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    const/4 v1, 0x1

    .line 222
    .local v1, "decodingStarted":Z
    move v0, v1

    goto :goto_0

    .line 212
    .end local v1    # "decodingStarted":Z
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    const/4 v3, 0x1

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mId:I

    .line 219
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 220
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "decodingStarted":Z
    move v0, v1

    goto :goto_0

    .line 202
    .end local v1    # "decodingStarted":Z
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "decodingStarted":Z
    move v0, v2

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "decodingStarted":Z
    .local v0, "decodingStarted":Z
    :goto_0
    return v0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .locals 5
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slotId"    # I

    const-class v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    .line 88
    new-array v1, v1, [Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    sput-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge v1, v3, :cond_0

    .line 90
    sget-object v3, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aput-object v2, v3, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    sget v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge p3, v1, :cond_2

    .line 95
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v1, v1, p3

    if-nez v1, :cond_1

    .line 96
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    new-instance v2, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)V

    aput-object v2, v1, p3

    .line 103
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v1, v1, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 99
    :cond_2
    :try_start_1
    const-string v1, "BipRilMessageDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invaild slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit v0

    return-object v2

    .line 85
    .end local p0    # "caller":Landroid/os/Handler;
    .end local p1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "slotId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .locals 3
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 4

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 234
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 235
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->dispose()V

    .line 236
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 237
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 238
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 240
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    if-eqz v1, :cond_3

    .line 241
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 242
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->quit()V

    .line 243
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aput-object v0, v1, v2

    .line 246
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge v1, v2, :cond_2

    .line 247
    sget-object v2, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 248
    goto :goto_1

    .line 246
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_2
    :goto_1
    sget v2, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ne v1, v2, :cond_3

    .line 253
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 256
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist getSlotId()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    return v0
.end method

.method public blacklist sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 127
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method public blacklist sendStartDecodingMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .locals 1
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 116
    return-void
.end method
