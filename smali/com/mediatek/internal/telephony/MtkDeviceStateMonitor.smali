.class public Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;
.super Lcom/android/internal/telephony/DeviceStateMonitor;
.source "MtkDeviceStateMonitor.java"


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkDeviceStateMonitor"

.field private static final blacklist MTK_FD_SUPPORT:Z

.field private static final blacklist PROPERTY_FD_ON_CHARGE:Ljava/lang/String; = "persist.vendor.fd.on.charge"

.field private static final blacklist PROPERTY_FD_SCREEN_OFF_ONLY:Ljava/lang/String; = "persist.vendor.fd.screen.off.only"

.field private static final blacklist PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "vendor.ril.fd.mode"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 57
    const-string v0, "ro.vendor.mtk_fd_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->MTK_FD_SUPPORT:Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 61
    const-string v0, "Initialize MtkDeviceStateMonitor"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->logd(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isLowDataExpected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsLowDataExpected:Z

    .line 63
    return-void
.end method

.method private blacklist isFdAllowed()Z
    .locals 3

    .line 80
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->MTK_FD_SUPPORT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "vendor.ril.fd.mode"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "fdMode":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 85
    .end local v0    # "fdMode":I
    :cond_1
    return v1
.end method

.method private static blacklist isFdEnabledOnlyWhenScreenOff()Z
    .locals 3

    .line 93
    const-string v0, "persist.vendor.fd.screen.off.only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static blacklist isFdEnabledWhenCharging()Z
    .locals 3

    .line 89
    const-string v0, "persist.vendor.fd.on.charge"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[phoneId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDeviceStateMonitor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method


# virtual methods
.method protected blacklist isLowDataExpected()Z
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isFdAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLowDataExpected mIsScreenOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCharging = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsTetheringOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->logd(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isFdEnabledOnlyWhenScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsCharging:Z

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isFdEnabledWhenCharging()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 71
    :goto_0
    return v1

    .line 76
    :cond_3
    return v1
.end method
