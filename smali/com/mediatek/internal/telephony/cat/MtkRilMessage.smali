.class Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
.super Lcom/android/internal/telephony/cat/RilMessage;
.source "MtkRilMessage.java"


# instance fields
.field blacklist mSetUpMenuFromMD:Z


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "rawData"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mSetUpMenuFromMD:Z

    .line 46
    return-void
.end method

.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .locals 1
    .param p1, "other"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 50
    iget-boolean v0, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mSetUpMenuFromMD:Z

    .line 51
    return-void
.end method


# virtual methods
.method blacklist setSetUpMenuFromMD(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mSetUpMenuFromMD:Z

    .line 55
    return-void
.end method
