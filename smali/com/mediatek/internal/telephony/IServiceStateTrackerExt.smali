.class public interface abstract Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
.super Ljava/lang/Object;
.source "IServiceStateTrackerExt.java"


# virtual methods
.method public abstract blacklist allowSpnDisplayed()Z
.end method

.method public abstract blacklist getMtkLteRsrpThreshold()[I
.end method

.method public abstract blacklist getMtkLteRssnrThreshold()[I
.end method

.method public abstract blacklist getMtkRsrpOnly()Z
.end method

.method public abstract blacklist isBroadcastEmmrrsPsResume(I)Z
.end method

.method public abstract blacklist isImeiLocked()Z
.end method

.method public abstract blacklist isNeedDisableIVSR()Z
.end method

.method public abstract blacklist isRoamingForSpecialSIM(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist isSupportRatBalancing()Z
.end method

.method public abstract blacklist needAutoSwitchRatMode(ILjava/lang/String;)I
.end method

.method public abstract blacklist needBlankDisplay(I)Z
.end method

.method public abstract blacklist needBrodcastAcmt(II)Z
.end method

.method public abstract blacklist needEMMRRS()Z
.end method

.method public abstract blacklist needIgnoreFemtocellUpdate(II)Z
.end method

.method public abstract blacklist needIgnoredState(III)Z
.end method

.method public abstract blacklist needRejectCauseNotification(I)Z
.end method

.method public abstract blacklist needSpnRuleShowPlmnOnly()Z
.end method

.method public abstract blacklist needToShowCsgId()Z
.end method

.method public abstract blacklist onUpdateSpnDisplay(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;I)Ljava/lang/String;
.end method

.method public abstract blacklist onUpdateSpnDisplayForIms(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;IILjava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract blacklist operatorDefinedInternationalRoaming(Ljava/lang/String;)Z
.end method

.method public abstract blacklist showEccForIms()Z
.end method
