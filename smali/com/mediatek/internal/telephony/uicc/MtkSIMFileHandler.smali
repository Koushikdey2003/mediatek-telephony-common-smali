.class public final Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;
.super Lcom/android/internal/telephony/uicc/SIMFileHandler;
.source "MtkSIMFileHandler.java"


# static fields
.field static final blacklist LOG_TAG_EX:Ljava/lang/String; = "MtkSIMFH"


# instance fields
.field blacklist mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 60
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 61
    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .line 65
    const/16 v0, 0x4f36

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f7b    # 3.9992E-41f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6fb7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6fc6

    if-eq p1, v0, :cond_0

    .line 77
    const-string v0, "MtkSIMFH"

    const-string v1, "SIM aosp default getEFPath."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "3F007F20"

    return-object v0

    .line 67
    :cond_1
    const-string v0, "3F007F10"

    return-object v0

    .line 75
    :cond_2
    const-string v0, "3F007F25"

    return-object v0

    .line 73
    :cond_3
    const-string v0, "7FFF7F665F30"

    return-object v0
.end method

.method public blacklist loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByMode(IILandroid/os/Message;)V

    .line 88
    return-void
.end method

.method public blacklist loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V

    .line 84
    return-void
.end method

.method public blacklist loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 92
    return-void
.end method

.method public blacklist readEFLinearFixed(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 101
    return-void
.end method

.method public blacklist selectEFFile(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->selectEFFile(ILandroid/os/Message;)V

    .line 105
    return-void
.end method

.method public blacklist updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    .line 96
    return-void
.end method
