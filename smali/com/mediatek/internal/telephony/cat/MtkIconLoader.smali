.class public Lcom/mediatek/internal/telephony/cat/MtkIconLoader;
.super Lcom/android/internal/telephony/cat/IconLoader;
.source "MtkIconLoader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtkIconLoader"


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "MtkIconLoader"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 112
    nop

    .line 113
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->handleMessage(Landroid/os/Message;)V

    .line 114
    return-void

    .line 88
    :cond_0
    :try_start_1
    const-string v0, "load icon done"

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 90
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 91
    .local v1, "rawData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon raw data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load icon CODING_SCHEME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v4, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 94
    array-length v2, v1

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 95
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mRecordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->postIcon()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_2

    .line 98
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mIconData:[B

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->readClut()V

    goto :goto_0

    .line 101
    :cond_2
    const-string v3, "else  /postIcon "

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->postIcon()V

    .line 104
    :goto_0
    return-void

    .line 72
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "rawData":[B
    :cond_3
    const-string v0, "load EFimg done"

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 74
    const-string v0, "msg.obj is null."

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.obj is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 79
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 80
    .restart local v1    # "rawData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EFimg raw data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->handleImageDescriptor([B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->readIconData()V

    .line 86
    return-void

    .line 84
    :cond_5
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to parse image descriptor"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkIconLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "rawData":[B
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkIconLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Icon load failed"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->postIcon()V

    .line 111
    return-void
.end method
