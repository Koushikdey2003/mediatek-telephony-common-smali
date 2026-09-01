.class public Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;
.super Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.source "MtkGsmSMSDispatcher.java"


# static fields
.field private static final blacklist ENG:Z

.field protected static final blacklist EVENT_ADD_DELIVER_PENDING_LIST:I = 0x6b

.field protected static final blacklist EVENT_COPY_TEXT_MESSAGE_DONE:I = 0x6a

.field protected static blacklist MSG_REF_NUM:Ljava/lang/String; = null

.field protected static blacklist PDU_SIZE:Ljava/lang/String; = null

.field private static final blacklist TAG:Ljava/lang/String; = "MtkGsmSMSDispatcher"


# instance fields
.field private blacklist mEncodingType:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mLock:Ljava/lang/Object;

.field private blacklist mStorageAvailable:Z

.field private blacklist mSuccess:Z

.field protected blacklist messageCountNeedCopy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 122
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->ENG:Z

    .line 141
    const-string v0, "pdu_size"

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    .line 142
    const-string v0, "msg_ref_num"

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->MSG_REF_NUM:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;
    .param p3, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mStorageAvailable:Z

    .line 128
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher$1;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 153
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 154
    .local v0, "phoneId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xf

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    const-string v1, "MtkGsmSMSDispatcher"

    const-string v2, "MtkGsmSMSDispatcher created"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method private blacklist getUiccControllerPhoneId(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 278
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 280
    .local v0, "phoneId":Ljava/lang/Integer;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 281
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 284
    :cond_0
    return-object v0
.end method

.method private blacklist isValidSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 520
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "encodedAddress":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 522
    :goto_1
    return v1
.end method


# virtual methods
.method public blacklist addToGsmDeliverPendingList(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 823
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v1, "addToGsmDeliverPendingList sendMessage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 827
    :cond_0
    return-void
.end method

.method public blacklist copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 25
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 371
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "GsmSMSDispatcher: copy text message to icc card"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText invalid sc address"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    move-object v12, v0

    .end local p1    # "scAddress":Ljava/lang/String;
    .local v0, "scAddress":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0    # "scAddress":Ljava/lang/String;
    .restart local p1    # "scAddress":Ljava/lang/String;
    :cond_0
    move-object/from16 v12, p1

    .line 378
    .end local p1    # "scAddress":Ljava/lang/String;
    .local v12, "scAddress":Ljava/lang/String;
    :goto_0
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    .line 380
    const/4 v0, 0x1

    .line 382
    .local v0, "isDeliverPdu":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    .line 386
    .local v14, "msgCount":I
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText storage available"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eq v3, v13, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 395
    :cond_1
    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 399
    :cond_2
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v13

    .line 396
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 397
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText to encode submit pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v0

    goto :goto_3

    .line 393
    :cond_4
    :goto_2
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText to encode deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x1

    move v15, v0

    .line 404
    .end local v0    # "isDeliverPdu":Z
    .local v15, "isDeliverPdu":Z
    :goto_3
    if-nez v15, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 405
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText invalid dest address"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v0, 0x8

    return v0

    .line 409
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[copyText msgCount "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MtkGsmSMSDispatcher"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-le v14, v13, :cond_6

    .line 411
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText multi-part message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 412
    :cond_6
    if-ne v14, v13, :cond_14

    .line 413
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText single-part message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 420
    .local v11, "refNumber":I
    const/4 v0, 0x0

    .line 421
    .local v0, "encoding":I
    new-array v10, v14, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 422
    .local v10, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v4, 0x0

    move v9, v0

    .end local v0    # "encoding":I
    .local v4, "i":I
    .local v9, "encoding":I
    :goto_5
    const/4 v0, 0x0

    if-ge v4, v14, :cond_9

    .line 423
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    aput-object v0, v10, v4

    .line 424
    aget-object v0, v10, v4

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v0, :cond_8

    if-eqz v9, :cond_7

    if-ne v9, v13, :cond_8

    .line 427
    :cond_7
    aget-object v0, v10, v4

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move v9, v0

    .line 422
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 431
    .end local v4    # "i":I
    :cond_9
    const/4 v4, 0x0

    move v8, v4

    .local v8, "i":I
    :goto_6
    if-ge v8, v14, :cond_12

    .line 432
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_a

    .line 433
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText Exception happened when copy message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v13

    .line 436
    :cond_a
    const/4 v4, -0x1

    .line 437
    .local v4, "singleShiftId":I
    const/4 v5, -0x1

    .line 438
    .local v5, "lockingShiftId":I
    aget-object v6, v10, v8

    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 439
    .local v7, "language":I
    move v6, v9

    .line 441
    .local v6, "encoding_method":I
    if-ne v9, v13, :cond_d

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Detail: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " ted"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v10, v8

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MtkGsmSMSDispatcher"

    invoke-static {v13, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v0, :cond_b

    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v0, :cond_b

    .line 444
    move v4, v7

    .line 445
    move v5, v7

    .line 446
    const/16 v6, 0xd

    move v13, v4

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_7

    .line 447
    :cond_b
    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v0, :cond_c

    .line 448
    move v5, v7

    .line 449
    const/16 v6, 0xc

    move v13, v4

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_7

    .line 450
    :cond_c
    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v0, :cond_d

    .line 451
    move v4, v7

    .line 452
    const/16 v6, 0xb

    move v13, v4

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_7

    .line 456
    :cond_d
    move v13, v4

    move/from16 v16, v5

    move/from16 v17, v6

    .end local v4    # "singleShiftId":I
    .end local v5    # "lockingShiftId":I
    .end local v6    # "encoding_method":I
    .local v13, "singleShiftId":I
    .local v16, "lockingShiftId":I
    .local v17, "encoding_method":I
    :goto_7
    const/4 v0, 0x0

    .line 457
    .local v0, "smsHeader":[B
    const/4 v4, 0x1

    if-le v14, v4, :cond_e

    .line 458
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText get pdu header for multi-part message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v4, -0x1

    add-int/lit8 v6, v8, 0x1

    move v5, v11

    move/from16 v18, v7

    .end local v7    # "language":I
    .local v18, "language":I
    move v7, v14

    move/from16 v19, v8

    .end local v8    # "i":I
    .local v19, "i":I
    move v8, v13

    move/from16 v20, v9

    .end local v9    # "encoding":I
    .local v20, "encoding":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_8

    .line 457
    .end local v18    # "language":I
    .end local v19    # "i":I
    .end local v20    # "encoding":I
    .restart local v7    # "language":I
    .restart local v8    # "i":I
    .restart local v9    # "encoding":I
    :cond_e
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    .end local v7    # "language":I
    .end local v8    # "i":I
    .end local v9    # "encoding":I
    .restart local v18    # "language":I
    .restart local v19    # "i":I
    .restart local v20    # "encoding":I
    move-object/from16 v21, v0

    .line 464
    .end local v0    # "smsHeader":[B
    .local v21, "smsHeader":[B
    :goto_8
    const/16 v0, 0x6a

    if-eqz v15, :cond_10

    .line 465
    nop

    .line 466
    move/from16 v8, v19

    .end local v19    # "i":I
    .restart local v8    # "i":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 465
    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v7, v21

    move/from16 v19, v13

    move v13, v8

    .end local v8    # "i":I
    .local v13, "i":I
    .local v19, "singleShiftId":I
    move-wide/from16 v8, p5

    move-object/from16 v22, v10

    .end local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v22, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v10, v20

    move/from16 v23, v11

    .end local v11    # "refNumber":I
    .local v23, "refNumber":I
    move/from16 v11, v18

    invoke-static/range {v4 .. v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    move-result-object v4

    .line 468
    .local v4, "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    if-eqz v4, :cond_f

    .line 469
    const-string v5, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText write deliver pdu into SIM"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v4, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 471
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 470
    invoke-interface {v5, v3, v6, v7, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 474
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 476
    :try_start_0
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText wait until the message be wrote in SIM"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    nop

    .line 482
    :try_start_1
    monitor-exit v5

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "MtkGsmSMSDispatcher"

    const-string v7, "Fail to copy text message into SIM"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    monitor-exit v5

    const/4 v5, 0x1

    return v5

    .line 482
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 484
    .end local v4    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    :cond_f
    :goto_a
    goto :goto_c

    .line 485
    .end local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "refNumber":I
    .restart local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v11    # "refNumber":I
    .local v13, "singleShiftId":I
    .local v19, "i":I
    :cond_10
    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v19

    move/from16 v19, v13

    move/from16 v13, v24

    .line 486
    .end local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "refNumber":I
    .local v13, "i":I
    .local v19, "singleShiftId":I
    .restart local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v23    # "refNumber":I
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 485
    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v8, v21

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-static/range {v4 .. v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 489
    .local v4, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v4, :cond_11

    .line 490
    const-string v5, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText write submit pdu into SIM"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 492
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 493
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 491
    invoke-interface {v5, v3, v6, v7, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 495
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 497
    :try_start_2
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText wait until the message be wrote in SIM"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    nop

    .line 503
    :try_start_3
    monitor-exit v5

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 499
    :catch_1
    move-exception v0

    .line 500
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v6, "MtkGsmSMSDispatcher"

    const-string v7, "fail to copy text message into SIM"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    monitor-exit v5

    const/4 v5, 0x1

    return v5

    .line 503
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_b
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 507
    .end local v4    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_11
    :goto_c
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText thread is waked up"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v16    # "lockingShiftId":I
    .end local v17    # "encoding_method":I
    .end local v18    # "language":I
    .end local v19    # "singleShiftId":I
    .end local v21    # "smsHeader":[B
    add-int/lit8 v8, v13, 0x1

    move/from16 v9, v20

    move-object/from16 v10, v22

    move/from16 v11, v23

    const/4 v0, 0x0

    const/4 v13, 0x1

    .end local v13    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_6

    .end local v20    # "encoding":I
    .end local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "refNumber":I
    .restart local v9    # "encoding":I
    .restart local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v11    # "refNumber":I
    :cond_12
    move v13, v8

    move/from16 v20, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    .line 510
    .end local v8    # "i":I
    .end local v9    # "encoding":I
    .end local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "refNumber":I
    .restart local v20    # "encoding":I
    .restart local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v23    # "refNumber":I
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_13

    .line 511
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText all messages have been copied into SIM"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_13
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText copy failed"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v4, 0x1

    return v4

    .line 415
    .end local v20    # "encoding":I
    .end local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "refNumber":I
    :cond_14
    move v4, v13

    const-string v0, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText invalid message count"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v4
.end method

.method public blacklist dispose()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispose()V

    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 163
    return-void
.end method

.method public blacklist getFormat()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected blacklist getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "encoding"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "lastPart"    # Z
    .param p10, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p11, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p12, "messageUri"    # Landroid/net/Uri;
    .param p13, "fullMessageText"    # Ljava/lang/String;
    .param p14, "priority"    # I
    .param p15, "expectMore"    # Z
    .param p16, "validityPeriod"    # I
    .param p17, "messageId"    # J

    .line 244
    move-object/from16 v15, p5

    sget-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->ENG:Z

    const-string v1, "MtkGsmSMSDispatcher"

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "getNewSubmitPduTracker w/ validity"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p8, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v2

    .line 248
    :goto_0
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    iget v9, v15, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v10, v15, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 247
    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v8, p6

    move/from16 v11, p16

    invoke-static/range {v3 .. v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 251
    .local v14, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v14, :cond_4

    .line 252
    move-object/from16 v11, p0

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    invoke-virtual {v11, v10, v9, v8, v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .line 254
    .local v19, "map":Ljava/util/HashMap;
    nop

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_3

    if-eqz p15, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v17, v2

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v17, v0

    :goto_2
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x0

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    move/from16 v10, v17

    move-object/from16 v11, p13

    move-object/from16 v20, v14

    .end local v14    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .local v20, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v14, p14

    move/from16 v15, p16

    move-wide/from16 v17, p17

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 259
    .end local v19    # "map":Ljava/util/HashMap;
    .end local v20    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v14    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    const-string v0, "GsmSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getPackageNameViaProcessId(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p8, "messageUri"    # Landroid/net/Uri;
    .param p9, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p10, "expectMore"    # Z
    .param p11, "fullMessageText"    # Ljava/lang/String;
    .param p12, "isText"    # Z
    .param p13, "persistMessage"    # Z
    .param p14, "priority"    # I
    .param p15, "validityPeriod"    # I
    .param p16, "isForVvm"    # Z
    .param p17, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZIIZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .line 814
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 818
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 819
    return-object v0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p8, "messageUri"    # Landroid/net/Uri;
    .param p9, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p10, "isExpectMore"    # Z
    .param p11, "fullMessageText"    # Ljava/lang/String;
    .param p12, "isText"    # Z
    .param p13, "persistMessage"    # Z
    .param p14, "isForVvm"    # Z
    .param p15, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v16, p14

    move-wide/from16 v17, p15

    .line 799
    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-super/range {v0 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 803
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 804
    return-object v0
.end method

.method public blacklist handleIccFull()V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    .line 693
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 185
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 218
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 220
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v1, "MtkGsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADD_DELIVER_PENDING_LIST mMessageRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    goto/16 :goto_2

    .line 200
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 201
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    .line 204
    if-ne v2, v4, :cond_3

    .line 205
    const-string v2, "MtkGsmSMSDispatcher"

    const-string v3, "[copyText success to copy one"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    goto :goto_1

    .line 208
    :cond_3
    const-string v2, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText fail to copy one"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    .line 212
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    .line 214
    goto :goto_2

    .line 213
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_2
    throw v2

    .line 187
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getUiccControllerPhoneId(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    .local v0, "phoneId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 189
    const-string v1, "MtkGsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong phone id event coming, PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto :goto_2

    .line 192
    :cond_5
    const-string v1, "MtkGsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ICC_CHANGED, PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " match exactly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->onUpdateIccAvailability()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    nop

    .line 231
    .end local v0    # "phoneId":Ljava/lang/Integer;
    :goto_2
    goto :goto_3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public blacklist handleQueryCbActivation(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 702
    const/4 v0, 0x0

    .line 704
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "MtkGsmSMSDispatcher"

    if-nez v1, :cond_2

    .line 705
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 708
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 709
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v3

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 712
    .local v3, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cbConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 715
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 716
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 717
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 718
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 720
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v5

    goto :goto_0

    .line 722
    :cond_1
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v4

    .line 727
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    .end local v3    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCbActivation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 729
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 730
    return-void
.end method

.method public blacklist isSmsReady()Z
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    .line 749
    .local v0, "pSmsDispatcherctrl":Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isSmsReady()Z

    move-result v1

    return v1
.end method

.method protected blacklist onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "encodingForParts"    # [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI[",
            "Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;",
            ")I"
        }
    .end annotation

    .line 663
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 664
    .local v1, "encodingType":I
    const-string v2, "MtkGsmSMSDispatcher"

    if-nez v1, :cond_0

    .line 665
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v1

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSendMultipartText encoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p3

    goto :goto_1

    .line 670
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 671
    .local v3, "msgCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 672
    nop

    .line 673
    move-object v5, p3

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 672
    const/4 v7, 0x0

    invoke-static {v7, v6, v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 674
    .local v6, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v7, :cond_2

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 677
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[enc conflict between details["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] and encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iput v1, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 681
    :cond_2
    aput-object v6, p12, v4

    .line 671
    .end local v6    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v5, p3

    .line 684
    .end local v3    # "msgCount":I
    .end local v4    # "i":I
    :goto_1
    return v1
.end method

.method protected blacklist onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 13
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I

    .line 544
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 545
    .local v1, "encodingType":I
    if-nez v1, :cond_0

    .line 546
    invoke-super/range {p0 .. p11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v2

    return-object v2

    .line 550
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v11, p3

    invoke-static {v2, v11, v2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v12

    .line 551
    .local v12, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v5, v2

    const/4 v6, 0x0

    iget v8, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v9, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move v7, v1

    move/from16 v10, p11

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method public blacklist sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 18
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 290
    move-object/from16 v14, p0

    const-string v0, "MtkGsmSMSDispatcher"

    const-string v1, "MtkGsmSmsDispatcher.sendData: enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v15, 0x1

    if-eqz p8, :cond_0

    move v7, v15

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v2 .. v7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 294
    .local v16, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v16, :cond_2

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v17

    .line 296
    .local v17, "map":Ljava/util/HashMap;
    nop

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 296
    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 301
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v14, v15, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 304
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v17    # "map":Ljava/util/HashMap;
    :cond_1
    goto :goto_1

    .line 305
    :cond_2
    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_1
    return-void
.end method

.method public blacklist sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 31
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    const-string v11, "MtkGsmSMSDispatcher"

    if-nez v15, :cond_0

    .line 315
    const-string v0, "Cannot send multipart data when data is null!"

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v10, v0, 0xff

    .line 320
    .local v10, "refNumber":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 322
    .local v9, "msgCount":I
    new-array v8, v9, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 324
    .local v8, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge v7, v9, :cond_4

    .line 325
    add-int/lit8 v2, v7, 0x1

    move/from16 v6, p4

    invoke-static {v6, v10, v2, v9}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v5

    .line 328
    .local v5, "smsHeader":[B
    const/4 v2, 0x0

    .line 329
    .local v2, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_1

    .line 330
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v16, v2

    goto :goto_1

    .line 333
    :cond_1
    move-object/from16 v16, v2

    .end local v2    # "sentIntent":Landroid/app/PendingIntent;
    .local v16, "sentIntent":Landroid/app/PendingIntent;
    :goto_1
    const/4 v2, 0x0

    .line 334
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_2

    .line 335
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v17, v2

    goto :goto_2

    .line 338
    :cond_2
    move-object/from16 v17, v2

    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v17, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_2
    nop

    .line 339
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v2

    if-eqz v17, :cond_3

    move v0, v1

    .line 338
    :cond_3
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-static {v3, v4, v2, v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 341
    .local v18, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "smsHeader":[B
    .local v19, "smsHeader":[B
    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v20

    .line 345
    .local v20, "map":Ljava/util/HashMap;
    nop

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v6, v21

    move/from16 v21, v7

    .end local v7    # "i":I
    .local v21, "i":I
    move/from16 v7, v22

    move-object/from16 v29, v8

    .end local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v8, v23

    move/from16 v22, v9

    .end local v9    # "msgCount":I
    .local v22, "msgCount":I
    move/from16 v9, v24

    move/from16 v23, v10

    .end local v10    # "refNumber":I
    .local v23, "refNumber":I
    move/from16 v10, v25

    move-object/from16 v30, v11

    move/from16 v11, v26

    move-wide/from16 v12, v27

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v2, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v2, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v2, v21

    .line 324
    .end local v16    # "sentIntent":Landroid/app/PendingIntent;
    .end local v17    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v18    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v19    # "smsHeader":[B
    .end local v20    # "map":Ljava/util/HashMap;
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object v8, v2

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v30

    .end local v21    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v2    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v22    # "msgCount":I
    .end local v23    # "refNumber":I
    .restart local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v9    # "msgCount":I
    .restart local v10    # "refNumber":I
    :cond_4
    move/from16 v21, v7

    move-object v2, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v30, v11

    .line 352
    .end local v7    # "i":I
    .end local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v9    # "msgCount":I
    .end local v10    # "refNumber":I
    .restart local v2    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v22    # "msgCount":I
    .restart local v23    # "refNumber":I
    array-length v3, v2

    if-eqz v3, :cond_9

    aget-object v3, v2, v0

    if-nez v3, :cond_5

    move-object/from16 v6, v30

    goto :goto_5

    .line 358
    :cond_5
    array-length v3, v2

    :goto_3
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 359
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v4, :cond_7

    .line 360
    invoke-virtual {v14, v1, v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 361
    invoke-virtual {v14, v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    move-object/from16 v6, v30

    goto :goto_4

    .line 360
    :cond_6
    move-object/from16 v6, v30

    goto :goto_4

    .line 364
    :cond_7
    const-string v5, "Null tracker."

    move-object/from16 v6, v30

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v30, v6

    goto :goto_3

    .line 367
    :cond_8
    return-void

    .line 352
    :cond_9
    move-object/from16 v6, v30

    .line 353
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send multipart data. trackers length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V
    .locals 33
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZIJ)V"
        }
    .end annotation

    .line 575
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-virtual {v15, v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 576
    .local v19, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 577
    .local v11, "refNumber":I
    const/16 v16, 0x0

    .line 578
    .local v16, "encoding":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 579
    .local v10, "msgCount":I
    const/4 v9, 0x1

    if-ge v10, v9, :cond_0

    .line 580
    invoke-virtual {v15, v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 581
    return-void

    .line 584
    :cond_0
    new-array v8, v10, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 586
    .local v8, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v20, v8

    .end local v8    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v20, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v8, p8

    move v15, v9

    move/from16 v9, p9

    move v15, v10

    .end local v10    # "msgCount":I
    .local v15, "msgCount":I
    move/from16 v10, p10

    move v14, v11

    .end local v11    # "refNumber":I
    .local v14, "refNumber":I
    move/from16 v11, p11

    move-object/from16 v12, v20

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v12

    .line 590
    .end local v16    # "encoding":I
    .local v12, "encoding":I
    new-array v9, v15, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 593
    .local v9, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 594
    .local v10, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v11, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 596
    .local v11, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v15, :cond_6

    .line 597
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v6, v0

    .line 598
    .local v6, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v14, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 599
    add-int/lit8 v0, v7, 0x1

    iput v0, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 600
    iput v15, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 607
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 611
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v21

    .line 612
    .local v21, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 614
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 617
    if-ne v12, v5, :cond_1

    .line 618
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 619
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 622
    :cond_1
    const/4 v0, 0x0

    .line 623
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 624
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    goto :goto_1

    .line 627
    :cond_2
    move-object/from16 v22, v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .local v22, "sentIntent":Landroid/app/PendingIntent;
    :goto_1
    const/4 v0, 0x0

    .line 628
    .local v0, "deliveryIntent":Landroid/app/PendingIntent;
    move-object/from16 v3, p5

    if-eqz v3, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_3

    .line 629
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    goto :goto_2

    .line 632
    :cond_3
    move-object/from16 v23, v0

    .end local v0    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v23, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_2
    nop

    .line 633
    move/from16 v24, v14

    move-object/from16 v14, p3

    .end local v14    # "refNumber":I
    .local v24, "refNumber":I
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    add-int/lit8 v0, v15, -0x1

    if-ne v7, v0, :cond_4

    move/from16 v17, v5

    goto :goto_3

    :cond_4
    move/from16 v17, v8

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v25, v4

    .end local v4    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .local v25, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, v25

    move-object/from16 v26, v6

    .end local v6    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .local v26, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move v6, v12

    move/from16 v27, v7

    .end local v7    # "i":I
    .local v27, "i":I
    move-object/from16 v7, v22

    move/from16 v28, v8

    move-object/from16 v8, v23

    move-object/from16 v29, v9

    .end local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move/from16 v9, v17

    move/from16 v30, v12

    .end local v12    # "encoding":I
    .local v30, "encoding":I
    move-object/from16 v12, p6

    move-object/from16 v13, v19

    move/from16 v14, p9

    move/from16 v31, v15

    move/from16 v32, v16

    .end local v15    # "msgCount":I
    .local v31, "msgCount":I
    move/from16 v15, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v1, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v1, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v1, v27

    .line 637
    aget-object v0, v1, v27

    if-nez v0, :cond_5

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 639
    return-void

    .line 637
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 596
    .end local v21    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v22    # "sentIntent":Landroid/app/PendingIntent;
    .end local v23    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v25    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v26    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    add-int/lit8 v7, v27, 0x1

    move-object v9, v1

    move-object v13, v2

    move/from16 v14, v24

    move/from16 v8, v28

    move/from16 v12, v30

    move/from16 v15, v31

    .end local v27    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v24    # "refNumber":I
    .end local v30    # "encoding":I
    .end local v31    # "msgCount":I
    .restart local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v12    # "encoding":I
    .restart local v14    # "refNumber":I
    .restart local v15    # "msgCount":I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v27, v7

    move/from16 v28, v8

    move-object v1, v9

    move/from16 v30, v12

    move-object v2, v13

    move/from16 v24, v14

    move/from16 v31, v15

    .line 643
    .end local v7    # "i":I
    .end local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v12    # "encoding":I
    .end local v14    # "refNumber":I
    .end local v15    # "msgCount":I
    .restart local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v24    # "refNumber":I
    .restart local v30    # "encoding":I
    .restart local v31    # "msgCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "carrierPackage":Ljava/lang/String;
    const-string v4, "MtkGsmSMSDispatcher"

    if-eqz v3, :cond_7

    .line 645
    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v5, p3

    invoke-direct {v4, v0, v5, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 647
    .local v4, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 649
    .end local v4    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    goto :goto_5

    .line 650
    :cond_7
    move-object/from16 v5, p3

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    array-length v4, v1

    move/from16 v8, v28

    :goto_4
    if-ge v8, v4, :cond_8

    aget-object v6, v1, v8

    .line 652
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 651
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 655
    :cond_8
    :goto_5
    return-void
.end method

.method public blacklist sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 16
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .line 562
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithEncodingType encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmSMSDispatcher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, v14, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 564
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    .line 566
    iget-object v0, v14, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 567
    return-void
.end method

.method public blacklist sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 18
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I

    .line 531
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithEncodingType encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmSMSDispatcher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, v15, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 533
    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-wide/from16 v13, v16

    invoke-virtual/range {v0 .. v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    .line 535
    iget-object v0, v15, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 536
    return-void
.end method

.method public blacklist setSmsMemoryStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 740
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mStorageAvailable:Z

    if-eq p1, v0, :cond_0

    .line 741
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mStorageAvailable:Z

    .line 742
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 744
    :cond_0
    return-void
.end method
