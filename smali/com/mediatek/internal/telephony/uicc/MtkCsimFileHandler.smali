.class public final Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;
.super Lcom/android/internal/telephony/uicc/CsimFileHandler;
.source "MtkCsimFileHandler.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/uicc/MtkIccConstants;


# static fields
.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkCsimFH"


# instance fields
.field blacklist mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 57
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 59
    return-void
.end method


# virtual methods
.method protected blacklist getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonIccEFPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->logd(Ljava/lang/String;)V

    .line 75
    const/16 v0, 0x6fe5

    if-eq p1, v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist getEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetEFPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->logd(Ljava/lang/String;)V

    .line 64
    const/16 v0, 0x6f75

    if-eq p1, v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "3F007FFF"

    return-object v0
.end method

.method public blacklist loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByMode(IILandroid/os/Message;)V

    .line 90
    return-void
.end method

.method public blacklist loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V

    .line 86
    return-void
.end method

.method public blacklist loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 94
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 114
    const-string v0, "MtkCsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 119
    const-string v0, "MtkCsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public blacklist readEFLinearFixed(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 104
    return-void
.end method

.method public blacklist selectEFFile(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->selectEFFile(ILandroid/os/Message;)V

    .line 109
    return-void
.end method

.method public blacklist updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 97
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    .line 98
    return-void
.end method
