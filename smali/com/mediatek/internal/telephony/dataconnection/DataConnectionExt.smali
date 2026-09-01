.class public Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;
.super Ljava/lang/Object;
.source "DataConnectionExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "DataConnectionExt"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist getDisconnectDoneRetryTimer(Ljava/lang/String;J)J
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "defaultTimer"    # J

    .line 132
    move-wide v0, p2

    .line 133
    .local v0, "timer":J
    const-string v2, "raFailed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-wide/32 v0, 0x15f90

    .line 137
    :cond_0
    return-wide v0
.end method

.method public blacklist getIsPcoAllowedDefault()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPcoActionByApnType(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)I
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "pcoData"    # Landroid/telephony/PcoData;

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handlePcoDataAfterAttached(Landroid/os/AsyncResult;Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
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

    .line 248
    .local p3, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    return-void
.end method

.method public blacklist ignoreDataRoaming(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 181
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreDataRoaming, apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;->log(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ignoreDefaultDataUnselected(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 163
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreDefaultDataUnselected, apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;->log(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 89
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDomesticRoamingEnabled()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFdnEnableSupport()Z
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMeteredApnType(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isRoaming"    # Z

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMeteredApnType, apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;->log(Ljava/lang/String;)V

    .line 225
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMeteredApnTypeByLoad()Z
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOnlySingleDcAllowed()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPermanentCause(I)Z
    .locals 1
    .param p1, "cause"    # I

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 145
    const-string v0, "DataConnectionExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public blacklist onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apnTypes"    # [Ljava/lang/String;
    .param p2, "ifc"    # Ljava/lang/String;

    .line 114
    return-void
.end method

.method public blacklist onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apnTypes"    # [Ljava/lang/String;
    .param p2, "ifc"    # Ljava/lang/String;

    .line 123
    return-void
.end method

.method public blacklist setIsPcoAllowedDefault(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 263
    return-void
.end method

.method public blacklist startDataRoamingStrategy(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 194
    return-void
.end method

.method public blacklist stopDataRoamingStrategy()V
    .locals 0

    .line 201
    return-void
.end method
