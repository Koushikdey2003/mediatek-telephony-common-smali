.class public abstract Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.super Landroid/os/Handler;
.source "IccFileFetcherBase.java"


# static fields
.field protected static final blacklist APP_TYPE_3GPP:I = 0x1

.field protected static final blacklist APP_TYPE_3GPP2:I = 0x2

.field protected static final blacklist APP_TYPE_ACTIVE:I = 0x0

.field protected static final blacklist APP_TYPE_IMS:I = 0x3

.field protected static final blacklist EF_TYPE_LINEARFIXED:I = 0x0

.field protected static final blacklist EF_TYPE_TRANSPARENT:I = 0x1

.field protected static final blacklist EVENT_GET_LINEARFIXED_RECORD_SIZE_DONE:I = 0x0

.field protected static final blacklist EVENT_LOAD_LINEARFIXED_ALL_DONE:I = 0x1

.field protected static final blacklist EVENT_LOAD_TRANSPARENT_DONE:I = 0x2

.field protected static final blacklist EVENT_UPDATE_LINEARFIXED_DONE:I = 0x3

.field protected static final blacklist EVENT_UPDATE_TRANSPARENT_DONE:I = 0x4

.field protected static final blacklist INVALID_INDEX:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "IccFileFetcherBase"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field protected blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field protected blacklist mPhoneId:I

.field protected blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method protected constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mData:Ljava/util/HashMap;

    .line 117
    const-string v0, "IccFileFetcherBase Creating!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 118
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    .line 120
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method


# virtual methods
.method protected blacklist exchangeSimInfo()V
    .locals 7

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onGetKeys()Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    .local v0, "mKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    move-result-object v3

    .line 190
    .local v3, "mRq":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    if-nez v3, :cond_0

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exchangeSimInfo mPhoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  get Para failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 193
    goto/16 :goto_2

    .line 195
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exchangeSimInfo key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mEfid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mEfType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAppType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mEfPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    .line 197
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkIccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mRecordNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mRecordNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mPin2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 199
    iget v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    if-nez v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    goto :goto_1

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    iget v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 204
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_5

    .line 205
    iput-object v2, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    .line 206
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 207
    :cond_2
    const-string v4, "exchangeSimInfo path is null, it may get an invalid reponse!"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 209
    :cond_3
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    if-nez v4, :cond_4

    .line 210
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loadSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V

    goto/16 :goto_0

    .line 212
    :cond_4
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->updateSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V

    goto/16 :goto_0

    .line 215
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exchangeSimInfo mFh["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is null, read failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "mRq":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :cond_6
    :goto_2
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 258
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    const-string v3, "  data: "

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 315
    :try_start_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 305
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 306
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_UPDATE_TRANSPARENT_DONE Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 308
    goto/16 :goto_0

    .line 310
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 311
    .local v1, "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_TRANSPARENT_DONE key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    .line 312
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 313
    goto/16 :goto_0

    .line 295
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 296
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_UPDATE_LINEARFIXED_DONE Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 298
    goto/16 :goto_0

    .line 300
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 301
    .restart local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_LINEARFIXED_DONE key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    .line 302
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 303
    goto/16 :goto_0

    .line 282
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 283
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 284
    .restart local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_LOAD_TRANSPARENT_DONE Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 286
    iget-object v3, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 287
    goto/16 :goto_0

    .line 289
    :cond_5
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 290
    .local v4, "data":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_LOAD_TRANSPARENT_DONE key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkIccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 292
    iget-object v3, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 293
    goto/16 :goto_0

    .line 270
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .end local v4    # "data":[B
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 272
    .restart local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_LOAD_LINEARFIXED_ALL_DONE Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 274
    iget-object v3, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 275
    goto :goto_0

    .line 277
    :cond_7
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 278
    .local v3, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LOAD_LINEARFIXED_ALL_DONE key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  datas: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 279
    iget-object v4, v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 280
    goto :goto_0

    .line 260
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .end local v3    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 261
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_LINEARFIXED_RECORD_SIZE_DONE Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 264
    goto :goto_0

    .line 266
    :cond_9
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 267
    .restart local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .local v2, "recordsize":[I
    nop

    .line 320
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .end local v2    # "recordsize":[I
    :goto_0
    goto :goto_1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "exc":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing file record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 321
    .end local v0    # "exc":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method

.method protected blacklist loadSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V
    .locals 4
    .param p1, "req"    # Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 221
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v3, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    .line 223
    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 224
    :cond_0
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    const/4 v3, 0x2

    .line 226
    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSimInfo req.mEfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccFileFetcherBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccFileFetcherBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public abstract blacklist onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
.end method

.method public abstract blacklist onGetKeys()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 149
    if-nez p1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, -0x1

    const-string v2, "phone"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, "phoneId":I
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 157
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "simStatus":Ljava/lang/String;
    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;-><init>(Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;)V

    .line 170
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->start()V

    goto :goto_1

    .line 161
    .end local v2    # "simStatus":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 172
    .end local v1    # "phoneId":I
    :cond_3
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mData:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 176
    const-string v1, "IccFileFetcherBase hashmap is cleared!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 172
    :cond_4
    :goto_1
    nop

    .line 179
    :cond_5
    :goto_2
    return-void
.end method

.method public abstract blacklist onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation
.end method

.method protected blacklist updateSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V
    .locals 8
    .param p1, "req"    # Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimInfo mFh["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null, updateSimInfo failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 235
    return-void

    .line 237
    :cond_0
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    if-nez v0, :cond_1

    .line 238
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v3, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mRecordNum:I

    iget-object v5, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    iget-object v6, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mPin2:Ljava/lang/String;

    const/4 v0, 0x3

    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 238
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 240
    :cond_1
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    const/4 v4, 0x4

    .line 242
    invoke-virtual {p0, v4, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 241
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimInfo req.mEfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void
.end method
