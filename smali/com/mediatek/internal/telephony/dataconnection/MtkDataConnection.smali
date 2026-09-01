.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.super Lcom/android/internal/telephony/dataconnection/DataConnection;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field static final blacklist EVENT_ADDRESS_REMOVED:I = 0x40022

.field static final blacklist EVENT_FALLBACK_RETRY_CONNECTION:I = 0x40024

.field static final blacklist EVENT_GET_DATA_CALL_LIST:I = 0x40026

.field static final blacklist EVENT_IPV4_ADDRESS_REMOVED:I = 0x40020

.field static final blacklist EVENT_IPV6_ADDRESS_REMOVED:I = 0x40021

.field static final blacklist EVENT_IPV6_ADDRESS_UPDATED:I = 0x40025

.field public static final blacklist EVENT_SET_LINGERING_TIME:I = 0x82004

.field static final blacklist EVENT_UPDATE_NETWORKAGENT_SSC_MODE3:I = 0x40027

.field static final blacklist EVENT_VOICE_CALL:I = 0x40023

.field private static final blacklist INTENT_RETRY_ALARM_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist INTENT_RETRY_ALARM_WHAT:Ljava/lang/String; = "what"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkDc"

.field private static final blacklist RA_GET_IPV6_VALID_FAIL:I = -0x3e8

.field private static final blacklist RA_INITIAL_FAIL:I = -0x1

.field private static final blacklist RA_REFRESH_FAIL:I = -0x2

.field private static final blacklist VDBG:Z

.field private static blacklist methodQueueOrSendMessage:Ljava/lang/reflect/Method;

