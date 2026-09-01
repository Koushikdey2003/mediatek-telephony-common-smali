.class Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForHoldToRedial"
.end annotation


# instance fields
.field private blacklist mClirMode:I

.field private blacklist mDialString:Ljava/lang/String;

.field private blacklist mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

.field private blacklist mHasKnownUserIntentEmergency:Z

.field private blacklist mIsEmergencyCall:Z

.field private blacklist mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private blacklist mWaitToRedial:Z

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 210
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    .line 204
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    .line 205
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 206
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    .line 208
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 212
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    .line 200
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resumeDialAfterHold()Z

    move-result v0

    return v0
.end method

.method private blacklist resumeDialAfterHold()Z
    .locals 10

    .line 253
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "resumeDialAfterHold begin"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 257
    const-string v1, "resumeDialAfterHold cancel (dial string empty yet)"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    iget v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    const/16 v9, 0x3ea

    .line 261
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 259
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 264
    const-string v1, "resumeDialAfterHold end"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method blacklist isWaitToRedial()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    return v0
.end method

.method public blacklist resetToRedial()V
    .locals 2

    .line 236
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Reset mWaitForHoldToRedialRequest variables"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    .line 240
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    .line 241
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 242
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    .line 243
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    .line 244
    return-void
.end method

.method blacklist setToRedial()V
    .locals 1

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 220
    return-void
.end method

.method public blacklist setToRedial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .locals 1
    .param p1, "dialSting"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clir"    # I
    .param p6, "uusinfo"    # Lcom/android/internal/telephony/UUSInfo;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 226
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    .line 227
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    .line 228
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 229
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    .line 230
    iput p5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    .line 231
    iput-object p6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 232
    return-void
.end method
