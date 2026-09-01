.class public interface abstract Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
.super Ljava/lang/Object;
.source "IDataConnectionExt.java"


# virtual methods
.method public abstract blacklist getDisconnectDoneRetryTimer(Ljava/lang/String;J)J
.end method

.method public abstract blacklist getIsPcoAllowedDefault()Z
.end method

.method public abstract blacklist getPcoActionByApnType(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)I
.end method

.method public abstract blacklist handlePcoDataAfterAttached(Landroid/os/AsyncResult;Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist ignoreDataRoaming(Ljava/lang/String;)Z
.end method

.method public abstract blacklist ignoreDefaultDataUnselected(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isDataAllowedAsOff(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isDomesticRoamingEnabled()Z
.end method

.method public abstract blacklist isFdnEnableSupport()Z
.end method

.method public abstract blacklist isMeteredApnType(Ljava/lang/String;Z)Z
.end method

.method public abstract blacklist isMeteredApnTypeByLoad()Z
.end method

.method public abstract blacklist isOnlySingleDcAllowed()Z
.end method

.method public abstract blacklist isPermanentCause(I)Z
.end method

.method public abstract blacklist onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist setIsPcoAllowedDefault(Z)V
.end method

.method public abstract blacklist startDataRoamingStrategy(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract blacklist stopDataRoamingStrategy()V
.end method
