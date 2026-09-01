.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;
.super Lcom/mediatek/ims/MtkImsCall$Listener;
.source "MtkImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 813
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/mediatek/ims/MtkImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 957
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 959
    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 964
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 966
    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 857
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    .line 858
    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 862
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 863
    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 894
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    .line 895
    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 1032
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onCallInviteParticipantsRequestDelivered"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1036
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_0

    .line 1037
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyConferenceParticipantsInvited(Z)V

    .line 1039
    :cond_0
    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1044
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallInviteParticipantsRequestFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1048
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_0

    .line 1049
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyConferenceParticipantsInvited(Z)V

    .line 1051
    :cond_0
    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 933
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 934
    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .locals 5
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    .line 906
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V

    .line 908
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 909
    .local v0, "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_1

    .line 910
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 911
    .local v1, "hostConnExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    new-instance v2, Lmediatek/telecom/FormattedLog$Builder;

    invoke-direct {v2}, Lmediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 912
    const-string v3, "CC"

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    const-string v3, "ImsPhone"

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    sget-object v3, Lmediatek/telecom/FormattedLog$OpType;->DUMP:Lmediatek/telecom/FormattedLog$OpType;

    .line 913
    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 914
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 915
    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 916
    const-string v3, "state"

    const-string v4, "disconnected"

    invoke-virtual {v2, v3, v4}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 917
    const-string v3, "isConfCall"

    const-string v4, "No"

    invoke-virtual {v2, v3, v4}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 918
    const-string v3, "isConfChildCall"

    invoke-virtual {v2, v3, v4}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 919
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent"

    invoke-virtual {v2, v4, v3}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 920
    invoke-virtual {v2}, Lmediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lmediatek/telecom/FormattedLog;

    move-result-object v2

    .line 922
    .local v2, "formattedLog":Lmediatek/telecom/FormattedLog;
    if-eqz v2, :cond_1

    .line 923
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 924
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v2}, Lmediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 929
    .end local v1    # "hostConnExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    .end local v2    # "formattedLog":Lmediatek/telecom/FormattedLog;
    :cond_1
    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 816
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$801(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    .line 817
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 818
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 819
    const/4 v1, 0x0

    const-string v2, "mediatek.telecom.event.EVENT_CALL_ALERTING_NOTIFICATION"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 822
    :cond_0
    return-void
.end method

.method public blacklist onCallRedialEcc(Lcom/android/ims/ImsCall;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "isNeedUserConfirm"    # Z

    .line 1091
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onCallRedialEcc"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1094
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_0

    .line 1095
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyRedialEcc(Z)V

    .line 1097
    :cond_0
    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 883
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallResumeFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 885
    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 889
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V

    .line 890
    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 867
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V

    .line 870
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onCallResumed : dialPendingMO"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    .line 879
    :cond_0
    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1013
    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1006
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V

    .line 1007
    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .line 951
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V

    .line 952
    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 841
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 843
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 844
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "auto resume holding call"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 848
    :cond_0
    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 826
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1001(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    .line 827
    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 900
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 902
    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 852
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 853
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 831
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V

    .line 832
    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 945
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 946
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V

    .line 947
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    .line 1025
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4801(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    .line 1027
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 998
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttAudioIndicatorChanged"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1002
    return-void
.end method

.method public blacklist onRttEventReceived(Lcom/android/ims/ImsCall;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "event"    # I

    .line 1081
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1082
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 1083
    const/4 v1, 0x0

    const-string v2, "mediatek.telecom.event.EVENT_RTT_EMERGENCY_REDIAL"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1086
    :cond_0
    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "message"    # Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttMessageReceived"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttModifyRequestReceived"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V

    .line 975
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "status"    # I

    .line 980
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttModifyResponseReceived"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V

    .line 984
    return-void
.end method

.method public blacklist onTextCapabilityChanged(Lcom/android/ims/ImsCall;IIII)V
    .locals 8
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I

    .line 1056
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1058
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1059
    .local v3, "rttStatusLocal":Z
    :goto_0
    if-ne p3, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 1060
    .local v4, "rttStatusRemote":Z
    :goto_1
    if-ne p2, v2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    .line 1061
    .local v5, "rttSupportLocal":Z
    :goto_2
    if-ne p5, v2, :cond_3

    move v1, v2

    .line 1063
    .local v1, "rttSupportRemote":Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTextCapabilityChanged localCapability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " remote status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " localTextStatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " RemoteCapability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1067
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1068
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v6, "mediatek.telecom.extra.RTT_STATUS_LOCAL"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1069
    const-string v6, "mediatek.telecom.extra.RTT_STATUS_REMOTE"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1070
    const-string v6, "mediatek.telecom.extra.RTT_SUPPORT_LOCAL"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1071
    const-string v6, "mediatek.telecom.extra.RTT_SUPPORT_REMOTE"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1073
    if-eqz v0, :cond_4

    .line 1074
    const-string v6, "mediatek.telecom.event.RTT_SUPPORT_CHANGED"

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1075
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v7, "onTextCapabilityChanged update to conn"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1077
    :cond_4
    return-void
.end method
