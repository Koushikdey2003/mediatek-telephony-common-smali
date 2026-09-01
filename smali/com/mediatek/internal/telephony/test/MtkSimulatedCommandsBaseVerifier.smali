.class public Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;
.super Ljava/lang/Object;
.source "MtkSimulatedCommandsBaseVerifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static blacklist sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static blacklist getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;
    .locals 1

    .line 48
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    .line 51
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    return-object v0
.end method


# virtual methods
.method public blacklist acceptCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 754
    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 899
    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 894
    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 889
    return-void
.end method

.method public blacklist cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1017
    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 658
    return-void
.end method

.method public blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 637
    return-void
.end method

.method public blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 647
    return-void
.end method

.method public blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 652
    return-void
.end method

.method public blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 642
    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 734
    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1183
    return-void
.end method

.method public blacklist deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 869
    return-void
.end method

.method public blacklist deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 864
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 683
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p7, "result"    # Landroid/os/Message;

    .line 689
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1203
    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 764
    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 968
    return-void
.end method

.method public blacklist getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 983
    return-void
.end method

.method public blacklist getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1132
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 921
    return-void
.end method

.method public blacklist getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1198
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1162
    return-void
.end method

.method public blacklist getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 668
    return-void
.end method

.method public blacklist getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 678
    return-void
.end method

.method public blacklist getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 804
    return-void
.end method

.method public blacklist getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1127
    return-void
.end method

.method public blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1122
    return-void
.end method

.method public blacklist getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1302
    return-void
.end method

.method public blacklist getIMEI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 704
    return-void
.end method

