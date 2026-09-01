.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTrackerExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "GsmCdmaCallTkrExt"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method protected static blacklist equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method protected static blacklist equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 85
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist areConnectionsInSameLine([Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "connections"    # [Lcom/android/internal/telephony/Connection;

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist convertAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "formatNumber"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist convertDialString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "intentExtras"    # Landroid/os/Bundle;
    .param p2, "destination"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAddressExtras(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "formatNumber"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAddressChanged(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "converted"    # Z
    .param p2, "dcAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;

    .line 122
    invoke-static {p3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAddressChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "converted"    # Z
    .param p2, "dcNumber"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "convertedNumber"    # Ljava/lang/String;

    .line 104
    invoke-static {p3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 105
    invoke-static {p4, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 59
    const-string v0, "GsmCdmaCallTkrExt"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
