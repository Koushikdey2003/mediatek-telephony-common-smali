.class public Lcom/mediatek/internal/telephony/cat/MtkResultException;
.super Lcom/android/internal/telephony/cat/ResultException;
.source "MtkResultException.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/ResultCode;I)V
    .locals 2
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "additionalInfo"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 48
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkResultException;->mExplanation:Ljava/lang/String;

    .line 51
    if-ltz p2, :cond_0

    .line 55
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/MtkResultException;->mAdditionalInfo:I

    .line 56
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Additional info must be greater than zero!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/ResultCode;ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "additionalInfo"    # I
    .param p3, "explanation"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/MtkResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    .line 60
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/MtkResultException;->mExplanation:Ljava/lang/String;

    .line 61
    return-void
.end method