.method public blacklist getIMEISV(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 709
    return-void
.end method

.method public blacklist getIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 694
    return-void
.end method

.method public blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 699
    return-void
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1208
    return-void
.end method

.method public blacklist getIccSlotsStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1212
    return-void
.end method

.method public blacklist getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 62
    return-void
.end method

.method public blacklist getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 769
    return-void
.end method

.method public blacklist getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 779
    return-void
.end method

.method public blacklist getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 774
    return-void
.end method

.method public blacklist getLteOnCdmaMode()I
    .locals 1

    .line 1220
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 789
    return-void
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 963
    return-void
.end method

.method public blacklist getOperator(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 809
    return-void
.end method

.method public blacklist getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 673
    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1042
    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 744
    return-void
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1333
    return-void
.end method

.method public blacklist getRadioState()I
    .locals 1

    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getRilVersion()I
    .locals 1

    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 794
    return-void
.end method

.method public blacklist getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1052
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1232
    return-void
.end method

.method public blacklist getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 799
    return-void
.end method

.method public blacklist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1107
    return-void
.end method

.method public blacklist hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 714
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 724
    return-void
.end method

.method public blacklist hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 719
    return-void
.end method

.method public blacklist iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1275
    return-void
.end method

.method public blacklist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 905
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
    .param p10, "response"    # Landroid/os/Message;

    .line 911
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1270
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

    .line 1287
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 1281
    return-void
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1072
    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1077
    return-void
.end method

.method public blacklist nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1297
    return-void
.end method

.method public blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1292
    return-void
.end method

.method public blacklist pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1358
    return-void
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1032
    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 916
    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 948
    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 931
    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1147
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 989
    return-void
.end method

.method public blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 995
    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1172
    return-void
.end method

.method public blacklist registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 502
    return-void
.end method

.method public blacklist registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public blacklist registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public blacklist registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 452
    return-void
.end method

.method public blacklist registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1413
    return-void
.end method

.method public blacklist registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 527
    return-void
.end method

.method public blacklist registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 567
    return-void
.end method

.method public blacklist registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 557
    return-void
.end method

.method public blacklist registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1237
    return-void
.end method

.method public blacklist registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public blacklist registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 442
    return-void
.end method

.method public blacklist registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1437
    return-void
.end method

.method public blacklist registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 577
    return-void
.end method

.method public blacklist registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public blacklist registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 327
    return-void
.end method

.method public blacklist registerForIccSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public blacklist registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public blacklist registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public blacklist registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1363
    return-void
.end method

.method public blacklist registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 492
    return-void
.end method

.method public blacklist registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1386
    return-void
.end method

.method public blacklist registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1429
    return-void
.end method

.method public blacklist registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1417
    return-void
.end method

.method public blacklist registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public blacklist registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public blacklist registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public blacklist registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public blacklist registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public blacklist registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1378
    return-void
.end method

.method public blacklist registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1246
    return-void
.end method

.method public blacklist registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1338
    return-void
.end method

.method public blacklist registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public blacklist registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 482
    return-void
.end method

.method public blacklist registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 547
    return-void
.end method

.method public blacklist registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 587
    return-void
.end method

.method public blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 537
    return-void
.end method

.method public blacklist registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public blacklist registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public blacklist registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public blacklist registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 512
    return-void
.end method

.method public blacklist registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public blacklist rejectCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 759
    return-void
.end method

.method public blacklist reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1062
    return-void
.end method

.method public blacklist reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1067
    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1227
    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1323
    return-void
.end method

.method public blacklist resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1022
    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 829
    return-void
.end method

.method public blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1137
    return-void
.end method

.method public blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 848
    return-void
.end method

.method public blacklist sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 844
    return-void
.end method

.method public blacklist sendDeviceState(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1394
    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 814
    return-void
.end method

.method public blacklist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1097
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1102
    return-void
.end method

.method public blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 859
    return-void
.end method

.method public blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 854
    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 834
    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 839
    return-void
.end method

.method public blacklist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1092
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1012
    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 749
    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1027
    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 926
    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 942
    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 936
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 1374
    return-void
.end method

.method public blacklist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1188
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1193
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1152
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1157
    return-void
.end method

.method public blacklist setDataAllowed(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1318
    return-void
.end method

.method public blacklist setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1260
    return-void
.end method

.method public blacklist setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 522
    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1001
    return-void
.end method

.method public blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 1007
    return-void
.end method

.method public blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1112
    return-void
.end method

.method public blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1117
    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1255
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

    .line 1409
    return-void
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1047
    return-void
.end method

.method public blacklist setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 0
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 1216
    return-void
.end method

.method public blacklist setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 784
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 953
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 958
    return-void
.end method

.method public blacklist setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public blacklist setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public blacklist setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 422
    return-void
.end method

.method public blacklist setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public blacklist setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public blacklist setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public blacklist setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public blacklist setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public blacklist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 287
    return-void
.end method

.method public blacklist setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public blacklist setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public blacklist setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public blacklist setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public blacklist setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public blacklist setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public blacklist setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public blacklist setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 432
    return-void
.end method

.method public blacklist setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 367
    return-void
.end method

.method public blacklist setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public blacklist setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public blacklist setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .line 1142
    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1037
    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 739
    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "result"    # Landroid/os/Message;

    .line 1328
    return-void
.end method

.method public blacklist setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 884
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(Landroid/telephony/SignalThresholdInfo;ILandroid/os/Message;)V
    .locals 0
    .param p1, "signalThresholdInfo"    # Landroid/telephony/SignalThresholdInfo;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1403
    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1057
    return-void
.end method

.method public blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 417
    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1167
    return-void
.end method

.method public blacklist setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1313
    return-void
.end method

.method public blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 0
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1398
    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 0
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 1178
    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 819
    return-void
.end method

.method public blacklist startLceService(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1348
    return-void
.end method

.method public blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1446
    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 973
    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 824
    return-void
.end method

.method public blacklist stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1353
    return-void
.end method

.method public blacklist stopNattKeepalive(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1450
    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 978
    return-void
.end method

.method public blacklist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 597
    return-void
.end method

.method public blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 617
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 622
    return-void
.end method

.method public blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 602
    return-void
.end method

.method public blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 607
    return-void
.end method

.method public blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 627
    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 632
    return-void
.end method

.method public blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 612
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 663
    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "persoType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .param p2, "controlKey"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1455
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 729
    return-void
.end method

.method public blacklist testingEmergencyCall()V
    .locals 0

    .line 1265
    return-void
.end method

.method public blacklist unSetOnCallRing(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 352
    return-void
.end method

.method public blacklist unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 412
    return-void
.end method

.method public blacklist unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 427
    return-void
.end method

.method public blacklist unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 402
    return-void
.end method

.method public blacklist unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 392
    return-void
.end method

.method public blacklist unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 382
    return-void
.end method

.method public blacklist unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 322
    return-void
.end method

.method public blacklist unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 292
    return-void
.end method

.method public blacklist unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 252
    return-void
.end method

.method public blacklist unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 262
    return-void
.end method

.method public blacklist unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 242
    return-void
.end method

.method public blacklist unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 362
    return-void
.end method

.method public blacklist unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 312
    return-void
.end method

.method public blacklist unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 272
    return-void
.end method

.method public blacklist unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 282
    return-void
.end method

.method public blacklist unSetOnSs(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 437
    return-void
.end method

.method public blacklist unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 372
    return-void
.end method

.method public blacklist unSetOnUSSD(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 302
    return-void
.end method

.method public blacklist unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1087
    return-void
.end method

.method public blacklist unregisterForAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 112
    return-void
.end method

.method public blacklist unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 162
    return-void
.end method

.method public blacklist unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 457
    return-void
.end method

.method public blacklist unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1425
    return-void
.end method

.method public blacklist unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 532
    return-void
.end method

.method public blacklist unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 572
    return-void
.end method

.method public blacklist unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 562
    return-void
.end method

.method public blacklist unregisterForCellInfoList(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1242
    return-void
.end method

.method public blacklist unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 182
    return-void
.end method

.method public blacklist unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 447
    return-void
.end method

.method public blacklist unregisterForEmergencyNumberList(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1441
    return-void
.end method

.method public blacklist unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 582
    return-void
.end method

.method public blacklist unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 232
    return-void
.end method

.method public blacklist unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 332
    return-void
.end method

.method public blacklist unregisterForIccSlotStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 152
    return-void
.end method

.method public blacklist unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 142
    return-void
.end method

.method public blacklist unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 92
    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 202
    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 192
    return-void
.end method

.method public blacklist unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1368
    return-void
.end method

.method public blacklist unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 497
    return-void
.end method

.method public blacklist unregisterForModemReset(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1390
    return-void
.end method

.method public blacklist unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1433
    return-void
.end method

.method public blacklist unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1421
    return-void
.end method

.method public blacklist unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 172
    return-void
.end method

.method public blacklist unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 122
    return-void
.end method

.method public blacklist unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 477
    return-void
.end method

.method public blacklist unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 132
    return-void
.end method

.method public blacklist unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public blacklist unregisterForPcoData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1382
    return-void
.end method

.method public blacklist unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1250
    return-void
.end method

.method public blacklist unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1343
    return-void
.end method

.method public blacklist unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public blacklist unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 487
    return-void
.end method

.method public blacklist unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 552
    return-void
.end method

.method public blacklist unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 592
    return-void
.end method

.method public blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 542
    return-void
.end method

.method public blacklist unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 467
    return-void
.end method

.method public blacklist unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 212
    return-void
.end method

.method public blacklist unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 222
    return-void
.end method

.method public blacklist unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 517
    return-void
.end method

.method public blacklist unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 507
    return-void
.end method

.method public blacklist unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public blacklist unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 342
    return-void
.end method

.method public blacklist writeSmsToRuim(I[BLandroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "response"    # Landroid/os/Message;

    .line 879
    return-void
.end method

.method public blacklist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 874
    return-void
.end method
