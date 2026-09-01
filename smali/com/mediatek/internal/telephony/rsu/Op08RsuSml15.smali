.class public Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
.super Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
.source "Op08RsuSml15.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_NEED_REBOOT:I = 0x0

.field private static final blacklist OPERATOR_TMO:I = 0x3

.field private static final blacklist RSU_MESSAGE_UNSOL_RSU_EVENT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "Op08RsuSml15"

.field private static final blacklist USELESS_INT_VALUE:I = 0x0

.field private static final blacklist USELESS_STRING_VALUE:Ljava/lang/String; = ""


# instance fields
.field private blacklist mCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mUrcHandler:Landroid/os/Handler;

.field private blacklist mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mWorker:Landroid/os/HandlerThread;

    .line 85
    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mUrcHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize Op08RsuSml15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logi(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mContext:Landroid/content/Context;

    .line 97
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 98
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RsuWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mWorker:Landroid/os/HandlerThread;

    .line 99
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;-><init>(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mUrcHandler:Landroid/os/Handler;

    .line 133
    iget-object v2, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRsuSimLockChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->handleUnlockExpires(Z)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist bytes2Hexs([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .line 299
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist constructRsuRequestInfoRilRequest(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    .locals 3
    .param p1, "opId"    # I
    .param p2, "requestId"    # I
    .param p3, "requestType"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "reserveString1"    # Ljava/lang/String;

    .line 244
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;-><init>()V

    .line 245
    .local v0, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    iput p1, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->opId:I

    .line 246
    iput p2, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->requestId:I

    .line 247
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->requestType:I

    .line 248
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 249
    iput-object v2, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->data:Ljava/lang/String;

    goto :goto_0

    .line 251
    :cond_0
    iput-object p4, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->data:Ljava/lang/String;

    .line 253
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iput-object v2, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->reserveString1:Ljava/lang/String;

    goto :goto_1

    .line 256
    :cond_1
    iput-object p5, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->reserveString1:Ljava/lang/String;

    .line 258
    :goto_1
    return-object v0
.end method

.method private blacklist handleUnlockExpires(Z)V
    .locals 6
    .param p1, "needReboot"    # Z

    .line 274
    const/4 v0, 0x0

    .line 277
    .local v0, "listener":Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;
    const-string v1, "T-Mobile Temporary Device Unlock has Expired!"

    if-nez p1, :cond_0

    .line 278
    new-instance v2, Ljava/lang/String;

    const-string v3, "Unlock Expired!"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .local v1, "message":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;-><init>(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;)V

    move-object v0, v2

    .line 282
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v2    # "title":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v3, "You will need to reboot the device right now."

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v1    # "message":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 287
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 288
    const-string v4, "OK"

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 290
    .local v3, "alertDialog":Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 291
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 293
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 295
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Op08RsuSml15"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Op08RsuSml15"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Op08RsuSml15"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method


# virtual methods
.method public blacklist sleCreateUnlockRequest([BLandroid/os/Message;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleCreateUnlockRequest data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logd(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 169
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v5

    .line 169
    const-string v6, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->constructRsuRequestInfoRilRequest(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;Landroid/os/Message;)V

    .line 176
    :cond_0
    return-void
.end method

.method public blacklist sleGetAdapterConfig([BLandroid/os/Message;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleGetAdapterConfig data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logd(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 233
    const/4 v2, 0x3

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 236
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v5

    .line 233
    const-string v6, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->constructRsuRequestInfoRilRequest(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;Landroid/os/Message;)V

    .line 240
    :cond_0
    return-void
.end method

.method public blacklist sleGetRegisterRequest([BLandroid/os/Message;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleGetRegisterRequest data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logd(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 148
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v5

    .line 148
    const-string v6, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->constructRsuRequestInfoRilRequest(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;Landroid/os/Message;)V

    .line 155
    :cond_0
    return-void
.end method

.method public blacklist sleGetSimlockStatus([BLandroid/os/Message;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleGetSimlockStatus data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logd(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 212
    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v6, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->constructRsuRequestInfoRilRequest(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;Landroid/os/Message;)V

    .line 219
    :cond_0
    return-void
.end method

.method public blacklist sleProcessMessage([B[BLandroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "imei"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleProcessMessage msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->logd(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 192
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 195
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->bytes2Hexs([B)Ljava/lang/String;

    move-result-object v6

    .line 192
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->constructRsuRequestInfoRilRequest(IIILjava/lang/String;Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;Landroid/os/Message;)V

    .line 199
    :cond_0
    return-void
.end method
