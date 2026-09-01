.class public abstract Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "MtkImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MtkListenerBase"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressDisplayChanged()V
    .locals 0

    .line 432
    return-void
.end method

.method public blacklist onConferenceConnectionsConfigured(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p1, "radioConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    return-void
.end method

.method public blacklist onConferenceParticipantsInvited(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 423
    return-void
.end method

.method public blacklist onRedialEcc(Z)V
    .locals 0
    .param p1, "isNeedUserConfirm"    # Z

    .line 443
    return-void
.end method

.method public blacklist onTextCapabilityChanged(IIII)V
    .locals 0
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteTextCapability"    # I

    .line 438
    return-void
.end method
