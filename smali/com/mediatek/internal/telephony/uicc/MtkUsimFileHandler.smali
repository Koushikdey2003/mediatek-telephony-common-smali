.class public final Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;
.super Lcom/android/internal/telephony/uicc/UsimFileHandler;
.source "MtkUsimFileHandler.java"


# static fields
.field static final blacklist LOG_TAG_EX:Ljava/lang/String; = "MtkUsimFH"


# instance fields
.field blacklist mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 58
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 59
    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .line 63
    const/16 v0, 0x4f08

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4f36

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6f11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f49

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6fb7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6fe5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 87
    const-string v0, "MtkUsimFH"

    const-string v1, "Usim aosp default getEFPath."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "3F007F10"

    return-object v0

    .line 79
    :cond_1
    const-string v0, "3F007FFF"

    return-object v0

    .line 75
    :cond_2
    :pswitch_0
    const-string v0, "3F007F20"

    return-object v0

    .line 83
    :cond_3
    const-string v0, "7FFF7F665F30"

    return-object v0

    .line 85
    :cond_4
    const-string v0, "3F007FFF5FC0"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6f13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 97
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByMode(IILandroid/os/Message;)V

    .line 98
    return-void
.end method

.method public blacklist loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V

    .line 94
    return-void
.end method

.method public blacklist loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 102
    return-void
.end method

.method public blacklist readEFLinearFixed(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 111
    return-void
.end method

.method public blacklist selectEFFile(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->selectEFFile(ILandroid/os/Message;)V

    .line 115
    return-void
.end method

.method public blacklist updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    .line 106
    return-void
.end method
