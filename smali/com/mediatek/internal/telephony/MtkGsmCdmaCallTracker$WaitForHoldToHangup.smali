.class Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForHoldToHangup"
.end annotation


# instance fields
.field private blacklist mCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private blacklist mHoldDone:Z

.field private blacklist mWaitToHangup:Z

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 280
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 277
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resetToHangup()V

    .line 282
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    .line 274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    .line 274
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resumeHangupAfterHold()Z

    move-result v0

    return v0
.end method

.method private blacklist resumeHangupAfterHold()Z
    .locals 4

    .line 320
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "resumeHangupAfterHold begin"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "resumeHangupAfterHold to hangup call"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 326
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected error on hangup ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    const-string v1, "resumeHangupAfterHold end"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 336
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resetToHangup()V

    .line 340
    return v2
.end method


# virtual methods
.method blacklist isHoldDone()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    return v0
.end method

.method blacklist isWaitToHangup()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    return v0
.end method

.method public blacklist resetToHangup()V
    .locals 2

    .line 307
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Reset mWaitForHoldToHangupRequest variables"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 310
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 312
    return-void
.end method

.method blacklist setHoldDone()V
    .locals 1

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 294
    return-void
.end method

.method blacklist setToHangup()V
    .locals 1

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 298
    return-void
.end method

.method public blacklist setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 302
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 303
    return-void
.end method
