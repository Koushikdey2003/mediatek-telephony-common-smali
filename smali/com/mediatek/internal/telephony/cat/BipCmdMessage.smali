.class public Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
.super Ljava/lang/Object;
.source "BipCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/BipCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mApn:Ljava/lang/String;

.field public blacklist mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

.field public blacklist mBufferSize:I

.field public blacklist mChannelData:[B

.field public blacklist mChannelDataLength:I

.field public blacklist mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

.field public blacklist mChannelStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/cat/ChannelStatus;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mCloseBackToTcpListen:Z

.field public blacklist mCloseCid:I

.field blacklist mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field public blacklist mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

.field public blacklist mDestAddress:Ljava/lang/String;

.field public blacklist mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

.field public blacklist mInfoType:I

.field public blacklist mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

.field public blacklist mLogin:Ljava/lang/String;

.field public blacklist mPwd:Ljava/lang/String;

.field public blacklist mReceiveDataCid:I

.field public blacklist mRemainingDataLength:I

.field public blacklist mSendDataCid:I

.field public blacklist mSendMode:I

.field private blacklist mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

.field private blacklist mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public blacklist mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 59
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 60
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 61
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 62
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 64
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 69
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 70
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 74
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 75
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 76
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 77
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    .line 78
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 79
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 81
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mInfoType:I

    .line 82
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDestAddress:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    const-string v0, "[BIP]"

    const-string v1, "cmd type is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;-><init>(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, "length":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    new-array v2, v0, [I

    iput-object v2, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 158
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 162
    .end local v0    # "length":I
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 163
    nop

    .line 167
    :goto_1
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 3
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 59
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 60
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 61
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 62
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 64
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 69
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 70
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 74
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 75
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 76
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 77
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    .line 78
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 79
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 81
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mInfoType:I

    .line 82
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDestAddress:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 90
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    const-string v1, "[BIP]"

    if-nez v0, :cond_0

    .line 92
    const-string v0, "cmd type is null!"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 137
    :pswitch_0
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;-><init>(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 138
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/SetEventListParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    .line 139
    goto/16 :goto_0

    .line 131
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 132
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->channelData:[B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 133
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->mSendMode:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 135
    goto/16 :goto_0

    .line 126
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 129
    goto/16 :goto_0

    .line 121
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 123
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    .line 124
    goto/16 :goto_0

    .line 100
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 103
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 105
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    if-eqz v0, :cond_2

    .line 108
    iget v0, v0, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 112
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "Invalid BearerDesc object"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    goto :goto_0

    .line 97
    :pswitch_5
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 98
    nop

    .line 143
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBearerDesc()Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    return-object v0
.end method

.method public blacklist getCmdQualifier()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method

.method public blacklist getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "[BIP]"

    const-string v1, "cmd type is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 180
    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    nop

    .line 187
    :goto_0
    return-void
.end method