.field private static final blacklist sAuTelstraOperator:[Ljava/lang/String;


# instance fields
.field private blacklist mActionRetry:Ljava/lang/String;

.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private blacklist mCause:I

.field private blacklist mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

.field protected blacklist mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

.field private blacklist mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mInterfaceName:Ljava/lang/String;

.field private blacklist mIsInVoiceCall:Z

.field private blacklist mIsOp20:Z

.field private blacklist mIsRemoveMmsCapability:Z

.field private blacklist mIsSetupDataCallByCi:Z

.field private blacklist mIsSupportConcurrent:Z

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final blacklist mNetworkManager:Landroid/os/INetworkManagementService;

.field private blacklist mRetryCount:I

.field private blacklist mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private blacklist mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private blacklist mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private blacklist mValid:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 164
    const-string v0, "MtkDataConnection"

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    .line 165
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.net.NetworkAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 209
    :try_start_1
    const-string v5, "queueOrSendMessage"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 210
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->methodQueueOrSendMessage:Ljava/lang/reflect/Method;

    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    goto :goto_1

    .line 213
    :catch_1
    move-exception v5

    .line 214
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_CONNECT"

    aput-object v1, v0, v3

    .line 242
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_SETUP_DATA_CONNECTION_DONE"

    aput-object v1, v0, v4

    .line 244
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DEACTIVATE_DONE"

    aput-object v1, v0, v2

    .line 245
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "EVENT_DISCONNECT"

    aput-object v2, v0, v1

    .line 246
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "EVENT_RIL_CONNECTED"

    aput-object v2, v0, v1

    .line 247
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "EVENT_DISCONNECT_ALL"

    aput-object v2, v0, v1

    .line 248
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "EVENT_DATA_STATE_CHANGED"

    aput-object v2, v0, v1

    .line 249
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "EVENT_TEAR_DOWN_NOW"

    aput-object v2, v0, v1

    .line 250
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "EVENT_LOST_CONNECTION"

    aput-object v2, v0, v1

    .line 251
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    aput-object v2, v0, v1

    .line 253
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_ON"

    aput-object v2, v0, v1

    .line 254
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_OFF"

    aput-object v2, v0, v1

    .line 255
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "EVENT_BW_REFRESH_RESPONSE"

    aput-object v2, v0, v1

    .line 256
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    aput-object v2, v0, v1

    .line 258
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    aput-object v2, v0, v1

    .line 260
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "EVENT_DATA_CONNECTION_OVERRIDE_CHANGED"

    aput-object v2, v0, v1

    .line 262
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "EVENT_KEEPALIVE_STATUS"

    aput-object v2, v0, v1

    .line 263
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "EVENT_KEEPALIVE_STARTED"

    aput-object v2, v0, v1

    .line 264
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "EVENT_KEEPALIVE_STOPPED"

    aput-object v2, v0, v1

    .line 265
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "EVENT_KEEPALIVE_START_REQUEST"

    aput-object v2, v0, v1

    .line 266
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "EVENT_KEEPALIVE_STOP_REQUEST"

    aput-object v2, v0, v1

    .line 267
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "EVENT_LINK_CAPACITY_CHANGED"

    aput-object v2, v0, v1

    .line 268
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "EVENT_RESET"

    aput-object v2, v0, v1

    .line 269
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "EVENT_REEVALUATE_RESTRICTED_STATE"

    aput-object v2, v0, v1

    .line 271
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "EVENT_REEVALUATE_DATA_CONNECTION_PROPERTIES"

    aput-object v2, v0, v1

    .line 273
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "EVENT_NR_STATE_CHANGED"

    aput-object v2, v0, v1

    .line 274
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1c

    const-string v2, "EVENT_DATA_CONNECTION_METEREDNESS_CHANGED"

    aput-object v2, v0, v1

    .line 276
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v2, "EVENT_NR_FREQUENCY_CHANGED"

    aput-object v2, v0, v1

    .line 277
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "EVENT_CARRIER_CONFIG_LINK_BANDWIDTHS_CHANGED"

    aput-object v2, v0, v1

    .line 279
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "EVENT_CARRIER_PRIVILEGED_UIDS_CHANGED"

    aput-object v2, v0, v1

    .line 282
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "EVENT_IPV4_ADDRESS_REMOVED"

    aput-object v2, v0, v1

    .line 283
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "EVENT_IPV6_ADDRESS_REMOVED"

    aput-object v2, v0, v1

    .line 284
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "EVENT_ADDRESS_REMOVED"

    aput-object v2, v0, v1

    .line 285
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x23

    const-string v2, "EVENT_VOICE_CALL"

    aput-object v2, v0, v1

    .line 286
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x24

    const-string v2, "EVENT_FALLBACK_RETRY_CONNECTION"

    aput-object v2, v0, v1

    .line 287
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x25

    const-string v2, "EVENT_IPV6_ADDRESS_UPDATED"

    aput-object v2, v0, v1

    .line 288
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "EVENT_GET_DATA_CALL_LIST"

    aput-object v2, v0, v1

    .line 289
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "EVENT_UPDATE_NETWORKAGENT_SSC_MODE3"

    aput-object v2, v0, v1

    .line 296
    const-string v0, "50501"

    const-string v1, "50571"

    const-string v2, "50572"

    const-string v3, "50511"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sAuTelstraOperator:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "tagSuffix"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "dataServiceManager"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p6, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p7, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .line 383
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 168
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 170
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    .line 182
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 188
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    .line 189
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSupportConcurrent:Z

    .line 191
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 193
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 221
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSetupDataCallByCi:Z

    .line 224
    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    .line 226
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    .line 303
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 838
    const-string v0, "persist.vendor.operator.optr"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OP20"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    const-string v0, "ril.fwk.test.optr"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const-string v0, "ro.build.type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsOp20:Z

    .line 2072
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 387
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 388
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 389
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_2

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_2

    .line 392
    const-string v1, "mDataConnectionExt init fail"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 394
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getInstance(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    .line 402
    const-string v0, "get INetworkManagementService"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 403
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 404
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 406
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlarmManager:Landroid/app/AlarmManager;

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action_retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V

    .line 410
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    return v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->registerNetworkAlertObserver()V

    return-void
.end method

.method static synthetic blacklist access$10000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->shouldRestrictNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$10102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    return p1
.end method

.method static synthetic blacklist access$10200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isUnmeteredUseOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$10300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    return v0
.end method

.method static synthetic blacklist access$10400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    return v0
.end method

.method static synthetic blacklist access$10500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$10600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$10700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandoverSourceTransport()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$10800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$10900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object v0
.end method

.method static synthetic blacklist access$11000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$11100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$11200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object v0
.end method

.method static synthetic blacklist access$11302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p1
.end method

.method static synthetic blacklist access$11400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$11500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic blacklist access$11600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$11700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$11800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic blacklist access$11900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic blacklist access$12002(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p1
.end method

.method static synthetic blacklist access$12100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object v0
.end method

.method static synthetic blacklist access$12202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    return p1
.end method

.method static synthetic blacklist access$12300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->calculateScore()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$12400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$12576(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    return v0
.end method

.method static synthetic blacklist access$12600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getDisallowedApnTypes()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$12702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p1
.end method

.method static synthetic blacklist access$12800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$12900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$13000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    return v0
.end method

.method static synthetic blacklist access$13100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic blacklist access$13200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$13300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic blacklist access$13400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$13500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$13700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$13800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$13900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic blacklist access$14000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic blacklist access$14100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic blacklist access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    return-object v0
.end method

.method static synthetic blacklist access$14300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$14400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$14500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic blacklist access$14600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic blacklist access$14700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$14800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$14972(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    return v0
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$15000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$15100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$15600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$15900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$16000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IZ)V

    return-void
.end method

.method static synthetic blacklist access$16100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$16200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$16300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$16400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->hasMdAutoSetupImsCapability()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$16500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$16602(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p1
.end method

.method static synthetic blacklist access$16702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p1
.end method

.method static synthetic blacklist access$16800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic blacklist access$16900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$17000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$17176(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    return v0
.end method

.method static synthetic blacklist access$17200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$17300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$17400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic blacklist access$17500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic blacklist access$17600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    return v0
.end method

.method static synthetic blacklist access$17700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$17800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$17900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$18000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$18100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$18200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$18300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J

    return-wide v0
.end method

.method static synthetic blacklist access$18302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # J

    .line 162
    iput-wide p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J

    return-wide p1
.end method

.method static synthetic blacklist access$18400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onAddressRemoved()V

    return-void
.end method

.method static synthetic blacklist access$18500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    return-object v0
.end method

.method static synthetic blacklist access$18502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    return-object p1
.end method

.method static synthetic blacklist access$18600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$18700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$18800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataRegState:I

    return v0
.end method

.method static synthetic blacklist access$18900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$1900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$19000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$19100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$19200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$19302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic blacklist access$19400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$19500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$19600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$19700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    return v0
.end method

.method static synthetic blacklist access$19708(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    return v0
.end method

.method static synthetic blacklist access$19802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic blacklist access$19902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object v0
.end method

.method static synthetic blacklist access$20000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$20100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$20200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$20300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->canSendNetworkCapabilities()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$20400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic blacklist access$20500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$20600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$20700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$20800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$20900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$2100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAc:Lcom/android/internal/telephony/AsyncChannel;

    return-object v0
.end method

.method static synthetic blacklist access$21000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$21100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$21200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ZLandroid/net/LinkAddress;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getEventByAddress(ZLandroid/net/LinkAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$21300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/LinkAddress;

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic blacklist access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAc:Lcom/android/internal/telephony/AsyncChannel;

    return-object v0
.end method

.method static synthetic blacklist access$2302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/AsyncChannel;)Lcom/android/internal/telephony/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/AsyncChannel;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAc:Lcom/android/internal/telephony/AsyncChannel;

    return-object p1
.end method

.method static synthetic blacklist access$2400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$2502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic blacklist access$2602(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p1
.end method

.method static synthetic blacklist access$2702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Landroid/telephony/data/ApnSetting;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p1
.end method

.method static synthetic blacklist access$2802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic blacklist access$2902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object p1
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic blacklist access$3002(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic blacklist access$3102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailCause:I

    return p1
.end method

.method static synthetic blacklist access$3202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUserData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic blacklist access$3302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p1
.end method

.method static synthetic blacklist access$3402(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    return-object p1
.end method

.method static synthetic blacklist access$3500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->unregisterNetworkAlertObserver()V

    return-void
.end method

.method static synthetic blacklist access$3600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$3700()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    return v0
.end method

.method static synthetic blacklist access$3800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$3900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$4000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$4100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    return v0
.end method

.method static synthetic blacklist access$4102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    return p1
.end method

.method static synthetic blacklist access$4200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSupportConcurrent:Z

    return v0
.end method

.method static synthetic blacklist access$4202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSupportConcurrent:Z

    return p1
.end method

.method static synthetic blacklist access$4300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$4400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->setSscMode3LingeringTime(I)V

    return-void
.end method

.method static synthetic blacklist access$4500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendNetworkScore(I)V

    return-void
.end method

.method static synthetic blacklist access$4600(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .line 162
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$4700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$4800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$4900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$5000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic blacklist access$5100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSetupDataCallByCi:Z

    return v0
.end method

.method static synthetic blacklist access$5102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSetupDataCallByCi:Z

    return p1
.end method

.method static synthetic blacklist access$5200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$5300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic blacklist access$5402(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic blacklist access$5500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V

    return-void
.end method

.method static synthetic blacklist access$5600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic blacklist access$5700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$5800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$5900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$6000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # J

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetDelayTimeForAuTelstraOperator(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$6100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$6200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$6300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic blacklist access$6400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Landroid/telephony/data/DataCallResponse;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupFallbackConnection(Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void
.end method

.method static synthetic blacklist access$6502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic blacklist access$6600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic blacklist access$6700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$6800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic blacklist access$6900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$7000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$7100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mId:I

    return v0
.end method

.method static synthetic blacklist access$7200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$7300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$7400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$7500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$7600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$7700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$7800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$7900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$8000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$8100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$8200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic blacklist access$8300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$8400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateNetworkInfo()V

    return-void
.end method

.method static synthetic blacklist access$8500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$8600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object v0
.end method

.method static synthetic blacklist access$8700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$8800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$8900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    return-object v0
.end method

.method static synthetic blacklist access$9000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic blacklist access$9100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I

    return v0
.end method

.method static synthetic blacklist access$9200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateTcpBufferSizes(I)V

    return-void
.end method

.method static synthetic blacklist access$9300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I

    return v0
.end method

.method static synthetic blacklist access$9400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkBandwidthsFromCarrierConfig(I)V

    return-void
.end method

.method static synthetic blacklist access$9500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic blacklist access$9600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$9700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$9800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic blacklist access$9902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    return p1
.end method

.method private blacklist addInternetCapForDunOnlyType(Landroid/telephony/data/ApnSetting;Landroid/net/NetworkCapabilities;)V
    .locals 5
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 844
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsOp20:Z

    if-eqz v0, :cond_3

    .line 845
    nop

    .line 846
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    const/16 v1, 0x8

    or-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 847
    .local v0, "isDunOnly":Z
    :goto_0
    nop

    .line 848
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "pam"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v1, v2

    .line 850
    .local v1, "isDunApn":Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 851
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 858
    :cond_2
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 865
    .end local v0    # "isDunOnly":Z
    .end local v1    # "isDunApn":Z
    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist canSendNetworkCapabilities()Z
    .locals 5

    .line 2432
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2433
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2434
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2435
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2436
    const-string v0, "Not update network capabilities of default PDN for non-preferred data phone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2438
    const/4 v0, 0x0

    return v0

    .line 2440
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    goto :goto_0

    .line 2442
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getEventByAddress(ZLandroid/net/LinkAddress;)I
    .locals 4
    .param p1, "bUpdated"    # Z
    .param p2, "linkAddr"    # Landroid/net/LinkAddress;

    .line 2035
    const/4 v0, -0x1

    .line 2036
    .local v0, "event":I
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 2037
    .local v1, "addr":Ljava/net/InetAddress;
    const-string v2, "unknown address type, linkAddr: "

    if-nez p1, :cond_2

    .line 2038
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    .line 2039
    const v0, 0x40021

    goto :goto_0

    .line 2040
    :cond_0
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 2041
    const v0, 0x40020

    goto :goto_0

    .line 2043
    :cond_1
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_4

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2048
    :cond_2
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    .line 2049
    const v0, 0x40025

    goto :goto_0

    .line 2051
    :cond_3
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_4

    .line 2052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2057
    :cond_4
    :goto_0
    return v0
.end method

.method private blacklist hasMdAutoSetupImsCapability()Z
    .locals 3

    .line 2253
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2254
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 2255
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 2256
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasMdAutoSetupImsCapability()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2257
    const-string v0, "hasMdAutoSetupImsCapability: true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2258
    return v2

    .line 2260
    :cond_0
    return v1
.end method

.method private blacklist isAddCapabilityByDataOption()Z
    .locals 4

    .line 1985
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v0

    .line 1986
    .local v0, "isUserDataEnabled":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v1

    .line 1987
    .local v1, "isDataRoamingEnabled":Z
    const-string v2, "addCapabilityByDataOption"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1989
    if-eqz v0, :cond_1

    .line 1990
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1991
    if-eqz v1, :cond_1

    .line 1992
    return v3

    .line 1995
    :cond_0
    return v3

    .line 1998
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isNwNeedSuspended()Z
    .locals 6

    .line 2010
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnType()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isImsOrEmergencyApn([Ljava/lang/String;)Z

    move-result v0

    .line 2011
    .local v0, "bImsOrEmergencyApn":Z
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2012
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isWifiCallingEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2016
    .local v1, "bWifiCallingEnabled":Z
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v3

    .line 2017
    .local v3, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataSupportConcurrent(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSupportConcurrent:Z

    .line 2019
    sget-boolean v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v4, :cond_1

    .line 2020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNwNeedSuspended: mIsInVoiceCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsSupportConcurrent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSupportConcurrent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", bImsOrEmergencyApn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", bWifiCallingEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2026
    :cond_1
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSupportConcurrent:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method static synthetic blacklist lambda$onSetupConnectionCompleted$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 649
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private blacklist mtkReplaceReason(ILcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 2
    .param p1, "reason"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2361
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 2363
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataSetupSscMode3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2364
    const/16 v0, 0x3e9

    return v0

    .line 2367
    :cond_1
    return p1
.end method

.method private blacklist onAddressRemoved()V
    .locals 8

    .line 2088
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 2089
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2090
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isIpv4Connected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2091
    const-string v0, "onAddressRemoved: IPv6 RA failed and didn\'t connect with IPv4"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddressRemoved: mApnContexts size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2095
    .local v2, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2096
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    .line 2097
    .local v4, "apnType":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_1

    .line 2098
    const-string v0, "onAddressRemoved: send message EVENT_DISCONNECT_ALL"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2099
    new-instance v0, Landroid/util/Pair;

    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    .line 2100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2101
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v6, 0x4200f

    .line 2102
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2104
    .local v5, "msg":Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const-string v7, "raFailed"

    invoke-direct {v6, v3, v7, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;ILandroid/os/Message;)V

    move-object v1, v6

    .line 2107
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    const v6, 0x40006

    .line 2108
    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2107
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 2109
    goto :goto_1

    .line 2111
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "apnType":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    goto :goto_2

    .line 2114
    :cond_3
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "onAddressRemoved: no need to remove"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2116
    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist onSetupFallbackConnection(Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 13
    .param p1, "response"    # Landroid/telephony/data/DataCallResponse;
    .param p2, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1952
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-eq v0, v1, :cond_1

    .line 1953
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupFallbackConnection stale cp.tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1956
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    goto :goto_0

    .line 1958
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onSetupFallbackConnection received successful DataCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1959
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    .line 1961
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    .line 1962
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1961
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 1964
    new-instance v0, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x0

    .line 1966
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v3

    .line 1967
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v4

    .line 1968
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v5

    .line 1969
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v6

    .line 1970
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 1971
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v8

    .line 1972
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v9

    .line 1973
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v10

    .line 1974
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v11

    .line 1975
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/telephony/data/DataCallResponse;-><init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 1976
    .local v0, "tempResponse":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1979
    .local v1, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 1980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetupFallbackConnection: ifname-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1982
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :goto_0
    return-void
.end method

.method private blacklist registerNetworkAlertObserver()V
    .locals 2

    .line 2119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_0

    .line 2120
    const-string v0, "registerNetworkAlertObserver X"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2122
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 2123
    const-string v0, "registerNetworkAlertObserver E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    goto :goto_0

    .line 2124
    :catch_0
    move-exception v0

    .line 2126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "registerNetworkAlertObserver failed E"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist resetDelayTimeForAuTelstraOperator(J)J
    .locals 5
    .param p1, "delay"    # J

    .line 2449
    const/4 v0, 0x0

    .line 2450
    .local v0, "isAuTelstraOperator":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 2451
    .local v1, "operatorNumeric":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "DcActivatingState: resetDelayTimeForAuTelstraOperator"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2452
    :cond_0
    if-eqz v1, :cond_2

    .line 2453
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sAuTelstraOperator:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 2454
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2455
    const/4 v0, 0x1

    .line 2456
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "isAuTelstraOperator"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2453
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2461
    .end local v2    # "i":I
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2462
    const-wide/32 p1, 0xafc80

    .line 2464
    :cond_3
    return-wide p1
.end method

.method private blacklist resetRetryCount()V
    .locals 2

    .line 2210
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    .line 2211
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetRetryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2214
    :cond_0
    return-void
.end method

.method private blacklist sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "address"    # Landroid/net/LinkAddress;

    .line 2061
    if-gez p1, :cond_0

    .line 2062
    const-string v0, "sendMessageForSM: Skip notify!!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2063
    return-void

    .line 2065
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 2066
    .local v0, "addrInfo":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_1

    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageForSM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", addressInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2069
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 2070
    return-void
.end method

.method private blacklist sendNetworkScore(I)V
    .locals 1
    .param p1, "score"    # I

    .line 2350
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v0, :cond_0

    .line 2351
    const-string v0, "Setting network score without a NetworkAgent"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2352
    return-void

    .line 2355
    :cond_0
    if-ltz p1, :cond_1

    .line 2356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkScore(ILcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2358
    :cond_1
    return-void
.end method

.method private blacklist setSscMode3LingeringTime(I)V
    .locals 6
    .param p1, "lifetime"    # I

    .line 2332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v0, :cond_0

    .line 2333
    const-string v0, "Setting ssc mode3 lingering time without a NetworkAgent"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2334
    return-void

    .line 2337
    :cond_0
    if-ltz p1, :cond_2

    .line 2339
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->methodQueueOrSendMessage:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 2340
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->methodQueueOrSendMessage:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x82004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 2341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2340
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :cond_1
    goto :goto_0

    .line 2343
    :catch_0
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSscMode3LingeringTime fail! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2347
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist unregisterNetworkAlertObserver()V
    .locals 2

    .line 2132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_0

    .line 2133
    const-string v0, "unregisterNetworkAlertObserver X"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2135
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 2136
    const-string v0, "unregisterNetworkAlertObserver E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    goto :goto_0

    .line 2137
    :catch_0
    move-exception v0

    .line 2139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "unregisterNetworkAlertObserver failed E"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 2143
    :cond_0
    return-void
.end method

.method private blacklist updateCpaConnectionInfo(Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 7
    .param p1, "res"    # Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 2541
    move-object v0, p1

    .line 2542
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    const/4 v1, 0x0

    .line 2546
    .local v1, "mCpaDct":Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-result-object v1

    .line 2547
    if-nez v1, :cond_0

    .line 2548
    const-string v2, "[CpaDct]can\'t mCpaDct!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2549
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2550
    const-string v2, "[CpaDct]mCpaDct\'s phone id not match!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2553
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NAVI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2554
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 2555
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 2556
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v2

    .line 2557
    .local v2, "lp":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 2558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CpaDct]updateCpaConnectionInfo() new res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 2560
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/net/LinkAddress;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/LinkAddress;

    .line 2561
    .local v3, "la":[Landroid/net/LinkAddress;
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 2562
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    new-array v4, v4, [Ljava/net/InetAddress;

    invoke-interface {v6, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/InetAddress;

    .line 2561
    invoke-virtual {v1, v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConInfo(Ljava/net/InetAddress;[Ljava/net/InetAddress;)V

    .line 2563
    .end local v2    # "lp":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .end local v3    # "la":[Landroid/net/LinkAddress;
    goto :goto_0

    .line 2564
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]not handle, with requestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " CpaDctState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2564
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 2568
    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist addMmsCapability()V
    .locals 2

    .line 2473
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz v0, :cond_0

    .line 2474
    const-string v0, "addMmsCapability"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    .line 2476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2479
    :cond_0
    return-void
.end method

.method protected blacklist checkSetMtu(Landroid/telephony/data/ApnSetting;Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IOplusDataManager;->DEFAULT:Lcom/android/internal/telephony/IOplusDataManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusDataManager;

    .line 343
    .local v0, "dataManager":Lcom/android/internal/telephony/IOplusDataManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/IOplusDataManager;->oemCheckSetMtu(Landroid/telephony/data/ApnSetting;Landroid/net/LinkProperties;Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 346
    .end local v0    # "dataManager":Lcom/android/internal/telephony/IOplusDataManager;
    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 348
    :cond_1
    if-eqz p1, :cond_a

    if-nez p2, :cond_2

    goto/16 :goto_0

    .line 350
    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTU set by call response to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 352
    :cond_3
    return-void

    .line 355
    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 357
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTU set by APN to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 358
    :cond_5
    return-void

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getMtu()I

    move-result v0

    .line 363
    .local v0, "mtuFromResource":I
    if-eqz v0, :cond_8

    .line 364
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 365
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU set by \'self-created\' config resource to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 366
    :cond_7
    return-void

    .line 370
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 372
    .local v1, "mtu":I
    if-eqz v1, :cond_9

    .line 373
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 374
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU set by config resource to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 376
    :cond_9
    return-void

    .line 348
    .end local v0    # "mtuFromResource":I
    .end local v1    # "mtu":I
    :cond_a
    :goto_0
    return-void
.end method

.method protected blacklist clearSettings()V
    .locals 1

    .line 608
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    .line 609
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 612
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 614
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    .line 616
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    .line 617
    return-void
.end method

.method protected blacklist connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I
    .locals 18
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: carrier=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' APN=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 415
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' proxy=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 416
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' port=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 417
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 418
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    const-string v3, "MtkDataConnection.connect"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    const v3, 0x40001

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_2

    .line 422
    new-instance v2, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v2}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 423
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:I

    invoke-virtual {v2, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 425
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    .line 424
    invoke-virtual {v2, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v2, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {v2, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v2

    .line 430
    .local v2, "response":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v0, v3, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 431
    .local v3, "msg":Landroid/os/Message;
    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 432
    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 433
    sget-boolean v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v6, :cond_1

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect: FailBringUpAll="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " send error response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 437
    :cond_1
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v6

    iget v7, v6, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    sub-int/2addr v7, v4

    iput v7, v6, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    .line 438
    return v5

    .line 441
    .end local v2    # "response":Landroid/telephony/data/DataCallResponse;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCreateTime:J

    .line 442
    iput-wide v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailTime:J

    .line 443
    iput v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailCause:I

    .line 445
    invoke-virtual {v0, v3, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 446
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget v6, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mIsPreferredApn:Z

    invoke-static {v3, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;IZ)Landroid/telephony/data/DataProfile;

    move-result-object v3

    .line 454
    .local v3, "dp":Landroid/telephony/data/DataProfile;
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v6

    .line 457
    .local v6, "isModemRoaming":Z
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 458
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v7

    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 457
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v7

    xor-int/2addr v7, v4

    .line 463
    .local v7, "isUnmeteredApnType":Z
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v6, :cond_3

    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 464
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    move v8, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v8, v4

    :goto_1
    move v15, v8

    .line 467
    .local v15, "allowRoaming":Z
    sget-boolean v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v8, :cond_5

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowRoaming="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mPhone.getDataRoamingEnabled()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 469
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isModemRoaming="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mPhone.getServiceState().getDataRoaming()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 472
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isUnmeteredApnType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 468
    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 478
    :cond_5
    const/4 v8, 0x0

    .line 479
    .local v8, "linkProperties":Landroid/net/LinkProperties;
    const/4 v9, 0x1

    .line 480
    .local v9, "reason":I
    iget v10, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    .line 483
    iget-object v10, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandoverSourceTransport()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v10

    .line 484
    .local v10, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    const v12, 0x10006

    if-eqz v10, :cond_b

    iget-object v13, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-nez v13, :cond_6

    goto/16 :goto_3

    .line 490
    :cond_6
    iget-object v13, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v13

    .line 491
    .local v13, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v13, :cond_7

    .line 492
    const-string v4, "connect: Can\'t find data connection for handover."

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 493
    return v12

    .line 498
    :cond_7
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkAgent()Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v14

    iput-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 499
    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v14, :cond_8

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get network agent from the source dc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 501
    return v12

    .line 504
    :cond_8
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 505
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_2

    .line 511
    :cond_9
    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v14, "Handover started. Preserved the agent."

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 512
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Get the handover source network agent: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v13, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 515
    const/4 v9, 0x3

    move-object/from16 v16, v8

    goto :goto_4

    .line 506
    :cond_a
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: Can\'t find link properties of handover data connection. dc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 508
    return v12

    .line 485
    .end local v13    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_b
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: Handover failed. dcTracker="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 487
    return v12

    .line 480
    .end local v10    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_c
    move-object/from16 v16, v8

    .line 518
    .end local v8    # "linkProperties":Landroid/net/LinkProperties;
    .local v16, "linkProperties":Landroid/net/LinkProperties;
    :goto_4
    iget-object v8, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-direct {v0, v9, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mtkReplaceReason(ILcom/android/internal/telephony/dataconnection/ApnContext;)I

    move-result v17

    .line 521
    .end local v9    # "reason":I
    .local v17, "reason":I
    iget-object v8, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v8, :cond_d

    iget-object v8, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_d

    .line 522
    const-string v4, "Apn context is disabled, ignore setup data call"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 523
    const/16 v4, 0x7fd

    return v4

    .line 527
    :cond_d
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataServiceBound()Z

    move-result v8

    if-nez v8, :cond_e

    .line 528
    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSetupDataCallByCi:Z

    .line 529
    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 530
    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v9

    .line 529
    move-object v10, v3

    move v11, v6

    move v12, v15

    move/from16 v13, v17

    move-object/from16 v14, v16

    move v4, v15

    .end local v15    # "allowRoaming":Z
    .local v4, "allowRoaming":Z
    move-object v15, v2

    invoke-interface/range {v8 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    goto :goto_5

    .line 538
    .end local v4    # "allowRoaming":Z
    .restart local v15    # "allowRoaming":Z
    :cond_e
    move v4, v15

    .end local v15    # "allowRoaming":Z
    .restart local v4    # "allowRoaming":Z
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v9, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 539
    invoke-static {v9}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v9

    .line 538
    move-object v10, v3

    move v11, v6

    move v12, v4

    move/from16 v13, v17

    move-object/from16 v14, v16

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 548
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v10

    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    iget v12, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 549
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v13

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v15

    .line 548
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    .line 550
    return v5
.end method

.method public blacklist fakeNetworkAgent(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 35
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2372
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2375
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incAndGetConnectionGeneration()I

    move-result v14

    iget-object v2, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2376
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v16

    const/16 v11, 0x3e9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;IIIZ)V

    .line 2372
    move-object/from16 v9, p1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2380
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 2379
    invoke-virtual {v0, v2, v3, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    iget-object v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v2, "invalid_apn"

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 2384
    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, -0x1

    const-string v11, "44010"

    const-string v12, "Fake APN"

    const-string v13, "fake_apn"

    const-string v19, ""

    const-string v20, ""

    const-string v34, ""

    invoke-static/range {v10 .. v34}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 2412
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->calculateScore()I

    move-result v0

    iput v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    .line 2414
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    move-object v10, v0

    .line 2415
    .local v10, "configBuilder":Landroid/net/NetworkAgentConfig$Builder;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 2416
    const-string v0, "MOBILE"

    invoke-virtual {v10, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 2417
    iget-object v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v11

    .line 2418
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2419
    invoke-virtual {v10, v11}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 2422
    :cond_1
    iget-object v0, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2423
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2422
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    move-result-object v12

    .line 2424
    .local v12, "factory":Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    if-nez v12, :cond_2

    move-object v6, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v0

    move-object v6, v0

    .line 2426
    .local v6, "provider":Landroid/net/NetworkProvider;
    :goto_0
    new-instance v13, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget-object v2, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget v4, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    .line 2427
    invoke-virtual {v10}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v5

    iget v7, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkInfo;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;I)V

    iput-object v13, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 2428
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->clearSettings()V

    .line 2429
    return-void
.end method

.method blacklist getApnType()[Ljava/lang/String;
    .locals 8

    .line 1927
    const/4 v0, 0x0

    .line 1928
    .local v0, "aryApnType":[Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnType: mApnContexts.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1931
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1932
    const/4 v1, 0x0

    return-object v1

    .line 1934
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1935
    const/4 v1, 0x0

    .line 1936
    .local v1, "i":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1937
    .local v3, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1938
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    .line 1939
    .local v5, "apnType":Ljava/lang/String;
    sget-boolean v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    if-eqz v6, :cond_2

    .line 1940
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApnType: apnType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1942
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v1

    .line 1943
    nop

    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnType":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1944
    goto :goto_0

    .line 1946
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 16

    .line 675
    move-object/from16 v0, p0

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 676
    .local v1, "result":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 678
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v3, :cond_8

    .line 679
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 680
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v3

    iget v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    not-int v7, v7

    and-int/2addr v3, v7

    .line 679
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v3

    .line 680
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "types":[Ljava/lang/String;
    array-length v7, v3

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v10, v3, v8

    .line 682
    .local v10, "type":Ljava/lang/String;
    iget-boolean v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    if-nez v11, :cond_0

    iget-boolean v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    if-eqz v11, :cond_0

    .line 684
    invoke-static {v10}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 683
    invoke-static {v11, v12}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 685
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropped the metered "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for the unmetered data call."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 686
    move v12, v2

    goto/16 :goto_4

    .line 688
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0xa

    const/4 v14, 0x4

    const/16 v11, 0x8

    const/16 v4, 0x9

    const/4 v9, 0x7

    const/4 v15, 0x5

    const/4 v2, 0x3

    sparse-switch v12, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v12, "emergency"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v4

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "default"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "xcap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v12, "vsim"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "supl"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v2

    goto/16 :goto_2

    :sswitch_5
    const-string v12, "fota"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v15

    goto/16 :goto_2

    :sswitch_6
    const-string v12, "rcs"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xc

    goto :goto_2

    :sswitch_7
    const-string v12, "mms"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_8
    const-string v12, "mcx"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v13

    goto :goto_2

    :sswitch_9
    const-string v12, "ims"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x6

    goto :goto_2

    :sswitch_a
    const-string v12, "dun"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v14

    goto :goto_2

    :sswitch_b
    const-string v12, "cbs"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v9

    goto :goto_2

    :sswitch_c
    const-string v12, "bip"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xd

    goto :goto_2

    :sswitch_d
    const-string v12, "ia"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v11

    goto :goto_2

    :sswitch_e
    const-string v12, "*"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_2

    :goto_1
    const/4 v12, -0x1

    :goto_2
    const/16 v6, 0x1a

    const/16 v5, 0x1b

    packed-switch v12, :pswitch_data_0

    const/4 v12, 0x0

    goto/16 :goto_4

    .line 774
    :pswitch_0
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 775
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 770
    :pswitch_1
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 771
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 766
    :pswitch_2
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 767
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 761
    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 762
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 757
    :pswitch_4
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 758
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 753
    :pswitch_5
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 754
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 749
    :pswitch_6
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 750
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 745
    :pswitch_7
    invoke-virtual {v1, v15}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 746
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 741
    :pswitch_8
    invoke-virtual {v1, v14}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 742
    const/4 v12, 0x0

    goto :goto_4

    .line 737
    :pswitch_9
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 738
    const/4 v12, 0x0

    goto :goto_4

    .line 733
    :pswitch_a
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 734
    const/4 v12, 0x0

    goto :goto_4

    .line 729
    :pswitch_b
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 730
    const/4 v12, 0x0

    goto :goto_4

    .line 723
    :pswitch_c
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    if-nez v2, :cond_2

    .line 724
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move v12, v2

    goto :goto_4

    .line 723
    :cond_2
    const/4 v12, 0x0

    goto :goto_4

    .line 716
    :pswitch_d
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 717
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v12, 0x0

    goto :goto_4

    .line 716
    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    .line 691
    :pswitch_e
    const/16 v12, 0xc

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 692
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 695
    :cond_4
    iget-boolean v12, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    if-nez v12, :cond_5

    .line 696
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 695
    :cond_5
    const/4 v12, 0x0

    .line 698
    :goto_3
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 699
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 703
    invoke-virtual {v1, v15}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 704
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 705
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 707
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 708
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 709
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 710
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 712
    nop

    .line 681
    .end local v10    # "type":Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v12

    goto/16 :goto_0

    .line 783
    :cond_6
    move v12, v2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->addInternetCapForDunOnlyType(Landroid/telephony/data/ApnSetting;Landroid/net/NetworkCapabilities;)V

    .line 789
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 790
    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    const/4 v4, 0x1

    .line 789
    xor-int/2addr v2, v4

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 792
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->deduceRestrictedCapability()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 793
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_5

    .line 792
    :cond_7
    const/16 v2, 0xd

    goto :goto_5

    .line 678
    .end local v3    # "types":[Ljava/lang/String;
    :cond_8
    move v12, v2

    const/16 v2, 0xd

    .line 797
    :goto_5
    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    if-eqz v3, :cond_9

    .line 798
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 800
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 803
    :cond_9
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDownlinkBandwidth:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 804
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUplinkBandwidth:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 806
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubId:I

    .line 807
    invoke-virtual {v2, v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    .line 806
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 809
    const/16 v2, 0x12

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 810
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    const/4 v4, 0x1

    .line 809
    xor-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 812
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubscriptionOverride:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    .line 813
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 820
    :cond_a
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    const/16 v3, 0x19

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    :goto_6
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredOverride:Z

    if-nez v2, :cond_e

    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubscriptionOverride:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_d

    goto :goto_7

    .line 824
    :cond_d
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_8

    .line 820
    :cond_e
    const/4 v4, 0x1

    .line 822
    :goto_7
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 827
    :goto_8
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 828
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_f

    move v2, v4

    goto :goto_9

    :cond_f
    move v2, v12

    .line 829
    .local v2, "suspended":Z
    :goto_9
    const/16 v3, 0x15

    if-nez v2, :cond_10

    goto :goto_a

    :cond_10
    move v4, v12

    :goto_a
    invoke-virtual {v1, v3, v4}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 831
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAdministratorUids:[I

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 833
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 835
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_e
        0xd18 -> :sswitch_d
        0x17d09 -> :sswitch_c
        0x17ff4 -> :sswitch_b
        0x185fd -> :sswitch_a
        0x197cf -> :sswitch_9
        0x1a5a2 -> :sswitch_8
        0x1a6d3 -> :sswitch_7
        0x1b862 -> :sswitch_6
        0x300cf6 -> :sswitch_5
        0x360bde -> :sswitch_4
        0x3760a1 -> :sswitch_3
        0x380c5a -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
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

.method protected blacklist getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J
    .locals 4
    .param p1, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 1902
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v0

    if-gez v0, :cond_2

    .line 1903
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "No suggested retry delay."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1905
    :cond_0
    const-wide/16 v0, -0x2

    .line 1906
    .local v0, "delay":J
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    if-eqz v2, :cond_1

    .line 1907
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSuggestedRetryDelayByOp(I)J

    move-result-wide v0

    .line 1909
    :cond_1
    return-wide v0

    .line 1913
    .end local v0    # "delay":J
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_4

    .line 1914
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Modem suggested not retrying."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1915
    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1920
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist handlePcscfErrorCause(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V
    .locals 6
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 2220
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2221
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2222
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 2225
    .local v1, "subId":I
    if-nez v0, :cond_0

    .line 2226
    const-string v2, "handlePcscfErrorCause() null configMgr!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2227
    goto :goto_0

    .line 2230
    :cond_0
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2231
    .local v2, "b":Landroid/os/PersistableBundle;
    if-nez v2, :cond_1

    .line 2232
    const-string v3, "handlePcscfErrorCause() null config!"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 2233
    goto :goto_0

    .line 2235
    :cond_1
    const-string v3, "ims_pdn_sync_fail_cause_to_modem_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2238
    .local v3, "syncFailCause":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePcscfErrorCause() syncFailCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2241
    if-eqz v3, :cond_3

    .line 2242
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    .line 2243
    .local v4, "apnType":Ljava/lang/String;
    const-string v5, "ims"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPcscfAddr:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPcscfAddr:[Ljava/lang/String;

    array-length v5, v5

    if-gtz v5, :cond_3

    .line 2245
    :cond_2
    const-string v5, "pcscfFailed"

    iput-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    .line 2246
    const-string v5, "Disconnect with empty P-CSCF address"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2250
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "syncFailCause":Z
    .end local v4    # "apnType":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 2492
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 2493
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2523
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    return-void
.end method

.method protected blacklist mtkGetLinkProperties()Landroid/net/LinkProperties;
    .locals 4

    .line 2296
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0

    .line 2299
    :cond_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 2300
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2301
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 2302
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 2303
    goto :goto_1

    .line 2305
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    :cond_1
    goto :goto_0

    .line 2306
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 2307
    return-object v0
.end method

.method protected blacklist mtkReplaceStates()V
    .locals 2

    .line 2281
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    .line 2282
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    .line 2283
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    .line 2286
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    .line 2287
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 2289
    return-void
.end method

.method protected blacklist mtkSetApnContextReason(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "alreadySent"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2317
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2318
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-ne v2, p1, :cond_0

    .line 2319
    const-string v3, "raFailed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2323
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    goto :goto_0

    .line 2324
    :cond_1
    return-void
.end method

.method public blacklist notifyVoiceCallEvent(ZZ)V
    .locals 1
    .param p1, "bInVoiceCall"    # Z
    .param p2, "bSupportConcurrent"    # Z

    .line 2271
    nop

    .line 2272
    nop

    .line 2271
    const v0, 0x40023

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(III)V

    .line 2273
    return-void
.end method

.method protected blacklist onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;
    .param p3, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupConnectionCompleted: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 626
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-eq v0, v1, :cond_1

    .line 627
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupConnectionCompleted stale cp.tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 630
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    goto/16 :goto_1

    .line 632
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_1
    const v0, 0x10001

    if-eqz p2, :cond_6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto/16 :goto_0

    .line 636
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    if-eqz v1, :cond_4

    .line 637
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 638
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 639
    .local v1, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    move-object v0, v1

    goto :goto_1

    .line 641
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 642
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto :goto_1

    .line 645
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_4
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "onSetupConnectionCompleted received successful DataCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 646
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    .line 648
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 649
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 651
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 654
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupConnectionCompleted: ifname-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 660
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 659
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 661
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateCpaConnectionInfo(Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object v0

    goto :goto_1

    .line 634
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_6
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 635
    .restart local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    move-object v0, v1

    .line 667
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/IOplusServiceStateTracker;->DEFAULT:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IOplusServiceStateTracker;

    .line 668
    .local v1, "interfaceImpl":Lcom/android/internal/telephony/IOplusServiceStateTracker;
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->addDataCallCount()V

    .line 670
    return-object v0
.end method

.method public blacklist removeMmsCapability()V
    .locals 2

    .line 2482
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz v0, :cond_0

    .line 2483
    const-string v0, "removeMmsCapability"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsRemoveMmsCapability:Z

    .line 2485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2488
    :cond_0
    return-void
.end method

.method public blacklist setLostConnectionCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 2469
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    .line 2470
    return-void
.end method

.method public blacklist startRetryAlarm(IIJ)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "tag"    # I
    .param p3, "delay"    # J

    .line 2167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "what"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2169
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2171
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_0

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRetryAlarm: next attempt in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2176
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2178
    .local v1, "retryIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p3

    .line 2178
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2180
    return-void
.end method

.method public blacklist startRetryAlarmExact(IIJ)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "tag"    # I
    .param p3, "delay"    # J

    .line 2190
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2191
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2192
    const-string v1, "what"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2193
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2195
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_0

    .line 2196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRetryAlarmExact: next attempt in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2200
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2202
    .local v1, "retryIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 2203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p3

    .line 2202
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 2204
    return-void
.end method

.method protected blacklist tearDownData(Ljava/lang/Object;)V
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 555
    const/4 v0, 0x1

    .line 556
    .local v0, "discReason":I
    const/4 v1, 0x0

    .line 557
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_6

    instance-of v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    if-eqz v2, :cond_6

    .line 558
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 559
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v1, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 560
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "radioTurnedOff"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    const/4 v0, 0x2

    goto :goto_0

    .line 562
    :cond_0
    iget v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReleaseType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 563
    const/4 v0, 0x3

    goto :goto_0

    .line 565
    :cond_1
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "raFailed"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    iget-wide v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    .line 567
    const/16 v0, 0x7d2

    goto :goto_0

    .line 568
    :cond_2
    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 569
    const/16 v0, 0x7d4

    goto :goto_0

    .line 571
    :cond_3
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "pcscfFailed"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 573
    const/16 v0, 0x7d3

    goto :goto_0

    .line 574
    :cond_4
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "apnChanged"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 575
    const/16 v0, 0x7d5

    .line 584
    :cond_5
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    if-eqz v1, :cond_6

    .line 585
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 586
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 587
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 588
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getTempDataSwitchState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 589
    const/16 v0, 0x7d6

    .line 594
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearDownData. mCid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "str":Ljava/lang/String;
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 596
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 601
    :cond_8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    const v5, 0x40003

    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    const/4 v7, 0x0

    .line 603
    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 601
    invoke-interface {v3, v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 604
    return-void
.end method

.method public blacklist toStringSimple()Ljava/lang/String;
    .locals 3

    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    .line 2528
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRestrictedNetworkOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2527
    return-object v0
.end method

.method public blacklist updateNetworkAgentSscMode3(II)V
    .locals 1
    .param p1, "lifetime"    # I
    .param p2, "score"    # I

    .line 2328
    const v0, 0x40027

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(III)V

    .line 2329
    return-void
.end method

.method protected blacklist updateNetworkInfoSuspendState()V
    .locals 7

    .line 1022
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1025
    .local v0, "oldState":Landroid/net/NetworkInfo$DetailedState;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting suspend state without a NetworkAgent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 1032
    .local v1, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isNwNeedSuspended()Z

    move-result v2

    .line 1033
    .local v2, "bNwNeedSuspended":Z
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_1

    .line 1034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkInfoSuspendState: oldState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", currentDataConnectionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bNwNeedSuspended = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1034
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1039
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1043
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnType()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isImsOrEmergencyApn([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1044
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnType()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->hasVsimApn([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1045
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1046
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 1045
    invoke-virtual {v3, v5, v4, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :cond_2
    if-eqz v2, :cond_3

    .line 1053
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1054
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 1053
    invoke-virtual {v3, v5, v4, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    return-void

    .line 1057
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1058
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 1057
    invoke-virtual {v3, v5, v4, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_4
    :goto_0
    return-void
.end method
