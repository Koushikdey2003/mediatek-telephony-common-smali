.class public Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;
.super Ljava/lang/Object;
.source "MtkLocalPhoneNumberUtils.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkLocalPhoneNumberUtils"

.field private static blacklist sIsEmergencyNumber:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->sIsEmergencyNumber:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getIsEmergencyNumber()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->sIsEmergencyNumber:Z

    return v0
.end method

.method public static blacklist setIsEmergencyNumber(Z)V
    .locals 0
    .param p0, "isEmergencyNumber"    # Z

    .line 48
    sput-boolean p0, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->sIsEmergencyNumber:Z

    .line 49
    return-void
.end method
